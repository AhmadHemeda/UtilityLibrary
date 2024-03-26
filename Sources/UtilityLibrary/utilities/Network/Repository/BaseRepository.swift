import Foundation
import Combine

@available(iOS 13.0, *)
open class BaseRepository<T>: BaseRepositoryProtocol {
    public init() {}
    
    open func fetchData() -> AnyPublisher<T, Error> {
        return Empty(completeImmediately: true).eraseToAnyPublisher()
    }
}
