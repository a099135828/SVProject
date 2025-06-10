package com.example.demo.controller;


import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.dto.*;
import com.example.demo.pojo.Song;
import com.example.demo.service.serviceImp.SongService;
import com.example.demo.service.serviceImp.SongTagService;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/api/songs")
public class SongController {

    @Autowired
    private SongService songService;

    @Autowired
    private SongTagService songTagService;
    //查找所有
   /* @GetMapping("/allsongs")
    public ResponseEntity<ApiResponse<List<SongAllDTO>>> selectAllSongs() {
        List<SongAllDTO> songs = songService.selectAllSongs();
        ApiResponse<List<SongAllDTO>> response = new ApiResponse<>(0, "Success", songs);
        return ResponseEntity.ok(response);
    }*/
   /* @RequestMapping("/allsongs")
    public ResponseEntity<ApiResponse<List<SongAllDTO>>> selectAllSongs(HttpServletRequest req,
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer limit) {
        String Str = req.getParameter("Str");
        ApiResponse<List<SongAllDTO>> response;
        if(Str==null) {
            response = songService.selectAllSongs(page, limit);

        }else{
            List<SongAllDTO> songs = songService.searchSongByName(Str);
            response = new ApiResponse<>(0, "Success", songs);

        }
        return ResponseEntity.ok(response);
    }*/

    @GetMapping("/allsongs")
    public ResponseEntity<ApiResponse<List<SongAllDTO>>> selectAllSongs(
    @RequestParam(defaultValue = "1") Integer page,
    @RequestParam(defaultValue = "10") Integer limit) {

        ApiResponse<List<SongAllDTO>> response = songService.selectAllSongs(page, limit);
        return ResponseEntity.ok(response);
    }


    //根据歌名查找
    /*@RequestMapping ("/byName")
    public ResponseEntity<ApiResponse<List<SongAllDTO>>> searchSongByName(@RequestParam String songname) {
        List<SongAllDTO> songs = songService.searchSongByName(songname);
        ApiResponse<List<SongAllDTO>> response = new ApiResponse<>(0, "Success", songs);
        return ResponseEntity.ok(response);
    }*/
    @RequestMapping("/byName")
    public ResponseEntity<ApiResponse<List<SongAllDTO>>> searchSongByName(
            @RequestParam String songname,
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer limit) {
        ApiResponse<List<SongAllDTO>> response= songService.searchSongByName(songname, page, limit);
        return ResponseEntity.ok(response);
    }



    //更新
    @PutMapping
    @Transactional  // 开启事务
    public ResponseEntity<ApiResponse<Song>> updateSong(@RequestBody SongAllDTO songAllDTO) {

        try {
            Song updatedSong = songService.updateSong(songAllDTO);
            Integer songid = songAllDTO.getSongid();
            System.out.println(songid);
            songTagService.deleteSongTag(songid);

            ApiResponse<Song> response = new ApiResponse<>(0, "Update successful", updatedSong);
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            // 记录异常或者处理方式
            throw new RuntimeException("Update failed", e);
        }
    }

    //根据id查找
    @GetMapping("findByid/{songid}")
    public ResponseEntity<ApiResponse<SongAllDTO>> searchSong(@PathVariable Integer songid) {
        SongAllDTO song = songService.getSong(songid);
        ApiResponse<SongAllDTO> response = new ApiResponse<>(0, "Success", song);
        return ResponseEntity.ok(response);
    }


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

