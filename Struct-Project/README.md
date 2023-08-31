# Struct-Project

The project contains a Cadence smart contract that allows you to manage a collection of movies. It provides functions to add new movies and retrieve information about existing movies.

## Getting Started

To use the `MovieStruct` contract, you need to deploy it on the Flow blockchain. You can then interact with the contract using Cadence scripts and transactions.

## Contract Details

### Movie Struct

The `Movie` struct represents a movie and contains the following fields:

- `id`: A unique identifier for the movie.
- `title`: The title of the movie.
- `director`: The name of the director of the movie.

### Functions

- `addMovie`: Adds a new movie to the collection. Takes `id`, `title`, and `director` as parameters.
- `getMovie`: Retrieves information about a movie using its ID. Takes the `id` as a parameter and returns the corresponding `Movie` struct.

## Usage

### Adding a Movie

To add a new movie to the collection, you can use the `addMovie` transaction. Provide the following parameters:

- `id`: A unique identifier for the movie.
- `title`: The title of the movie.
- `director`: The name of the director of the movie.

### Getting a Movie

To retrieve information about a movie using its ID, you can use the `getMovie` function. Provide the ID of the movie as a parameter, and it will return the movie's details.

## Author

[Israel](https://github.com/Graceprince)

## License

This project is licensed under the [MIT License](LICENSE).
