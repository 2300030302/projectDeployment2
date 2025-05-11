package com.klu.jfsd.springBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.jfsd.springBoot.model.Artist;

public interface ArtistRepository extends JpaRepository<Artist, Integer> {

}
