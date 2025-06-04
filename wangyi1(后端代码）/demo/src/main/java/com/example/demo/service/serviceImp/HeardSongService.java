package com.example.demo.service.serviceImp;

import com.example.demo.pojo.HeardSong;
import com.example.demo.mapper.HeardSongMapper;
import com.example.demo.service.IHeardSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HeardSongService implements IHeardSongService {

    @Autowired
    private HeardSongMapper heardSongMapper;

    // 增加heard_song表的记录
    public HeardSong addHeardSong(HeardSong heardSong) {
        heardSongMapper.insert(heardSong);
        return heardSong;
    }
}