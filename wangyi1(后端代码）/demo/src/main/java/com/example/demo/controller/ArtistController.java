package com.example.demo.controller;


import com.example.demo.pojo.*;
import com.example.demo.pojo.dto.ArtistDTO;
import com.example.demo.service.serviceImp.ArtistService;
import io.micrometer.core.instrument.Tags;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController //标记一个类作为控制器（Controller），并且所有的方法都会返回某种形式的响应体（ResponseBody）
@RequestMapping("/api/artists")
public class ArtistController {

    @Autowired
    private ArtistService artistService;



    //查询所有
    @GetMapping("/all")
    public ResponseEntity<ApiResponse<List<Artist>>> getAll(
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer limit) {
        ApiResponse<List<Artist>> artist = artistService.getAll(page, limit);
        return ResponseEntity.ok(artist);
    }

    //按id查询
    @GetMapping("/{artistid}")
    public ApiResponse<Artist> findByartistId(@PathVariable Integer artistid ){

        Artist artist = artistService.findByArtistId(artistid);
        return ApiResponse.success(artist);
    }

    //根据姓名查找
   @GetMapping ("/byName/noPage")
    public ResponseEntity<ApiResponse<List<Artist>>> findArtistByName(@RequestParam String artistname) {
        List<Artist> artists = artistService.findArtistByName(artistname);
        ApiResponse<List<Artist>> response = new ApiResponse<>(0, "Success", artists);
        return ResponseEntity.ok(response);
    }

    //分页
    @RequestMapping("/byName")
    public ResponseEntity<ApiResponse<List<Artist>>> searchArtistByName(
            @RequestParam String artistname,
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer limit) {
        ApiResponse<List<Artist>> response = artistService.searchArtistByName(artistname, page, limit);
        return ResponseEntity.ok(response);
    }

    //更新
    @PutMapping
    public ResponseEntity<ApiResponse<Artist>> updateArtist(@RequestBody ArtistDTO artistDTO){

        Artist artistNew = artistService.updateArtist(artistDTO);
        ApiResponse<Artist> response = new ApiResponse<>(0, "Update successful",artistNew);
        return ResponseEntity.ok(response);

    }
    //增加
    @PostMapping
    public ApiResponse<Artist> addArtist(@RequestBody Artist artist){
        Artist artistNew=artistService.addArtist(artist);  //将 UserDTO 对象添加到数据库，并返回新创建的 User 对象。
        return ApiResponse.success(artistNew);
    }
    //删除
    @DeleteMapping("/{artistid}")
    public ApiResponse<Tags> deleteArtist(@PathVariable Integer artistid){
        artistService.deleteArtist(artistid);
        return ApiResponse.success();
    }




}
