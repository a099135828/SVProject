package com.example.demo.mapper;

import com.example.demo.pojo.Artist;
import org.apache.ibatis.annotations.*;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

@Mapper
public interface ArtistMapper {
    //查找所有
    @Select("SELECT * FROM artist")
    List<Artist> findAll();

    //分页查找所有
    @Select("SELECT * FROM artist LIMIT #{offset}, #{limit}")
    List<Artist> findAllWithLimit(@Param("offset") int offset, @Param("limit") int limit);

    @Select("SELECT COUNT(*) FROM artist")
    long countAll();

    //按名字查找
    @Select("SELECT * FROM artist WHERE artistname LIKE CONCAT('%', #{artistname}, '%')")
    List<Artist> findArtistByName(@Param("artistname") String artistname);

    //更新
    @Update("UPDATE artist SET artistname = #{artistname} WHERE artistid = #{artistid}")
    int update(Artist artist);

    //根据id查找歌手

    @Select("SELECT * FROM artist WHERE artistid = #{artistid}")
    Optional<Artist> findById(@Param("artistid") Integer artistid);

    //增加
    @Insert("INSERT INTO artist (artistname) VALUES (#{artistname})")
    @Options(useGeneratedKeys = true, keyProperty = "artistid")
    int insert(Artist artist);

    //删除
    @Delete("DELETE FROM artist WHERE artistid = #{artistid}")
    int deleteById(@Param("artistid") Integer artistid);


}
