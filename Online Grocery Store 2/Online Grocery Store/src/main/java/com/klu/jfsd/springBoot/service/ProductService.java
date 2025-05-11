package com.klu.jfsd.springBoot.service;

import java.util.List;
import com.klu.jfsd.springBoot.model.Painting;
import org.springframework.web.multipart.MultipartFile;

public interface PaintingService {
	void addPainting(String title, String description, double price, String category, MultipartFile image) throws Exception;
	public List<Painting> viewAllPaintings();
    public Painting getPaintingById(Long id);
}
