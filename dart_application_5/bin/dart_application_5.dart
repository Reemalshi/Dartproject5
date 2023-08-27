import 'dart:io';

import 'catergory.dart';
import 'movie.dart';

void main(){
var action = Catergory("Action", []);
var darama = Catergory("Drama", []);
Movie movie1 =Movie();
movie1.movieName= "Adventure";
movie1.price=3;
movie1.catergory= action;
Movie movie2 =Movie();
movie2.movieName= "MilitaryAction";
movie2.price=4;
movie2.catergory= action;
Movie movie3 =Movie();
movie3.movieName= "Melodrama";
movie3.price=5;
movie3.catergory= darama;
Movie movie4 =Movie();
movie4.movieName= "Melodrama2";
movie4.price=2;
movie4.catergory= darama;
action.movies.addAll([movie1,movie2]);
darama.movies.addAll([movie2,movie3,movie4]);
// Catergory action =Catergory();
// action.catergoryName="Action";
// action.movies=[movie1, movie2];
// Catergory darama = Catergory();
// darama.catergoryName="Darama";
// darama.movies= [movie1,movie3,movie4];
var catergories = [action,darama];
print("Available categories:");
  for (var i = 0; i < catergories.length; i++) {
    print("${i + 1}. ${catergories[i].catergoryName}");
  }
  print("Choose a category (enter the corresponding number):");
  var categoryIndex = int.parse(stdin.readLineSync() ?? "0") - 1;

  if (categoryIndex >= 0 && categoryIndex < catergories.length) {
    var select = catergories[categoryIndex];

    print("Movies in ${select.catergoryName} category:");
    for (var movie in select.movies) {
      print("- ${movie.movieName}");
    }


    print("Choose a movie:");
    var movieTitle = stdin.readLineSync();

    var selectMovie = select.movies.firstWhere(
        (movie) => movie.movieName == movieTitle);

    if (selectMovie != null) {
      print("Price of ${selectMovie.movieName}: ${selectMovie.price}");
    } else {
      print("Movie not found in the selected category.");
    }
  } else {
    print("Invalid category selection.");
  }


}