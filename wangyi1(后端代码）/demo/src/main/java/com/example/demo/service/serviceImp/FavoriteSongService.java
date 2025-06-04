package com.example.demo.service.serviceImp;

import com.example.demo.pojo.FavoriteSong;
import com.example.demo.mapper.FavoriteSongMapper;
import com.example.demo.service.IFavoriteSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FavoriteSongService implements IFavoriteSongService {
    @Autowired
    private FavoriteSongMapper favoriteSongMapper;

    public FavoriteSong addFavoriteSong(FavoriteSong favoriteSong) {
        favoriteSongMapper.insert(favoriteSong);
        return favoriteSong;
    }

    public void deleteFavoriteSong(Integer songid, Integer userid) {
        FavoriteSong favoriteSong = favoriteSongMapper.findBySongidAndUserid(songid, userid);

        if (favoriteSong != null) {
            favoriteSongMapper.deleteById(songid, userid);
        }
    }

    public List<FavoriteSong> findAllFavoriteSong() {
        return favoriteSongMapper.findAll();
    }

    public FavoriteSong findAllFavoriteSongByid(Integer songid, Integer userid) {
        return favoriteSongMapper.findBySongidAndUserid(songid, userid);
    }
}