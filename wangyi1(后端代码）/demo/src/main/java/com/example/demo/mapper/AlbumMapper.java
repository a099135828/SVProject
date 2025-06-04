package com.example.demo.mapper;

import com.example.demo.pojo.Album;
import org.apache.ibatis.annotations.*;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

@Mapper
public interface AlbumMapper {

    //查询所有
    @Select("SELECT * FROM album")
    List<Album> findAll();

    //分页查询
    @Select("SELECT * FROM album LIMIT #{offset}, #{limit}")
    List<Album> findAllWithLimit(@Param("offset") int offset, @Param("limit") int limit);

    @Select("SELECT COUNT(*) FROM album")
    long countAll();

    //按名字查找
    @Select("SELECT * FROM album WHERE albumname LIKE CONCAT('%', #{albumname}, '%')")
    List<Album> findAlbumByName(@Param("albumname") String albumname);

    //按id查找
    @Select("SELECT * FROM album WHERE albumid = #{albumid}")
    Optional<Album> findById(@Param("albumid") Integer albumid);

    //更新
    @Update("UPDATE album SET albumname = #{albumname}, artistid = #{artistid},  publish_date = #{publishDate} WHERE albumid = #{albumid}")
    int update(Album album);

    //新增
    @Insert("INSERT INTO album (albumname, artistid,  publish_date) " +
            "VALUES (#{albumname}, #{artistid},  #{publishDate})")
    @Options(useGeneratedKeys = true, keyProperty = "albumid")
    int insert(Album album);

    //删除
    @Delete("DELETE FROM album WHERE albumid = #{albumid}")
    int deleteById(@Param("albumid") Integer albumid);

    //根据id和名字查询
    @Select("SELECT * " +
            "FROM album a " +
            "JOIN artist ar ON a.artistid = ar.artistid " +
            "WHERE ar.artistid = #{artistId} AND a.albumname LIKE CONCAT('%', #{albumName}, '%')")
    List<Album> findAlbumsByArtistIdAndName(@Param("artistId") Integer artistId, @Param("albumName") String albumName);
}
