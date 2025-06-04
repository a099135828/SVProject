package com.example.demo.mapper;

import com.example.demo.pojo.Tag;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface TagMapper {
    @Select("SELECT * FROM tag")
    List<Tag> findAll();

    @Select("SELECT * FROM tag WHERE style LIKE CONCAT('%', #{style}, '%')")
    List<Tag> findTagByName(@Param("style") String style);

    @Insert("INSERT INTO tag (style,category) VALUES (#{style},#{category})")
    @Options(useGeneratedKeys = true, keyProperty = "tagid")
    int insert(Tag tag);

    @Update("UPDATE tag SET style = #{style}, category=#{category} WHERE tagid = #{tagid}")
    int update(@Param("tagid") Integer tagid, @Param("category") String category,@Param("style") String style);

    @Delete("DELETE FROM tag WHERE tagid = #{id}")
    int deleteById(@Param("id") Integer id);

    @Select("SELECT * FROM tag LIMIT #{offset}, #{limit}")
    List<Tag> findAllWithLimit(@Param("offset") int offset, @Param("limit") int limit);

    @Select("SELECT COUNT(*) FROM tag")
    int countAll();


}
