package com.example.demo.service.serviceImp;


import com.example.demo.mapper.AlbumMapper;
import com.example.demo.mapper.ArtistMapper;
import com.example.demo.pojo.Album;
import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.Artist;
import com.example.demo.pojo.dto.AlbumDTO;
import com.example.demo.service.IAlbumService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class AlbumService implements IAlbumService {


    @Autowired
    private ArtistMapper artistMapper;
    @Autowired
    private AlbumMapper albumMapper;


    //查找全部
    public ApiResponse<List<AlbumDTO>> getAllAlbums(int page, int limit) {
        // 计算分页的起始位置
        int offset = (page - 1) * limit;

        // 获取分页数据
        List<Album> albums = albumMapper.findAllWithLimit(offset, limit);

        // 将 Album 转换为 AlbumDTO
        List<AlbumDTO> albumsDTO = albums.stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());

        // 获取总记录数
        long totalCount = albumMapper.countAll();

        // 创建 ApiResponse 对象，目的是让输出更规范化
        ApiResponse<List<AlbumDTO>> response = new ApiResponse<>(0, "Success", albumsDTO);
        response.setCount(totalCount);

        return response;
    }


    public AlbumDTO convertToDTO(Album album) {
        AlbumDTO dto = new AlbumDTO();
        BeanUtils.copyProperties(album,dto);
        dto.setArtistname(artistMapper.findById(album.getArtistid()).orElse(new Artist()).getArtistname());
        return dto;
    }

    //按名字查找
    /*public List<AlbumDTO> searchAlbumByName(String albumname) {
        List<Album> albums = albumRepository.findAlbumByName(albumname);
        return albums.stream().map(this::convertToDTO).collect(Collectors.toList());
    }*/
    //分页
    public ApiResponse<List<AlbumDTO>> searchAlbumByName(String albumname, int page, int limit) {
        // 计算分页的起始位置
        int offset = (page - 1) * limit;

        // 使用PageHelper进行分页
        PageHelper.startPage(page, limit);

        // 获取分页数据
        List<Album> albums = albumMapper.findAlbumByName(albumname);

        // 将 Album 转换为 AlbumDTO
        List<AlbumDTO> albumsDTO = albums.stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());

        // 获取总记录数
        long totalCount = albums.size(); // PageHelper会自动处理分页，但不会填充Page对象，所以我们需要自己计算总数

        // 创建 ApiResponse 对象，目的是让输出更规范化
        ApiResponse<List<AlbumDTO>> response = new ApiResponse<>(0, "Success", albumsDTO);
        response.setCount(totalCount);

        return response;
    }


    //按id查找
    public AlbumDTO getAlbum(Integer albumid) {
        Optional<Album> albumOptional = albumMapper.findById(albumid);

        // 检查Optional是否包含值，如果有，则转换为DTO，否则返回null
        return albumOptional.map(this::convertToDTO).orElse(null);
    }

    public AlbumDTO updateAlbum(AlbumDTO albumDTO) {
        Album album = albumMapper.findById(albumDTO.getAlbumid()).orElse(new Album());
        System.out.println("Album ID from DTO: " + albumDTO.getAlbumid());
        // 手动复制属性，忽略 null 值
        if (albumDTO.getAlbumname() != null) {
            album.setAlbumname(albumDTO.getAlbumname());
        }
        if (albumDTO.getArtistid() != null) {
            album.setArtistid(albumDTO.getArtistid());
        }

        if (albumDTO.getPublishDate() != null) {
            album.setPublishDate(albumDTO.getPublishDate());
        }

        albumMapper.update(album);
        return convertToDTO(album);
    }

    //新增
    public AlbumDTO addAlbum(AlbumDTO albumDTO) {
        Album album = new Album();
        BeanUtils.copyProperties(albumDTO, album);
        albumMapper.insert(album);
        return convertToDTO(album);
    }

    public void delete(Integer albumid) {
        albumMapper.deleteById(albumid);
    }


    public List<AlbumDTO> searchAlbums(Integer artistId, String albumName) {
        // 获取符合条件的专辑列表
        List<Album> albums = albumMapper.findAlbumsByArtistIdAndName(artistId, albumName);

        // 检查列表是否为空，如果不为空，则将Album转换为AlbumDTO，否则返回null
        if (albums != null && !albums.isEmpty()) {
            return albums.stream()
                    .map(this::convertToDTO)
                    .collect(Collectors.toList());
        }
        return null; // 可以根据需求返回空列表或null
    }
}
