package com.klu.jfsd.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klu.jfsd.springBoot.model.Painting;
import com.klu.jfsd.springBoot.repository.PaintingRepository;

@Service
public class PaintingServiceImpl implements PaintingService {

    @Autowired
    private PaintingRepository paintingRepository;

    @Override
    public void addPainting(String title, String description, double price, String category, MultipartFile image) throws Exception {
        try {
            // Convert the image file to a byte array
            byte[] imageData = image.getBytes();

            // Save painting details to the database
            Painting painting = new Painting();
            painting.setTitle(title);
            painting.setDescription(description);
            painting.setPrice(price);
            painting.setCategory(category);
            painting.setImage(imageData);

            paintingRepository.save(painting);
        } catch (Exception e) {
            throw new Exception("Error adding painting", e);
        }
    }

	@Override
	public List<Painting> viewAllPaintings() {
		return  paintingRepository.findAll();
	}

	@Override
	public Painting getPaintingById(Long id) {
		
		return paintingRepository.findById(id).orElse(null);
	}
}
