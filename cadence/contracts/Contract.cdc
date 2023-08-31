// Define the contract
pub contract MovieStruct{

    // Define the struct
    pub struct Movie {
        pub let id: UInt64
        pub let title: String
        pub let director: String

        // Constructor for the Movie struct
        init(id: UInt64, title: String, director: String) {
            self.id = id
            self.title = title
            self.director = director
        }
    }

    // Declare a dictionary to hold Movie structs
    pub var movies: {UInt64: Movie}

    // Initialize the contract
    init() {
        self.movies = {}
    }

    // Function to add a Movie to the dictionary
    pub fun addMovie(id: UInt64, title: String, director: String) {
        let movie = Movie(id: id, title: title, director: director)
        self.movies[id] = movie
    }

    // Function to get a Movie by its Id
    pub fun getMovie(id: UInt64): Movie? {
        return self.movies[id]
    }
}