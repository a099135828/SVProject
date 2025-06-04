package com.example.demo.service.serviceImp;
//这个类用于方法的实现
import com.example.demo.mapper.*;
import com.example.demo.pojo.*;
import com.example.demo.pojo.dto.PlayListDTO;
import com.example.demo.pojo.dto.PodcastDTO;
import com.example.demo.pojo.dto.SongAllDTO;
import com.example.demo.pojo.dto.SongDTO;
import com.example.demo.service.ISongService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;

import java.util.List;

import java.util.stream.Collectors;
import com.github.pagehelper.PageHelper;

import static java.sql.DriverManager.println;

@Service
public class SongService implements ISongService {
    @Autowired
    private SongMapper songMapper;


    @Autowired
    private ArtistMapper artistMapper;

    @Autowired
    private AlbumMapper albumMapper;


    //分页
    public ApiResponse<List<SongAllDTO>> selectAllSongs(int page, int limit) {
        // 计算分页的起始位置
        int offset = (page - 1) * limit;

        // 获取分页数据
        List<Song> songs = songMapper.findAllWithLimit(offset, limit);


        // 将Song转换为SongAllDTO
        List<SongAllDTO> songsDTO = songs.stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());

        // 获取总记录数
        // 这里需要一个额外的方法来获取总记录数，可以使用COUNT查询
        long totalCount = songMapper.countAll();

        // 创建ApiResponse对象，目的是让输出更规范化
        ApiResponse<List<SongAllDTO>> response = new ApiResponse<>(0, "Success", songsDTO);
        response.setCount(totalCount);

