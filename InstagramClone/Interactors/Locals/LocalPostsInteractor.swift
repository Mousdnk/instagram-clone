//
//  LocalPostsInteractor.swift
//  InstagramClone
//
//  Created by Quentin Cornu on 28/12/2020.
//

import Foundation

class LocalPostsInteractor: PostsInteractor {
	
	func loadPosts() -> [Post] {
		return Post.mockedData
	}
}
