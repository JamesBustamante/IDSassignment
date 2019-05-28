/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;

import java.util.ArrayList;
import java.util.Objects;
import java.util.Optional;

/**
 *
 * @author james
 */
public class MovieDAO implements DAOapi<Movie> {
     
    private ArrayList<Movie> movies = new ArrayList<>();
     
    public MovieDAO() {
    }
     
    /**
     *
     * @param id
     * @return
     */
    public Optional<Movie> get(int id) {
        return Optional.ofNullable((Movie) movies.get(id));
    }
     
    @Override
    public ArrayList<Movie> getAll() {
        return movies;
    }
     
    @Override
    public void save(Movie movie) {
        movies.add(movie);
    }
     
    @Override
    public void update(Movie movie, String[] params) {
        movie.setMovieID(movie.getMovieID());
        movies.add(movie);
    }
     
    @Override
    public void delete(Movie movie) {
        movies.remove(movie);
    }

    @Override
    public Optional<Movie> get(long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


}