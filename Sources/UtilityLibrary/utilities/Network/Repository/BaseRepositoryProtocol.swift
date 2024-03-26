import Foundation
import Combine

@available(iOS 13.0, *)
public protocol BaseRepositoryProtocol {
    associatedtype T
    func fetchData() -> AnyPublisher<T, Error>
}
