package com.example.demo.controller;

import com.example.demo.pojo.*;
import com.example.demo.service.serviceImp.SongTagService;
import com.example.demo.service.serviceImp.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController

@RequestMapping("/api/tags")
public class TagController {
    @Autowired
    private TagService tagService;
    @Autowired
    private SongTagService songTagService;

    //查找所有标签
    @GetMapping("/alltags")
    public ApiResponse<List<Tag>> selectAllTags(@RequestParam(defaultValue = "1") Integer page,
                                                @RequestParam(defaultValue = "10") Integer limit){
        // 调用服务层方法获取标签列表
        List<Tag> tags = tagService.findAllTags(page, limit);
        // 调用服务层方法获取标签总数
        int totalCount = tagService.findTagsCount();

        // 创建ApiResponse对象并设置数据
        ApiResponse<List<Tag>> response = new ApiResponse<>(0, "Success", tags);
        response.setCount((long) totalCount);
        return response;
    }

    //查找所有标签不分页
    @GetMapping("/allTags")
    public List<Tag> selectTags(){

        return tagService.findTags();
    }

    //根据名字查找
    @RequestMapping ("/byName")
    public ResponseEntity<ApiResponse<List<Tag>>> searchTagByName(@RequestParam String style) {
        List<Tag> tags = tagService.searchTagByName(style);
        ApiResponse<List<Tag>> response = new ApiResponse<>(0, "Success", tags);
        return ResponseEntity.ok(response);
    }


    //更新标签
    @PutMapping
    public ApiResponse<Tag> updateTag(@RequestBody Tag tag){

        Tag tagNew = tagService.updateTag(tag);
        return ApiResponse.success(tagNew);

    }
    //删除
    @DeleteMapping("/{tagid}")
    public ApiResponse<Tag> deleteTag(@PathVariable Integer tagid){
        tagService.deleteTag(tagid);
        songTagService.deleteTag(tagid);
        return ApiResponse.success();
    }


    //增加
    @PostMapping
    public ResponseEntity<ApiResponse<Tag>> addTag(@RequestBody Tag tag) {
       Tag addTag = tagService.addTag(tag);
        ApiResponse<Tag> response = new ApiResponse<>(0, "add successful", addTag);
        return ResponseEntity.ok(response);
    }

    //

}
