package com.example.demo.service;

import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.User;
import com.example.demo.pojo.dto.UserDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service//把他配置成spring bean，可以在controller这里自动装配它
public interface IUserService {

    //查找所有
    ApiResponse<List<User>> getAllUsers(int page, int limit);


    //修改
    User updateUser(UserDTO userDTO) ;


    //增加
    User addUser(UserDTO userDTO) ;


    //根据id查询
    User getUserById(Integer userid) ;


    //userDTO里没有ID，所以要在UserDTO类中加入UserID



    //删除
    void delete(Integer userid);


    UserDTO getUserDTOById(Integer userid) ;

    UserDTO convertToDTO(User user);

    //根据昵称查找
    ApiResponse<List<UserDTO>> searchUserByNickname(String username, Integer page, Integer limit) ;



}
