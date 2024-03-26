//
//  File.swift
//  
//
//  Created by Ahmad Hemeda on 26/03/2024.
//

import Foundation

class BaseRepository<T>: BaseRepositoryProtocol {
    func fetchData() -> AnyPublisher<T, Error> {
        return Empty(completeImmediately: true).eraseToAnyPublisher()
    }
    
    func saveData(data: T) -> AnyPublisher<Void, Error> {
        return Empty(completeImmediately: true).eraseToAnyPublisher()
    }
}
