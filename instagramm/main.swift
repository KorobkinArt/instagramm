//
//  main.swift
//  instagramm
//
//  Created by Артем Коробкин on 29/9/23.
//

import Foundation

print("Hello, World!")

class Constants {
    static var postsUrl = URL(string: "sdfsdf")!
    static var storiesUrl = URL(string: "sdfsdf")!
    static var userUrl = URL(string: "sdfsdf")!
}

protocol MainNetworkService {
    func getSomeData(url: URL) -> Data
}

protocol DataNetworkService: MainNetworkService {
    func getPostsFromAPI() -> Data
    func getStoriesFromAPI()
    func getUserInfoFromApi()
}

extension DataNetworkService {
    func getPostsFromAPI() -> Data {
        getSomeData(url: Constants.postsUrl)
    }
}

protocol PrepareDataService {
    func preparePosts()
    func prepareStories()
    func prepareUse()
    func prepareSomeData()
}

protocol DataManager {
    func showPosts()
    func showStories()
    func saveUserToRealm()
}

// Экран поиск
protocol FindScreen: MainNetworkService {
    func find()
    func showStories() -> Data
}

// Экран новая публикация
protocol NewPublication {
    func cameraPhoto()
    func cameraVideo()
}
// Reels
protocol Stories {
    func reels() -> Data
    
}

// Экран профиль
protocol Profile: MainNetworkService {
    func getDataProfile() -> Data
    func showPeople()
    func setFotoProfile()
    func biography()
    func associatedPhoto() -> Data
}
