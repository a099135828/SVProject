package com.example.demo.controller;

import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.PlayList;
import com.example.demo.service.serviceImp.PlayListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@RestController
@RequestMapping("/api/playList")
public class PlayListController {
    @Autowired
    private PlayListService playListService;

    @PostMapping("/upload")
    public ResponseEntity<ApiResponse<String>> uploadImage(@RequestParam("file") MultipartFile file) {
        if (!file.getContentType().startsWith("image/")) {
            return ResponseEntity.badRequest().body(new ApiResponse<>(1, "文件类型错误，需上传图片文件", null));
        }
        // 检查文件是否为空
        if (file.isEmpty()) {
            return ResponseEntity.badRequest().body(new ApiResponse<>(1, "上传的文件为空", null));
        }
        // 定义保存文件的路径（根据需要调整路径）
        String filePath =  "C:\\wangyiProject\\wangyi\\mobileimage\\" + file.getOriginalFilename(); // 例如："/uploads/" + file.getOriginalFilename();
        try {
            // 保存文件到指定路径
            file.transferTo(new File(filePath));
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body(new ApiResponse<>(1, "文件上传失败", null));
        }
        // 返回成功消息
        return ResponseEntity.ok(new ApiResponse<>(0, "上传成功", filePath));
    }

    //增加
    @PostMapping()
    public ResponseEntity<ApiResponse<PlayList>> addPlayList(@RequestBody PlayList playList) {

        playList.setCollect(0);
        playList.setShare(0);
        playList.setComment(0);
        playList.setListenTimes("0");
        playList.setOfficial(false);

        PlayList addPlayList =playListService.addPlayList(playList);
        ApiResponse<PlayList> response = new ApiResponse<>(0, "add successful", addPlayList);
        return ResponseEntity.ok(response);
    }

    //删除
    @DeleteMapping("/{playlistId}")
    public ResponseEntity<ApiResponse<PlayList>> deleteAlbum(@PathVariable Integer playlistId) {
        playListService.delete(playlistId);
        ApiResponse<PlayList> response = new ApiResponse<>(0, "delete successful",null);
        return ResponseEntity.ok(response);
    }



}
