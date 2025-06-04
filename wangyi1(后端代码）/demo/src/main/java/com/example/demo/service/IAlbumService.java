package com.example.demo.service;

import com.example.demo.pojo.Album;
import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.dto.AlbumDTO;
import java.util.List;

public interface IAlbumService {

    //查找全部
    ApiResponse<List<AlbumDTO>> getAllAlbums(int page, int limit) ;

    AlbumDTO convertToDTO(Album album);

   ApiResponse<List<AlbumDTO>> searchAlbumByName(String albumname, int page, int limit);


    //按id查找
    AlbumDTO getAlbum(Integer albumid);

    AlbumDTO updateAlbum(AlbumDTO albumDTO);

    AlbumDTO addAlbum(AlbumDTO albumDTO);

    void delete(Integer albumid);
    ////findSongByName只需查
}
