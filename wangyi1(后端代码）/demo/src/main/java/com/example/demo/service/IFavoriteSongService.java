package com.example.demo.service;

import com.example.demo.pojo.FavoriteSong;

import java.util.List;

public interface IFavoriteSongService {

    FavoriteSong addFavoriteSong(FavoriteSong favoriteSong);
    void deleteFavoriteSong(Integer songid,Integer userid);

    List<FavoriteSong> findAllFavoriteSong();

    FavoriteSong findAllFavoriteSongByid(Integer songid,Integer userid);
}
