class movie {
  final String banner;
  final String poster;
  final String nama;
  final String genre;
  final int rating;

  movie({
    required this.banner,
    required this.poster,
    required this.genre,
    required this.nama,
    required this.rating,
  });
}

List<movie> categories = [
  movie(
    banner: 'assets/banner 2.png',
    poster: 'assets/petak umpet.jpg',
    genre: "Horror\n",
    nama: 'PETAK UMPET',
    rating: 8,
  ),
  movie(
    banner: 'assets/banner 1.png',
    poster: 'assets/santet segoro pitu.jpg',
    genre: "Horror",
    nama: 'SANTET SEGORO PITU',
    rating: 9,
  ),
  movie(
    banner: 'assets/banner 4.png',
    poster: 'assets/heretic.jpg',
    genre: "Horror",
    nama: 'HERETIC',
    rating: 8,
  ),
  movie(
    banner: 'assets/banner 3.png',
    poster: 'assets/mariara.jpg',
    genre: "Horror",
    nama: 'MARIARA',
    rating: 9,
  )
];