////
////  StoryModel.swift
////  earth
////
////  Created by Shamam Alkafri
////
//
//import Foundation
//
//struct StoryModel: Codable, Identifiable {
//    var id: UUID
//    var emoji: String
//    var country: String
//    var latitude: Double
//    var longitude: Double
//    var author: String
//    var storyText: String
//    var timestamp: Date
//
//    // Custom Decoding to Handle UUID & Date Correctly
//    enum CodingKeys: String, CodingKey {
//        case id, emoji, country, latitude, longitude, author, storyText, timestamp
//    }
//
//    init(emoji: String, country: String, latitude: Double, longitude: Double, author: String, storyText: String) {
//        self.id = UUID()
//        self.emoji = emoji
//        self.country = country
//        self.latitude = latitude
//        self.longitude = longitude
//        self.author = author
//        self.storyText = storyText
//        self.timestamp = Date()
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        let idString = try container.decode(String.self, forKey: .id)
//        guard let uuid = UUID(uuidString: idString) else {
//            throw DecodingError.dataCorruptedError(forKey: .id, in: container, debugDescription: "Invalid UUID format")
//        }
//        self.id = uuid
//
//        // Decode other properties normally
//        self.emoji = try container.decode(String.self, forKey: .emoji)
//        self.country = try container.decode(String.self, forKey: .country)
//        self.latitude = try container.decode(Double.self, forKey: .latitude)
//        self.longitude = try container.decode(Double.self, forKey: .longitude)
//        self.author = try container.decode(String.self, forKey: .author)
//        self.storyText = try container.decode(String.self, forKey: .storyText)
//
//        // Decode `timestamp` as String and convert to Date
//        let timestampString = try container.decode(String.self, forKey: .timestamp)
//        let dateFormatter = ISO8601DateFormatter()
//        guard let date = dateFormatter.date(from: timestampString) else {
//            throw DecodingError.dataCorruptedError(forKey: .timestamp, in: container, debugDescription: "Invalid date format")
//        }
//        self.timestamp = date
//    }
//}
