package com.klu.jfsd.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.springBoot.model.Artist;
import com.klu.jfsd.springBoot.repository.ArtistRepository;
@Service
public class ArtistServiceImpl implements ArtistService {
	
	@Autowired
	private ArtistRepository artistRepo;

	@Override
	public String addArtist(Artist artist) {
         artistRepo.save(artist);
         return "Artist Added Successfully";
	}

	@Override
	public List<Artist> viewAllArtists() {
		
		return artistRepo.findAll();
	}

}
