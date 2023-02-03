class Movie < ActiveRecord::Base

    def self.create_with_title (title)
        self.create(title: title)
    end

    def self.first_movie
        self.all.first
    end

    def self.last_movie
       self.all.last 
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.all.find(id == id)
    end
    
    def self.find_movie_with_attributes attributes
        self.find_by(attributes)
    end

    def self.find_movies_after_2002
        self.where('release_date > 2002')
    end

    def update_with_attributes (attributes)
        self.update(attributes)
    end

    def self.update_all_titles (attributes)
        self.update_all(title: attributes)
    end

    def self.delete_by_id (id)
        self.delete(id == id)
    end

    def self.delete_all_movies
        self.delete_all
    end
end