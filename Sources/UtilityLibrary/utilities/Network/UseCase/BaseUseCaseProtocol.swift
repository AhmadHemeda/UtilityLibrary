//
//  File.swift
//  
//
//  Created by Ahmad Hemeda on 26/03/2024.
//

import Foundation

protocol BaseUseCaseProtocol {
    associatedtype RequestDataType
    associatedtype ResponseDataType
    func execute(requestData: RequestDataType) -> AnyPublisher<ResponseDataType, Error>
}
