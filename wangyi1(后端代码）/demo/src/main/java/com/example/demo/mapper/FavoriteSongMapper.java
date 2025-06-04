package com.example.demo.mapper;

import com.example.demo.pojo.FavoriteSong;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface FavoriteSongMapper {

    //
    @Insert("INSERT INTO favorite_song (songid, userid) VALUES (#{songid}, #{userid})")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert(FavoriteSong favoriteSong);

    @Delete("DELETE FROM favorite_song WHERE songid = #{songid} AND userid = #{userid}")
    int deleteById(@Param("songid") Integer songid, @Param("userid") Integer userid);

    @Select("SELECT * FROM favorite_song")
    List<FavoriteSong> findAll();

    @Select("SELECT * FROM favorite_song WHERE songid = #{songid} AND userid = #{userid}")
    FavoriteSong findBySongidAndUserid(@Param("songid") Integer songid, @Param("userid") Integer userid);
}
