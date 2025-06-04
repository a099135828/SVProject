package com.example.demo.mapper;

import com.example.demo.pojo.PlayList;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.springframework.data.repository.query.Param;

@Mapper
public interface PlayListMapper {
    @Insert("INSERT INTO playlist (playlist_name, img, userid,collect,share,comment,listen_times,is_official) VALUES (#{playlistName}, #{img}, #{userid}, #{collect}, #{share}, #{comment}, #{listenTimes},#{official})")
    @Options(useGeneratedKeys = true, keyProperty = "playlistId")
    int insert(PlayList playList);

    @Delete("DELETE FROM playlist WHERE playlist_id = #{playlistId}")
    int deleteById(@Param("playlistId") Integer playlistId);
}
