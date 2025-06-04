package com.example.demo.mapper;

import com.example.demo.pojo.dto.PlayListSongDTO;
import org.apache.ibatis.annotations.*;
import org.springframework.data.repository.query.Param;

@Mapper
public interface PlayListSongMapper {

    @Insert("INSERT INTO playlist_song(songid, playlist_id) VALUES (#{songid}, #{playlistId})")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert(PlayListSongDTO playListSongDTO);

    @Select("SELECT * FROM playlist_song WHERE songid = #{songid} AND playlist_id = #{playlistId}")
    PlayListSongDTO findBySongidAndPlaylistId(@Param("songid") Integer songid, @Param("playlistId") Integer playlistId);

    @Delete("DELETE FROM playlist_song WHERE songid = #{songid} AND playlist_id = #{playlistId}")
    int deleteBySongidAndPlaylistId(@Param("songid") Integer songid, @Param("playlistId") Integer playlistId);
}
