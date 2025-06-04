package com.example.demo.mapper;

import com.example.demo.pojo.FavoriteSong;
import com.example.demo.pojo.Song;
import com.example.demo.pojo.dto.PlayListDTO;
import com.example.demo.pojo.dto.PodcastDTO;
import com.example.demo.pojo.dto.SongDTO;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.*;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;

@Mapper
public interface SongMapper {

    @Select("SELECT * FROM song WHERE songname LIKE CONCAT('%', #{songname}, '%') LIMIT #{limit}")
    Page<Song> findSongByName(@Param("songname") String songname, @Param("limit") int limit);

    @Select("SELECT * FROM song")
    List<Song> findAll();

    //分页获取所有歌曲
    @Results({
            @Result(property = "original", column = "is_original"),
            @Result(property = "originalSinger", column = "is_original_singer"),
            @Result(property = "vip", column = "is_vip")
    })
    @Select("SELECT * FROM song LIMIT #{offset}, #{limit}")
    List<Song> findAllWithLimit(@Param("offset") int offset, @Param("limit") int limit);

    //获取所有歌曲记录数
    @Select("SELECT COUNT(*) FROM song")
    long countAll();

    //根据歌曲名称查找歌曲
    @Select("SELECT * FROM song WHERE songname LIKE CONCAT('%', #{songname}, '%')")
    List<Song> searchSongByName(@Param("songname") String songname);

    //根据id查找
    @Select("SELECT * FROM song WHERE songid = #{songid}")
    Optional<Song> findById(@Param("songid") int songid);

    //更新
    @Update("UPDATE song SET songname = #{songname}, artistid = #{artistid}, albumid = #{albumid}, " +
            "song_img = #{songImg}, tags = #{tags}, is_original = #{original}, is_original_singer = #{originalSinger}, " +
            "is_vip = #{vip}, source = #{source} WHERE songid = #{songid}")
    int update(Song song);

    //新增
    @Insert("INSERT INTO song (songname, artistid, albumid, song_img, tags, is_original, is_original_singer, is_vip, source) " +
            "VALUES (#{songname}, #{artistid}, #{albumid}, #{songImg}, #{tags}, #{original}, #{originalSinger}, #{vip}, #{source})")
    @Options(useGeneratedKeys = true, keyProperty = "songid")//将生成的主键值回填到Song实体对象的songid属性中
    int insert(Song song);

    //删除
    @Delete("DELETE FROM song WHERE songid = #{songid}")
    int deleteById(@Param("songid") Integer songid);

    List<SongDTO> findRecommend();

    List<SongDTO> findTop50ByThreeDaysViews();

    List<SongDTO> findElectronic();


    List<SongDTO> findNational();

    List<SongDTO> findOriginal();

    List<SongDTO> findNewSong();

    List<SongDTO> findSoaring();

    List<SongDTO> findHotOnline();

    List<SongDTO> findACG();

    List<SongDTO> findFavorite(Integer userid);

    List<SongDTO> recommendUserFavorite(Integer userid);

    List<SongDTO> musicFans(Integer userid);

    List<SongDTO> oldSongs();

    List<SongDTO> personal(Integer userid);

    List<SongDTO> precious();

    List<SongDTO> hotReviews();

    List<SongDTO> Japan();

    List<SongDTO> onceLikeListen(Integer userid);

    List<SongDTO> vip();

    List<SongDTO> mysterious();

    List<SongDTO> weekNew();

    List<SongDTO> onceListen(Integer userid);

    List<PlayListDTO> getPlayList();

    List<SongDTO> collectMany();

    List<SongDTO> listenLittle();

    List<SongDTO> listenMany();

    List<PlayListDTO> artistPlayList();

    List<PodcastDTO> podcastRecommend();

    List<SongDTO> selectLikeMusic(Integer userid);

    List<PlayListDTO> selectUserPlayList(Integer userID);

    FavoriteSong findBySongidAndUserid(Integer songid, Integer userid);

}

