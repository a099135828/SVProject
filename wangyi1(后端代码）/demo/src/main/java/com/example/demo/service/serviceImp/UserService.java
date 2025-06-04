package com.example.demo.service.serviceImp;
//实现类

import com.example.demo.mapper.UserMapper;
import com.example.demo.pojo.*;
import com.example.demo.pojo.dto.UserDTO;
import com.example.demo.service.IUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

//表示业务逻辑的bean
//通常依赖于其他Spring管理的bean
@Service
public class UserService implements IUserService {

    @Autowired
    private UserMapper userMapper;


    //查找全部
    public ApiResponse<List<User>> getAllUsers(int page, int limit) {
        List<User> users = userMapper.findAllWithLimit((page - 1) * limit, limit);
        long totalCount = userMapper.countAll();
        ApiResponse<List<User>> response = new ApiResponse<>(0, "Success", users);
        response.setCount(totalCount);
        return response;
    }

    //修改
    public User updateUser(UserDTO userDTO) {
        User user = userMapper.findById(userDTO.getUserid()).orElse(new User());
        BeanUtils.copyProperties(userDTO, user);
        userMapper.update(user);
        return user;
    }

   //实现接口中的对应方法
    //增加
   public User addUser(UserDTO userDTO) {
       User user = new User();
       BeanUtils.copyProperties(userDTO, user);
       userMapper.insert(user);
       return user;
   }


    public User getUserById(Integer userid) {
        return userMapper.findById(userid).orElseThrow(() -> new IllegalArgumentException("用户不存在，参数异常!"));
    }


    //userDTO里没有ID，所以要在UserDTO类中加入UserID



    public void delete(Integer userid) {
        userMapper.deleteById(userid);
    }

    public UserDTO getUserDTOById(Integer userid) {
        Optional<User> userOptional = userMapper.findById(userid);
        return userOptional.map(this::convertToDTO).orElse(null);
    }

    public UserDTO convertToDTO(User user) {
        UserDTO dto = new UserDTO();
        BeanUtils.copyProperties(user, dto);
        return dto;
    }

    //根据昵称查找
    public ApiResponse<List<UserDTO>> searchUserByNickname(String nickname, Integer page, Integer limit) {
        int offset = (page - 1) * limit;
        List<User> users = userMapper.findUserByNameWithLimit(nickname, offset, limit);
        List<UserDTO> userDTOS = users.stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());

        int totalCount = userMapper.countUserByName(nickname);
        ApiResponse<List<UserDTO>> response = new ApiResponse<>(0, "Success", userDTOS);
        response.setCount((long) totalCount);
        return response;
    }


}
