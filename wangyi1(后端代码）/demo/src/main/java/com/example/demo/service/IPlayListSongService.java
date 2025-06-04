package com.example.demo.service;

import com.example.demo.pojo.dto.PlayListSongDTO;

public interface IPlayListSongService {

    //往歌单里面添加歌曲
   PlayListSongDTO addPlayListSong(PlayListSongDTO playListSongDTO);

    PlayListSongDTO findPlaylistById(Integer songid, Integer playlistId);

    void deletePlayListSong(Integer songid, Integer playlistId);
}
