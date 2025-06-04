package com.example.demo.controller;

import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.HeardSong;
import com.example.demo.service.serviceImp.HeardSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/heardSong")
public class HeardSongController {

    @Autowired
    private HeardSongService heardSongservice;
    //增加
    @PostMapping()
    public ResponseEntity<ApiResponse<HeardSong>> addSong(@RequestBody HeardSong heardSong) {
        HeardSong addHeardSong = heardSongservice.addHeardSong(heardSong);
        ApiResponse<HeardSong> response = new ApiResponse<>(0, "add successful", addHeardSong);
        return ResponseEntity.ok(response);
    }
}
