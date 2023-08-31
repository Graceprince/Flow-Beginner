// Import MovieStruct Contract
import MovieStruct from 0x01

pub fun main(id: UInt64): MovieStruct.Movie? {
  return MovieStruct.getMovie(id: id)!
}
