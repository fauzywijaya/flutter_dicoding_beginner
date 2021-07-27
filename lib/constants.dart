import 'package:flutter_submission/model/movie.dart';

const List<String> genre = [
  "Drama",
  "Horor",
  "Action",
  "Sci-fi",
  "Crime",
  "Fantasy",
  "Romance",
  "Musical",
  "Adventure",
  "Thriller",
  "Animation",
];

const String loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec enim quam, feugiat at tortor sed, efficitur iaculis augue. Phasellus dapibus ligula eros. Suspendisse potenti. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus lacinia lorem ac urna aliquam malesuada. Aenean enim purus, vestibulum ac elementum eu, pharetra ut lacus. Nunc consequat tincidunt nunc, sed tristique purus egestas nec. Duis nec urna nunc. Nulla nec scelerisque nulla, sit amet pretium sem. Vestibulum mollis odio vel dui ultrices commodo. Fusce non dapibus mauris, in luctus est. Vestibulum aliquet commodo risus a facilisis. Aenean quis arcu tellus. Nulla non convallis dolor, non viverra diam. Etiam egestas dapibus lorem in porttitor.Suspendisse rutrum justo vitae imperdiet bibendum. Cras a arcu tincidunt, tincidunt nisi vitae, congue orci. Donec diam sem, fringilla quis lorem non, aliquet tincidunt tortor. Morbi a tellus";

final List<String> imagePoster = [
  'images/james_bond.jpg',
  'images/sangchi.jpg',
  'images/venom.jpg',
  'images/spiderman.jpg',
  'images/gi_joe.jpg',
];

List<Movie> movies = [
  Movie(
      title: "F9",
      duration: "2h 15m",
      genre: <String>[
        "Action",
        "Adventure",
        "Crime",
      ],
      poster: "images/f9.jpg",
      rate: "7.6"),
  Movie(
      title: "Black Widow",
      duration: "2h 15m",
      genre: <String>[
        "Action",
        "Sci-fi",
        "Adventure",
      ],
      poster: "images/black_widow.jpg",
      rate: "9.2"),
  Movie(
      title: "Cruella",
      duration: "2h 14m",
      genre: <String>["Comedy", "Crime"],
      poster: "images/Cruela.jpg",
      rate: "8.0"),
  Movie(
      title: "Space Jam: A New Legacy",
      duration: "1h 55m",
      genre: <String>[
        "Animation",
        "Comedy",
        "Family",
        "Sci-fi",
      ],
      poster: "images/space_jam.jpg",
      rate: "7.5"),
  Movie(
      title: "Luca",
      duration: "1h 35m",
      genre: <String>[
        "Animation",
        "Comedy",
        "Family",
        "Fantasy",
      ],
      poster: "images/luca.jpg",
      rate: "8.1"),
  Movie(
      title: "A Quiet Place Part II",
      duration: "1h 37m",
      genre: <String>[
        "Thriller",
        "Fiction",
        "Adventure",
      ],
      poster: "images/a_quite.jpg",
      rate: "7.7"),
  Movie(
      title: "Wrath Of Man",
      duration: "1h 59m",
      genre: <String>[
        "Crimes",
        "Action",
      ],
      poster: "images/wrath_of_man.jpg",
      rate: "7.3"),
  Movie(
      title: "Mortal Kombat",
      duration: "1h 50m",
      genre: <String>[
        "Action",
        "Adventure",
        "Fantasy",
      ],
      poster: "images/mortal_kombat.jpg",
      rate: "7.5"),
  Movie(
      title: "Army of the Dead",
      duration: "2h 58m",
      genre: <String>[
        "Action",
        "Crime",
        "Thriller",
      ],
      poster: "images/army_of_the_dead.jpg",
      rate: "6.4"),
  Movie(
      title: "The Tomorrow War",
      duration: "2h 18m",
      genre: <String>[
        "Action",
        "Sci-fi",
      ],
      poster: "images/tommorow_war.jpg",
      rate: "8.3"),
];