    @PostMapping("/uploadAudio")
    public ResponseEntity<ApiResponse<String>> uploadAudio(@RequestParam("file") MultipartFile file) {
// 音频文件类型校验
        if (!file.getContentType().startsWith("audio/")) {
            return ResponseEntity.badRequest().body(new ApiResponse<>(1, "文件类型错误，需上传音频文件", null));
        }
        // 检查文件是否为空
        if (file.isEmpty()) {
            return ResponseEntity.badRequest().body(new ApiResponse<>(1, "上传的文件为空", null));
        }

        // 定义保存文件的路径（根据需要调整路径）
        String filePath =  "C:\\wangyiProject\\wangyi\\audio\\" + file.getOriginalFilename(); // 例如："/uploads/" + file.getOriginalFilename();
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
    public ResponseEntity<ApiResponse<Song>> addSong(@RequestBody SongAllDTO songAllDTO) {

        Song addSong = songService.addSong(songAllDTO);
        ApiResponse<Song> response = new ApiResponse<>(0, "add successful", addSong);
        return ResponseEntity.ok(response);
    }



    //删除
    @DeleteMapping("/{songid}")
    public ResponseEntity<ApiResponse<Song>> deleteSong(@PathVariable Integer songid) {
        songService.delete(songid);
        songTagService.deleteSongTag(songid);
        ApiResponse<Song> response = new ApiResponse<>(0, "delete successful",null);
        return ResponseEntity.ok(response);
    }


    @GetMapping("/all")
    public ResponseEntity<ApiResponse<List<Song>>> findAllSongs() {
        List<Song> songs = songService.getAllSongs();
        ApiResponse<List<Song>> response = new ApiResponse<>(0, "Success", songs);
        return ResponseEntity.ok(response);
    }

    @GetMapping("/top50")
    public ResponseEntity<ApiResponse<List<SongDTO>>> findTop50ByThreeDaysViews() {
        List<SongDTO> topSongs = songService.getTop50Songs();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", topSongs);
        return ResponseEntity.ok(response);
    }





    //每日推荐
    @GetMapping("/recommend")
    public ResponseEntity<ApiResponse<List<SongDTO>>> getRecommend() {
        List<SongDTO> recommendations = songService.getRecommend();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }
    //相似歌曲
    @GetMapping("/recommendUserFavorite/{userid}")
    public ResponseEntity<ApiResponse<List<SongDTO>>> recommendUserFavorite(@PathVariable Integer userid){
        List<SongDTO> recommendations = songService.recommendUserFavorite(userid);
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //在听过歌曲里推荐  //私人漫游
    @GetMapping("/personal/{userid}")
    public ResponseEntity<ApiResponse<List<SongDTO>>> personal(@PathVariable Integer userid){
        List<SongDTO> recommendations = songService.personal(userid);
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //在收藏歌单里推荐  //私人雷达
    @GetMapping("/Favorite/{userid}")
    public ResponseEntity<ApiResponse<List<SongDTO>>> getFavorite(@PathVariable Integer userid) {
        List<SongDTO> recommendations = songService.getFavorite(userid);
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //乐迷雷达
    @GetMapping("/musicFans/{userid}")
    public ResponseEntity<ApiResponse<List<SongDTO>>> musicFans(@PathVariable Integer userid){
        List<SongDTO> recommendations = songService.musicFans(userid);
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //宝藏雷达
    @GetMapping("/precious")
    public ResponseEntity<ApiResponse<List<SongDTO>>> precious(){
        List<SongDTO> recommendations = songService.precious();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //神秘雷达
    @GetMapping("/mysterious")
    public ResponseEntity<ApiResponse<List<SongDTO>>> mysterious(){
        List<SongDTO> recommendations = songService.mysterious();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //云村热评趋势
    @GetMapping("/hotReviews")
    public ResponseEntity<ApiResponse<List<SongDTO>>> hotReviews(){
        List<SongDTO> recommendations = songService.hotReviews();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }


    //音乐年轮（重温经典）
    @GetMapping("/oldSongs")
    public ResponseEntity<ApiResponse<List<SongDTO>>> oldSongs(){
        List<SongDTO> recommendations = songService.oldSongs();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //会员雷达
    @GetMapping("/Vip")
    public ResponseEntity<ApiResponse<List<SongDTO>>> Vip(){
        List<SongDTO> recommendations = songService.Vip();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //曾经爱听
    @GetMapping("/OnceLikeListen/{userid}")
    public ResponseEntity<ApiResponse<List<SongDTO>>> OnceLikeListen(@PathVariable Integer userid){
        List<SongDTO> recommendations = songService.OnceLikeListen(userid);
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }
    //时光雷达
    @GetMapping("/OnceListen/{userid}")
    public ResponseEntity<ApiResponse<List<SongDTO>>> OnceListen(@PathVariable Integer userid){
        List<SongDTO> recommendations = songService.OnceListen(userid);
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //每周新发现
    @GetMapping("/weekNew")
    public ResponseEntity<ApiResponse<List<SongDTO>>> weekNew(){
        List<SongDTO> recommendations = songService.weekNew();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }


    //日系私人雷达
    @GetMapping("/Japan")
    public ResponseEntity<ApiResponse<List<SongDTO>>> Japan(){
        List<SongDTO> recommendations = songService.Japan();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //电音推荐
    @GetMapping("/ElectronicRecommend")
    public ResponseEntity<ApiResponse<List<SongDTO>>> getElectronic() {
        List<SongDTO> recommendations = songService.getElectronic();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //国风榜
    @GetMapping("/NationalList")
    public ResponseEntity<ApiResponse<List<SongDTO>>> getNational() {
        List<SongDTO> recommendations = songService.getNational();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //ACG榜
    @GetMapping("/ACGList")
    public ResponseEntity<ApiResponse<List<SongDTO>>> getACG() {
        List<SongDTO> recommendations = songService.getACG();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }
    //网络热歌榜
    @GetMapping("/hotOnlineList")
    public ResponseEntity<ApiResponse<List<SongDTO>>> getHotOnline() {
        List<SongDTO> recommendations = songService.getHotOnline();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }
    //飙升榜
    @GetMapping("/soaringList")
    public ResponseEntity<ApiResponse<List<SongDTO>>> getSoaring() {
        List<SongDTO> recommendations = songService.getSoaring();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }
    //新歌榜  //新歌雷达
    @GetMapping("/newSongList")
    public ResponseEntity<ApiResponse<List<SongDTO>>> getNewSong() {
        List<SongDTO> recommendations = songService.getNewSong();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }
    //原创榜
    @GetMapping("/OriginalList")
    public ResponseEntity<ApiResponse<List<SongDTO>>> getOriginal() {
        List<SongDTO> recommendations = songService.getOriginal();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //歌单推荐
    @GetMapping("/playList")
    public ResponseEntity<ApiResponse<List<PlayListDTO>>> getplayList() {
        List<PlayListDTO> recommendations = songService.getplayList();
        ApiResponse<List<PlayListDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //万人收藏
    @GetMapping("/collectMany")
    public ResponseEntity<ApiResponse<List<SongDTO>>> collectMany() {
        List<SongDTO> recommendations = songService.collectMany();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //小众推荐
    @GetMapping("/listenlittle")
    public ResponseEntity<ApiResponse<List<SongDTO>>> listenlittle() {
        List<SongDTO> recommendations = songService.listenlittle();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //超高播放
    @GetMapping("/listenmany")
    public ResponseEntity<ApiResponse<List<SongDTO>>> listenmany() {
        List<SongDTO> recommendations = songService.listenmany();
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }


    //歌单推荐
    @GetMapping("/artistPlayList")
    public ResponseEntity<ApiResponse<List<PlayListDTO>>> artistPlayList() {
        List<PlayListDTO> recommendations = songService.artistPlayList();
        ApiResponse<List<PlayListDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }

    //播客推荐
    @GetMapping("/PodcastRecommend")
    public ResponseEntity<ApiResponse<List<PodcastDTO>>> PodcastRecommend() {
        List<PodcastDTO> recommendations = songService.PodcastRecommend();
        ApiResponse<List<PodcastDTO>> response = new ApiResponse<>(0, "Success", recommendations);
        return ResponseEntity.ok(response);
    }


    //找出用户喜欢的音乐
    @GetMapping("/userLikeMusic/{userID}")
    public ResponseEntity<ApiResponse<List<SongDTO>>> selectLikeMusic(@PathVariable Integer userID) {
        List<SongDTO> userLike = songService.selectLikeMusic(userID);
        ApiResponse<List<SongDTO>> response = new ApiResponse<>(0, "Success", userLike);
        return ResponseEntity.ok(response);
    }

    //找出用户的歌单
    @GetMapping("/userPlayList/{userID}")
    public ResponseEntity<ApiResponse<List<PlayListDTO>>> selectuserPlayList(@PathVariable Integer userID) {
        List<PlayListDTO> userLike = songService.selectuserPlayList(userID);
        ApiResponse<List<PlayListDTO>> response = new ApiResponse<>(0, "Success", userLike);
        return ResponseEntity.ok(response);
    }







}
