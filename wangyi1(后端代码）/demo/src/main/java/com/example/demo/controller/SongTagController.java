package com.example.demo.controller;

import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.SongTag;
import com.example.demo.pojo.dto.SongTagDTO;
import com.example.demo.service.serviceImp.SongTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@CrossOrigin
@RestController
@RequestMapping("/api/songTags")
public class SongTagController {

    @Autowired
    private SongTagService songTagService;

    //查询
    @GetMapping
    public ResponseEntity<ApiResponse<List<SongTag>>> findSongTag() {
        List<SongTag> SongTags = songTagService.findSongTag();
        ApiResponse<List<SongTag>> response = new ApiResponse<>(0, "add successful", SongTags);
        return ResponseEntity.ok(response);
    }

    //增加
    @PostMapping
    public ResponseEntity<ApiResponse<SongTag>> addSongTag(@RequestBody SongTag songTag) {
        SongTag addSongTag = songTagService.addSongTag(songTag);
        ApiResponse<SongTag> response = new ApiResponse<>(0, "add successful", addSongTag);
        return ResponseEntity.ok(response);
    }

    //增加，传进来的tags是数组的形式
    @PostMapping("/addSongTags")
    public ResponseEntity<ApiResponse<List<SongTag>>> addSongTags(@RequestBody SongTagDTO songTagDTO) {
        // 参数验证
        if (songTagDTO.getSongId() == null || songTagDTO.getTagid() == null || songTagDTO.getTagid().isEmpty()) {
            ApiResponse<List<SongTag>> response = new ApiResponse<>(1, "Invalid input: songId or tagId must not be null or empty", null);
            return ResponseEntity.badRequest().body(response);
        }

        try {
            // 使用流式编程生成 SongTag 对象列表
            List<SongTag> songTags = songTagDTO.getTagid().stream()
                    .map(tagId -> {
                        SongTag songTag = new SongTag();
                        songTag.setSongid(songTagDTO.getSongId());
                        songTag.setTagid(tagId);
                        return songTag;
                    })
                    .collect(Collectors.toList());

            // 使用 JPA 的批量保存功能
            List<SongTag> addedSongTags = songTagService.saveAll(songTags);

            ApiResponse<List<SongTag>> response = new ApiResponse<>(0, "Add successful", addedSongTags);
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            ApiResponse<List<SongTag>> response = new ApiResponse<>(2, "Error occurred while adding song tags: " + e.getMessage(), null);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
        }
    }


    //根据songid批量删除
    @DeleteMapping("{songid}")
    public ResponseEntity<ApiResponse<SongTag>> deleteSongTag(@PathVariable Integer songid) {
        songTagService.deleteSongTag(songid);
        ApiResponse<SongTag> response = new ApiResponse<>(0, "delete successful",null);
        return ResponseEntity.ok(response);
    }

    //根据tagid批量删除
    @DeleteMapping("{tagid}")
    public ResponseEntity<ApiResponse<SongTag>> deleteTag(@PathVariable Integer tagid) {
        songTagService.deleteTag(tagid);
        ApiResponse<SongTag> response = new ApiResponse<>(0, "delete successful",null);
        return ResponseEntity.ok(response);
    }



}

