package com.example.demo.mapper;

import com.example.demo.pojo.SongTag;
import org.apache.ibatis.annotations.*;
import org.springframework.data.repository.query.Param;

import java.util.List;

@Mapper
public interface SongTagMapper {
    @Insert("INSERT INTO song_tag (songid, tagid) VALUES (#{songid}, #{tagid})")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert(SongTag songTag);

    @Select("SELECT * FROM song_tag")
    List<SongTag> findAll();

    @Insert("INSERT INTO song_tag (songid, tagid) VALUES " +
            "<foreach collection='songTags' item='songTag' separator=','>" +
            "(#{songTag.songid}, #{songTag.tagid})" +
            "</foreach>")
    int insertAll(@Param("songTags") List<SongTag> songTags);

    @Delete("DELETE FROM song_tag WHERE songid = #{songid}")
    int deleteBySongid(@Param("songid") Integer songid);

    @Delete("DELETE FROM song_tag WHERE tagid = #{tagid}")
    int deleteByTagid(@Param("tagid") Integer tagid);

}
