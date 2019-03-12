package com.baizhi.service;

import com.baizhi.dao.ChapterMapper;
import com.baizhi.entity.Chapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class ChapterServiceImpl implements ChapterService {
    @Autowired
    private ChapterMapper chapterMapper;

    @Override
    public void insertFile(Chapter chapter) {
        chapterMapper.insert(chapter);
    }

    @Override
    public List<Chapter> queryAll() {
        List<Chapter> chapters = chapterMapper.selectAll();
        return chapters;
    }
}
