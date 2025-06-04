package com.example.demo.service;

import com.example.demo.pojo.PlayList;

public interface IPlayListService {

   PlayList addPlayList(PlayList playList);

    void delete(Integer playlistId);
}
