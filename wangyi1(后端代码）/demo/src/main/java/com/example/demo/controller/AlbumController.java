package com.example.demo.controller;

import com.example.demo.pojo.Album;
import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.dto.AlbumDTO;
import com.example.demo.service.serviceImp.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/albums")
public class AlbumController {
    @Autowired
    private AlbumService albumService;

    //查找全部
    @GetMapping("/all")
    public ResponseEntity<ApiResponse<List<AlbumDTO>>> selectAllAlbums(
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer limit) {

        ApiResponse<List<AlbumDTO>> response = albumService.getAllAlbums(page, limit);
        return ResponseEntity.ok(response);
    }

    //根据歌名查找
    /*@RequestMapping ("/byName")
    public ResponseEntity<ApiResponse<List<AlbumDTO>>> searchSongByName(@RequestParam String albumname) {
        List<AlbumDTO> albums = albumService.searchAlbumByName(albumname);
        ApiResponse<List<AlbumDTO>> response = new ApiResponse<>(0, "Success", albums);
        return ResponseEntity.ok(response);
    }*/
    //根据歌名查找 分页
    @RequestMapping("/byName")
    public ResponseEntity<ApiResponse<List<AlbumDTO>>> searchAlbumByName(
            @RequestParam String albumname,
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer limit) {
        ApiResponse<List<AlbumDTO>> response = albumService.searchAlbumByName(albumname, page, limit);
        return ResponseEntity.ok(response);
    }


    //修改
    @PutMapping
    public ResponseEntity<ApiResponse<AlbumDTO>> updateAlbum(@RequestBody AlbumDTO albumDTO) {

        AlbumDTO updateAlbum = albumService.updateAlbum(albumDTO);
        ApiResponse<AlbumDTO> response = new ApiResponse<>(0, "Update successful", updateAlbum);
        return ResponseEntity.ok(response);
    }

    //根据id查找
    @GetMapping("/{albumid}")
    public ResponseEntity<ApiResponse<AlbumDTO>> searchSong(@PathVariable Integer albumid) {
        AlbumDTO album = albumService.getAlbum(albumid);
        ApiResponse<AlbumDTO> response = new ApiResponse<>(0, "Success", album);
        return ResponseEntity.ok(response);
    }

    //增加
    @PostMapping
    public ResponseEntity<ApiResponse<AlbumDTO>> addAlbum(@RequestBody AlbumDTO albumDTO) {
        AlbumDTO addAlbum = albumService.addAlbum(albumDTO);
        ApiResponse<AlbumDTO> response = new ApiResponse<>(0, "add successful", addAlbum);
        return ResponseEntity.ok(response);
    }

    //删除
    @DeleteMapping("/{albumid}")
    public ResponseEntity<ApiResponse<Album>> deleteAlbum(@PathVariable Integer albumid) {
        albumService.delete(albumid);
        ApiResponse<Album> response = new ApiResponse<>(0, "delete successful",null);
        return ResponseEntity.ok(response);
    }

    //根据id和name查找
    @GetMapping("/byArtistAndKeyword")
    public List<AlbumDTO> searchAlbums(@RequestParam Integer artistId, @RequestParam String albumName) {
        return albumService.searchAlbums(artistId, albumName);
    }
}
