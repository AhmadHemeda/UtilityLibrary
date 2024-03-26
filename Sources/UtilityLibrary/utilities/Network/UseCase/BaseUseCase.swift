import Foundation
import Combine

@available(iOS 13.0, *)
open class BaseUseCase<RequestData, ResponseData>: BaseUseCaseProtocol {
    public init() {}
    
    open func execute(requestData: RequestData) -> AnyPublisher<ResponseData, Error> {
        return Empty(completeImmediately: true).eraseToAnyPublisher()
    }
}
