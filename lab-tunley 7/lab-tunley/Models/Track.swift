//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct

struct Movie {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL

    // Detail properties
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: String
    let trackTimeMillis: String
}

// TODO: Pt 1 - Create an extension with a mock tracks static var

extension Movie {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(trackName: "Black Panther",
              artistName: "T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_.jpg")!,
             collectionName: "Votes",
             primaryGenreName: "50.5 Popularity",
              releaseDate: "9.5 Vote Average",
              trackTimeMillis: "160"),
        Track(trackName: "Rush Hour",
              artistName: "A loyal and dedicated Hong Kong Inspector teams up with a reckless and loudmouthed L.A.P.D. detective to rescue the Chinese Consul's kidnapped daughter, while trying to arrest a dangerous crime lord along the way.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/I/61hn3gcwBvL.jpg")!,
              collectionName: "Votes",
              primaryGenreName: "50.0 Popularity",
               releaseDate: "9.4 Vote Average",
               trackTimeMillis: "159"),
        Track(trackName: "Love & Basketball",
              artistName: "Monica and Quincy love and play basketball together through many life challenges from childhood to adulthood",
              artworkUrl100: URL(string: "https://i5.walmartimages.com/asr/b24400ef-e9c2-4f2b-b77d-621411f20cd5_1.a19dce4cff6805ba6f82022d196d2ace.jpeg")!,
              collectionName: "Votes",
              primaryGenreName: "49.5 Popularity",
               releaseDate: "9.3 Vote Average",
               trackTimeMillis: "158"),
        Track(trackName: "Demon Slayer the Movie: Mugen Train",
              artistName: "After his family was brutally murdered and his sister turned into a demon, Tanjiro Kamado's journey as a demon slayer began. Tanjiro and his comrades embark on a new mission aboard the Mugen Train, on track to despair.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BODI2NjdlYWItMTE1ZC00YzI2LTlhZGQtNzE3NzA4MWM0ODYzXkEyXkFqcGdeQXVyNjU1OTg4OTM@._V1_.jpg")!,
              collectionName: "Votes",
              primaryGenreName: "49.0 Popularity",
               releaseDate: "9.2 Vote Average",
               trackTimeMillis: "157"),
        Track(trackName: "WHISTLE",
              artistName: "A young Shaolin follower reunites with his discouraged brothers to form a soccer team using their martial art skills to their advantage.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BMjhlMWE5NzktNmE4Ny00ZWFlLTk5MzUtZDZhZmQ0YmVlNDI0XkEyXkFqcGdeQXVyNjc5NjEzNA@@._V1_FMjpg_UX1000_.jpg")!,
              collectionName: "Votes",
              primaryGenreName: "49.0 Popularity",
               releaseDate: "9.1 Vote Average",
               trackTimeMillis: "156"),
        Track(trackName: "Drunken Master",
              artistName: "Wong Fei-Hung is a mischievous yet righteous young man, but after a series of incidents his frustrated father has him disciplined by a master of drunken martial arts",
              artworkUrl100: URL(string: "https://play-lh.googleusercontent.com/QYNASkngTWPu5PJqozOds3JqhwvR-oXvbxyzjltRLX3whJy-hQfXMk4jA2P_urcaHzmtUZyyWycxSdN0rA")!,
              collectionName: "Votes",
              primaryGenreName: "49.0 Popularity",
               releaseDate: "9.0 Vote Average",
               trackTimeMillis: "155"),
        Track(trackName: "Avatar",
              artistName: "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_.jpg")!,
              collectionName: "Votes",
              primaryGenreName: "48.5 Popularity",
               releaseDate: "9.1 Vote Average",
               trackTimeMillis: "155")
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
