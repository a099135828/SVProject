package com.example.demo.controller;

import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.FavoriteSong;
import com.example.demo.service.serviceImp.FavoriteSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/favoriteSongs")
public class FavoriteSongConreoller {
    @Autowired
    private FavoriteSongService favoriteSongService;

    //查找所有
    @GetMapping("/allLikeSongs")
    public List<FavoriteSong> selectFavoriteSong(){

        return favoriteSongService.findAllFavoriteSong();
    }

    //根据userid和songis查找
    @GetMapping("/{songid}/{userid}")
    public ResponseEntity<ApiResponse<FavoriteSong>> selectFavoriteSongByid(@PathVariable Integer songid,@PathVariable Integer userid){

        FavoriteSong findFavoriteSong = favoriteSongService.findAllFavoriteSongByid(songid,userid);
        ApiResponse<FavoriteSong> response = new ApiResponse<>(0, "find successful", findFavoriteSong);
        return ResponseEntity.ok(response);
    }


    //增加
    @PostMapping
    public ResponseEntity<ApiResponse<FavoriteSong>> addFavoriteSong(@RequestBody FavoriteSong favoriteSong) {
        FavoriteSong addFavoriteSong = favoriteSongService.addFavoriteSong(favoriteSong);
        ApiResponse<FavoriteSong> response = new ApiResponse<>(0, "add successful", addFavoriteSong);
        return ResponseEntity.ok(response);
    }


    //删除
    @DeleteMapping("/{songid}/{userid}")
    public ApiResponse<FavoriteSong> deleteFavoriteSong(@PathVariable Integer songid,@PathVariable Integer userid){
        favoriteSongService.deleteFavoriteSong(songid,userid);
        return ApiResponse.success();
    }

}
