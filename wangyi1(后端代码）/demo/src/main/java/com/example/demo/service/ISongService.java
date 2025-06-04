package com.example.demo.service;

import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.Song;
import com.example.demo.pojo.dto.SongAllDTO;
import com.example.demo.pojo.dto.SongDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ISongService {

    //查找所有
     ApiResponse<List<SongAllDTO>> selectAllSongs(int page, int limit);

    //根据名字查找
    // List<SongAllDTO> searchSongByName(String songname);
     ApiResponse<List<SongAllDTO>> searchSongByName(String songname, int page, int size);

    //根据id查找
     SongAllDTO getSong(Integer songid);

    //更新
     Song updateSong(SongAllDTO songAllDTO);

    //增加
     Song addSong(SongAllDTO songAllDTO);

    //删除
     void delete(Integer songid);

    //找热度前50歌曲
     List<SongDTO> getTop50Songs();

    //查找所有歌曲（没有artistname和albumname）
     List<Song> getAllSongs();

     //电音推荐
     List<SongDTO> getElectronic();
     List<SongDTO> getACG() ;
     List<SongDTO> getHotOnline();

      List<SongDTO> getSoaring();


      List<SongDTO> getNewSong();


      List<SongDTO> getOriginal();


}
