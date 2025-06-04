package com.example.demo.service;
import com.example.demo.pojo.Song;
import com.example.demo.pojo.dto.SongAllDTO;


public interface IManageService {

   SongAllDTO convertToDTO(Song song);

    //更新
    Song updateSong(SongAllDTO songAllDTO);

    //查询
   SongAllDTO getSong(Integer songid);

    //增加
   Song addSong(SongAllDTO songAllDTO);

    //删除
    void delete(Integer songid);
}
