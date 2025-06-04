package com.example.demo.service;

import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.Artist;
import com.example.demo.pojo.dto.ArtistDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.stream.Collectors;

public interface IArtistService {
    //查询所有歌手
    ApiResponse<List<Artist>> getAll(int page, int limit);

    //按姓名查询
    List<Artist> findArtistByName(String artistname);

    //分页
    ApiResponse<List<Artist>> searchArtistByName(String artistname, int page, int limit);

    //更新
    Artist updateArtist(ArtistDTO artistDTO);

    Artist findByArtistId(Integer artistid);

    Artist addArtist(Artist artist);

    void deleteArtist(Integer artistid);

}
