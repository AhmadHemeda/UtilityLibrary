//
//  File.swift
//  
//
//  Created by Ahmad Hemeda on 26/03/2024.
//

import Foundation

protocol BaseRepositoryProtocol {
    associatedtype T
    func fetchData() -> AnyPublisher<T, Error>
    func saveData(data: T) -> AnyPublisher<Void, Error>
}
