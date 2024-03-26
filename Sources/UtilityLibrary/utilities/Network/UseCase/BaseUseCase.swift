//
//  File.swift
//  
//
//  Created by Ahmad Hemeda on 26/03/2024.
//

import Foundation

class BaseUseCase<RequestData, ResponseData>: BaseUseCaseProtocol {
    func execute(requestData: RequestData) -> AnyPublisher<ResponseData, Error> {
        return Empty(completeImmediately: true).eraseToAnyPublisher()
    }
}
