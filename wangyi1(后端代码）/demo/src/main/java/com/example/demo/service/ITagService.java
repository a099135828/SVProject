package com.example.demo.service;

import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.Tag;
import java.util.List;


public interface ITagService {
    //查找全部
    ApiResponse<List<Tag>> findAllTags(int page, int limit);

    //根据风格名字查找
    List<Tag> searchTagByName(String tag);


    //更新
    Tag updateTag(Tag tag);

    //增加
    Tag addTag(Tag tag);

    //删除
    void deleteTag(Integer tagid);

    List<Tag> findTags();
}