        return response;
    }

    ////findSongByName只需查询送符合条件的song，convertToDTO会把song转为songAllDTO类型
    //根据song名字查询
    /*public List<SongAllDTO> searchSongByName(String songname) {
        List<Song> songs = songRepository.findSongByName(songname);
        return songs.stream().map(this::convertToDTO).collect(Collectors.toList());
    }*/
    public ApiResponse<List<SongAllDTO>> searchSongByName(String songname, int page, int limit) {
        // 使用PageHelper进行分页
        PageHelper.startPage(page, limit);

        // 获取分页数据
        List<Song> songs = songMapper.searchSongByName(songname);

        // 将Song转换为SongAllDTO
        List<SongAllDTO> songsDTO = songs.stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());

        // 获取总记录数
        PageInfo<Song> pageInfo = new PageInfo<>(songs);
        long totalCount = pageInfo.getTotal();

        // 创建ApiResponse对象，目的是让输出更规范化
        ApiResponse<List<SongAllDTO>> response = new ApiResponse<>(0, "Success", songsDTO);
        response.setCount(totalCount);

        return response;
    }

    private SongAllDTO convertToDTO(Song song) {
        SongAllDTO dto = new SongAllDTO();
        BeanUtils.copyProperties(song,dto);
        dto.setArtistname(artistMapper.findById(song.getArtistid()).orElse(new Artist()).getArtistname());
        dto.setAlbumname(albumMapper.findById(song.getAlbumid()).orElse(new Album()).getAlbumname());
        return dto;
    }

    //更新
    public Song updateSong(SongAllDTO songAllDTO) {
        // 根据ID查找歌曲
        Song song = songMapper.findById(songAllDTO.getSongid()).orElse(new Song());
        System.out.println("Song ID from DTO: " + songAllDTO.getSongid());

        // 手动复制属性，忽略 null 值
        if (songAllDTO.getSongname() != null) {
            song.setSongname(songAllDTO.getSongname());
        }
        if (songAllDTO.getArtistid() != null) {
            song.setArtistid(songAllDTO.getArtistid());
        }
        if (songAllDTO.getAlbumid() != null) {
            song.setAlbumid(songAllDTO.getAlbumid());
        }
        if (songAllDTO.getSongImg() != null) {
            song.setSongImg(songAllDTO.getSongImg());
        }
        if (songAllDTO.getTags() != null) {
            song.setTags(songAllDTO.getTags());
        }
        if (songAllDTO.getOriginal() != null) {
            song.setOriginal(songAllDTO.getOriginal());
        }
        if (songAllDTO.getOriginalSinger() != null) {
            song.setOriginalSinger(songAllDTO.getOriginalSinger());
        }
        if (songAllDTO.getVip() != null) {
            song.setVip(songAllDTO.getVip());
        }
        if (songAllDTO.getSource() != null) {
            song.setSource(songAllDTO.getSource());
        }

        // 保存更新
        songMapper.update(song);
        return song;
    }
   /* public Song updateSong(SongAllDTO songAllDTO) {
        Song song = new Song();
        BeanUtils.copyProperties(songAllDTO, song);

        return songRepository.save(song);
    }*/



    //根据id查询
    public SongAllDTO getSong(Integer songid) {////////////////
        Optional<Song> songOptional = songMapper.findById(songid);
        return songOptional.map(this::convertToDTO).orElse(null);
    }



    //增加
    public Song addSong(SongAllDTO songAllDTO) {
        Song song = new Song();
        BeanUtils.copyProperties(songAllDTO, song);
        songMapper.insert(song);
        return song;
    }



    //删除
    public void delete(Integer songid) {
        songMapper.deleteById(songid);
    }

    public List<SongDTO> getTop50Songs() {
        return songMapper.findTop50ByThreeDaysViews();
    }

    public List<SongDTO> getRecommend(){ return songMapper.findRecommend();}

    public List<Song> getAllSongs() {
       return songMapper.findAll();
    }//////////////////


    public List<SongDTO> getElectronic() {
        return songMapper.findElectronic();
    }

    public List<SongDTO> getNational() {
        return songMapper.findNational();
    }

    public List<SongDTO> getACG() {
        return songMapper.findACG();
    }

    public List<SongDTO> getHotOnline() {
        return songMapper.findHotOnline();
    }
    public List<SongDTO> getSoaring(){
        return songMapper.findSoaring();

    }

    public List<SongDTO> getNewSong() {
        return songMapper.findNewSong();
    }

    public List<SongDTO> getOriginal() {
        return songMapper.findOriginal();
    }

    public List<SongDTO> getFavorite(Integer userid) {
        return songMapper.findFavorite(userid);
    }

    public List<SongDTO> recommendUserFavorite(Integer userid){
        return songMapper.recommendUserFavorite(userid);
    }

    public List<SongDTO> musicFans(Integer userid) {
        return songMapper.musicFans(userid);
    }

    public List<SongDTO> oldSongs() {
        return songMapper.oldSongs();
    }

    public List<SongDTO> personal(Integer userid) {
        return songMapper.personal(userid);
    }

    public List<SongDTO> precious() {
        return songMapper.precious();
    }

    public List<SongDTO> hotReviews() {
        return songMapper.hotReviews();
    }

    public List<SongDTO> Japan() {
        return songMapper.Japan();
    }

    public List<SongDTO> OnceLikeListen(Integer userid) {
        return songMapper.onceLikeListen(userid);
    }

    public List<SongDTO> Vip() {
        return songMapper.vip();
    }

    public List<SongDTO> weekNew() {
        return songMapper.weekNew();
    }

    public List<SongDTO> OnceListen(Integer userid) {
        return songMapper.onceListen(userid);
    }

    public List<SongDTO> mysterious() {
        return songMapper.mysterious();
    }

    public List<PlayListDTO> getplayList() {
        return songMapper.getPlayList();
    }

    public List<SongDTO> collectMany() {
        return songMapper.collectMany();
    }

    public List<SongDTO> listenlittle() {
        return songMapper.listenLittle();
    }

    public List<SongDTO> listenmany() {
        return songMapper.listenMany();
    }

    public List<PlayListDTO> artistPlayList() {
        return songMapper.artistPlayList();
    }

    public List<PodcastDTO> PodcastRecommend() {return songMapper.podcastRecommend();
    }
    public List<SongDTO> selectLikeMusic(Integer userid) {
        return songMapper.selectLikeMusic(userid);

    }

    public List<PlayListDTO> selectuserPlayList(Integer userID) {
        return songMapper.selectUserPlayList(userID);
    }
}
