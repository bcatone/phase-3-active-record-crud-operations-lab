class Movie < ActiveRecord::Base
    # Instantiates a movie with a given title and saves it to the database
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    # Returns the first item in the table
    def self.first_movie
        Movie.first
    end

    # Returns the last item in the table
    def self.last_movie
        Movie.last
    end

    # Returns the number of records in the table
    def self.movie_count
        Movie.count
    end

    # Returns a movie from the table based on its id with the .find method
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    # Returns a movie from the table based on its attributes with the .find_by
    def self.find_movie_with_attributes(attribute)
        Movie.find_by(attribute)
    end

    # Uses a .where clause to select the appropriate movies released after 2002
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    # Updates a single movie using the #update method
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    # Updates the title of all records at once using the .update method
    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    # Deletes a single item with the #destroy method
    def self.delete_by_id(id)
        Movie.destroy(id)
    end

    # Deletes all items at once with the .destroy_all method
    def self.delete_all_movies
        Movie.destroy_all
    end

end