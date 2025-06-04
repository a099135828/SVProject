package com.example.demo.mapper;

import com.example.demo.pojo.HeardSong;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface HeardSongMapper {

    @Insert("INSERT INTO heard_song <set_clause>")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert(HeardSong heardSong);

}
