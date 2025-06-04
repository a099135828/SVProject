package com.example.demo.service.serviceImp;

import com.example.demo.mapper.ArtistMapper;
import com.example.demo.pojo.ApiResponse;
import com.example.demo.pojo.Artist;
import com.example.demo.pojo.dto.ArtistDTO;
import com.example.demo.service.IArtistService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArtistService implements IArtistService {

    @Autowired
    private ArtistMapper artistMapper;

    //查询所有歌手
    public ApiResponse<List<Artist>> getAll(int page, int limit) {
        // 计算分页的起始位置
        int offset = (page - 1) * limit;

        // 获取分页数据
        List<Artist> artists = artistMapper.findAllWithLimit(offset, limit);

        // 获取总记录数
        long totalCount = artistMapper.countAll();

        // 创建 ApiResponse 对象，目的是让输出更规范化
        ApiResponse<List<Artist>> response = new ApiResponse<>(0, "Success", artists);
        response.setCount(totalCount);

        return response;
    }

    //按姓名查询
/*    public List<Artist> searchArtistByName(String artistname) {
        List<Artist>  artists= artistRepository.findArtistByName(artistname);
        return artists.stream().collect(Collectors.toList());
    }*/
    // 按名字查询歌手（不分页）
    public List<Artist> findArtistByName(String artistname) {
        // 直接调用Mapper的方法获取所有匹配的歌手
        return artistMapper.findArtistByName(artistname);
    }
    //分页
    public ApiResponse<List<Artist>> searchArtistByName(String artistname, int page, int limit) {
        // 计算分页的起始位置
        int offset = (page - 1) * limit;

        // 使用PageHelper进行分页
        PageHelper.startPage(page, limit);

        // 获取分页数据
        List<Artist> artists = artistMapper.findArtistByName(artistname);

        // 获取总记录数
        long totalCount = artists.size(); // PageHelper会自动处理分页，但不会填充Page对象，所以我们需要自己计算总数

        // 创建 ApiResponse 对象，目的是让输出更规范化
        ApiResponse<List<Artist>> response = new ApiResponse<>(0, "Success", artists);
        response.setCount(totalCount);

        return response;
    }

    //更新
    public Artist updateArtist(ArtistDTO artistDTO) {
        Artist artist = new Artist();
        BeanUtils.copyProperties(artistDTO, artist);
        artistMapper.update(artist);
        return artist;
    }

    public Artist findByArtistId(Integer artistid) {
        return artistMapper.findById(artistid).orElseThrow(() -> {
            throw new IllegalArgumentException("用户不存在，参数异常!");
        });
    }

    public Artist addArtist(Artist artist) {
        artistMapper.insert(artist);
        return artist;
    }
    public void deleteArtist(Integer artistid) {
        artistMapper.deleteById(artistid);
    }}
