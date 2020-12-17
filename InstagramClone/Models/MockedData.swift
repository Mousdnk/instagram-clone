//
//  MockedData.swift
//  InstagramClone
//
//  Created by Quentin Cornu on 14/12/2020.
//

import Foundation

private let formatter: DateFormatter = {
	let formatter = DateFormatter()
	formatter.dateFormat = "HH:mm, d MMM y"
	return formatter
}()

extension Post {
    static let mockedData: [Post] = [
        Post(
            user: User.mockedData[0],
            location: nil,
            imageURL: URL(string: "https://images.pexels.com/photos/2040627/pexels-photo-2040627.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
            likesCount: 1782,
            description: "Lorem ipsum 🌴 dolor sit amet, consectetur adipiscing elit 😁 sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
			date: formatter.date(from: "20:06, 12 Nov 2020")!,
            comments: [],
            isLiked: true,
            isSaved: false
        ),
        Post(
            user: User.mockedData[1], location: "Beverly Hills, California",
            imageURL: URL(string: "https://images.pexels.com/photos/3225531/pexels-photo-3225531.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
            likesCount: 1782,
            description: "Test description",
            date: formatter.date(from: "16:32, 15 Dec 2020")!,
            comments: Comment.mockedData,
            isLiked: false,
            isSaved: true
        ),
        Post(
            user: User.mockedData[2], location: "Paris, France",
            imageURL: URL(string: "https://images.pexels.com/photos/3061217/pexels-photo-3061217.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
            likesCount: 1782,
            description: "Test description",
            date: formatter.date(from: "23:46, 12 Dec 2020")!,
            comments: Comment.mockedData,
            isLiked: false,
            isSaved: false
        )
    ]
}

extension User {
	static let mockedData = [
		User(
			name: "test_user",
			imageURL: URL(string: "https://images.pexels.com/photos/194446/pexels-photo-194446.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
		),
		User(
			name: "another_user",
			imageURL: URL(string: "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
		),
		User(
			name: "again_a_user",
			imageURL: URL(string: "https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
		)
	]
}

extension Comment {
    static let mockedData = [
		Comment(user: User.mockedData[0], text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", date: formatter.date(from: "03:20, 14 Dec 2020")!, isLiked: false),
		Comment(user: User.mockedData[1], text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", date: formatter.date(from: "17:20, 15 Dec 2020")!, isLiked: false),
        Comment(user: User.mockedData[2], text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", date: formatter.date(from: "22:57, 14 Dec 2020")!, isLiked: false),
    ]
}

extension Story {
	static let mockedData = [
		Story(
			user: User.mockedData[0],
			contents: Content.mockedData
		),
		Story(
			user: User.mockedData[1],
			contents: Content.mockedData
		),
		Story(
			user: User.mockedData[2],
			contents: Content.mockedData
		),
	]
}

extension Story.Content {
	static let mockedData = [
		Story.Content(
			isNew: false,
			type: .image(url: URL(string: "https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")!),
			publicationDate: formatter.date(from: "14:57, 15 Dec 2020")!
		),
		Story.Content(
			isNew: true,
			type: .image(url: URL(string: "https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")!),
			publicationDate: formatter.date(from: "18:57, 16 Dec 2020")!
		),
		Story.Content(
			isNew: true,
			type: .image(url: URL(string: "https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")!),
			publicationDate: formatter.date(from: "14:57, 16 Dec 2020")!
		)
	]
}
