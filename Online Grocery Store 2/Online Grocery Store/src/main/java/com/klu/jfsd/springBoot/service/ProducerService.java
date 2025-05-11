package com.klu.jfsd.springBoot.service;

import java.util.List;

import com.klu.jfsd.springBoot.model.Artist;

public interface ArtistService {
      public String addArtist(Artist artist);
      public List<Artist> viewAllArtists();
}
