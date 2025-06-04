package com.example.demo.controller;

import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.dto.PlayListSongDTO;
import com.example.demo.service.serviceImp.PlayListSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/playlistSong")
public class PlayListSongController {

    @Autowired
    private PlayListSongService playListSongService;

    //增加
    @PostMapping
    public ResponseEntity<ApiResponse<PlayListSongDTO>> addPlayListSong(@RequestBody PlayListSongDTO playListSongDTO) {
        PlayListSongDTO addPlayListSongDTO = playListSongService.addPlayListSong(playListSongDTO);
        ApiResponse<PlayListSongDTO> response = new ApiResponse<>(0, "add successful", addPlayListSongDTO);
        return ResponseEntity.ok(response);
    }

    //根据songid和playlistid查询
    @GetMapping("/{songid}/{playlistId}")
    public ResponseEntity<ApiResponse<PlayListSongDTO>> selectFavoriteSongByid(@PathVariable Integer songid, @PathVariable Integer playlistId){

        PlayListSongDTO findPlaylistSongDTO = playListSongService.findPlaylistById(songid,playlistId);
        ApiResponse<PlayListSongDTO> response = new ApiResponse<>(0, "find successful", findPlaylistSongDTO);
        return ResponseEntity.ok(response);
    }

    //删除
    @DeleteMapping("{songid}/{playlistId}")
    public ApiResponse<PlayListSongDTO> deletePlayListSong(@PathVariable Integer songid, @PathVariable Integer playlistId){
        playListSongService.deletePlayListSong(songid,playlistId);
        return ApiResponse.success();
    }

}
