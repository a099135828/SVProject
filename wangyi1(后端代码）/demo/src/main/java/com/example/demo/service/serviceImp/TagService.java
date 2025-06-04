package com.example.demo.service.serviceImp;
import com.example.demo.mapper.TagMapper;
import com.example.demo.pojo.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TagService {

    @Autowired
    private TagMapper tagMapper;

    //查找全部
    public List<Tag> findAllTags(int page, int limit) {
        int offset = (page - 1) * limit;
        return tagMapper.findAllWithLimit(offset, limit);
    }

    //获取数量
    // 获取标签总数
    public int findTagsCount() {
        return tagMapper.countAll();
    }

    //根据风格名字查找
    public List<Tag> searchTagByName(String tag) {
        return tagMapper.findTagByName(tag);
    }

    //更新
    @Transactional
    public Tag updateTag(Tag tag) {
        tagMapper.update(tag.getTagid(), tag.getCategory(),tag.getStyle());
        return tag;
    }

    //增加
    @Transactional
    public Tag addTag(Tag tag) {
        tagMapper.insert(tag);
        return tag;
    }

    //删除
    @Transactional
    public void deleteTag(Integer tagid) {
        tagMapper.deleteById(tagid);
    }

    public List<Tag> findTags() {
        return tagMapper.findAll();
    }
}