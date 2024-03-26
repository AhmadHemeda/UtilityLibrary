import Foundation
import Combine

@available(iOS 13.0, *)
public protocol BaseUseCaseProtocol {
    associatedtype RequestDataType
    associatedtype ResponseDataType
    func execute(requestData: RequestDataType) -> AnyPublisher<ResponseDataType, Error>
}
