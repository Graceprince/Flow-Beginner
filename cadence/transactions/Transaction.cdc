// Import MovieStruct Contract
import MovieStruct from 0x01

// Transaction to add a movie
transaction(id: UInt64, title: String, director: String) {
    
    prepare(acct: AuthAccount) {}

    execute {
      MovieStruct.addMovie(id: id, title: title, director: director)
      log("Movie Added Successfully")
    }
}