package com.example.demo.mapper;

import com.example.demo.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Optional;

@Mapper
public interface UserMapper {
    @Select("SELECT * FROM user")
    List<User> findAll();

    @Select("SELECT * FROM user LIMIT #{limit} OFFSET #{offset}")
    List<User> findAllWithLimit(@Param("offset") int offset, @Param("limit") int limit);


    @Select("SELECT * FROM user WHERE nickname LIKE CONCAT('%', #{nickname}, '%')")
    List<User> findUserByName(@Param("nickname") String nickname);

    // 根据昵称搜索用户的分页列表
    @Select("SELECT * FROM user WHERE nickname LIKE CONCAT('%', #{nickname}, '%') LIMIT #{limit} OFFSET #{offset}")
    List<User> findUserByNameWithLimit(@Param("nickname") String nickname, @Param("offset") int offset, @Param("limit") int limit);

    // 计算符合搜索条件的用户总数
    @Select("SELECT COUNT(*) FROM user WHERE nickname LIKE CONCAT('%', #{nickname}, '%')")
    int countUserByName(@Param("nickname") String nickname);

    @Select("SELECT * FROM user WHERE userid = #{userid}")
    Optional<User> findById(@Param("userid") Integer userid);

    @Insert("INSERT INTO user (nickname, password, phone_number, birthdate, avatar) " +
            "VALUES (#{nickname}, #{password}, #{phoneNumber}, #{birthdate}, #{avatar})")
    @Options(useGeneratedKeys = true, keyProperty = "userid")
    int insert(User user);

    @Update("UPDATE user SET nickname = #{nickname}, password = #{password}, " +
            "phone_number = #{phoneNumber}, birthdate = #{birthdate}, avatar = #{avatar} " +
            "WHERE userid = #{userid}")
    int update(User user);

    @Delete("DELETE FROM user WHERE userid = #{userid}")
    int deleteById(@Param("userid") Integer userid);

    @Select("SELECT COUNT(*) FROM user")
    int countAll();

    //登录
    @Select("SELECT * FROM user WHERE nickname = #{nickname} AND password = #{password}")
    User findByNicknameAndPassword(@Param("nickname") String nickname, @Param("password") String password);
}