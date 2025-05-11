package com.klu.jfsd.springBoot.controller;import org.springframework.http.HttpHeaders;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.klu.jfsd.springBoot.model.Painting;
import com.klu.jfsd.springBoot.service.PaintingService;

@Controller
public class PaintingController {

    @Autowired
    private PaintingService paintingService;

    @GetMapping("/GetPaintingImage")
    public ResponseEntity<ByteArrayResource> getPaintingImage(@RequestParam Long id) {
        Painting painting = paintingService.getPaintingById(id);
        
        if (painting != null && painting.getImage() != null) {
            ByteArrayResource resource = new ByteArrayResource(painting.getImage());

            return ResponseEntity.ok()
                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + painting.getTitle() + ".jpg")
                    .body(resource);
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}
