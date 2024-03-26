//
//  File.swift
//  
//
//  Created by Ahmad Hemeda on 26/03/2024.
//

import Foundation

protocol APIRequestProviderProtocol {
    func makeRequest<T: APIRequestProtocol>(request: T) -> AnyPublisher<T.ResponseType, Error>
}
