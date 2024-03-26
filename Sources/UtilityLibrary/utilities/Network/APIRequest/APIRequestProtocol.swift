import Foundation
import Combine

protocol APIRequestProtocol {
    associatedtype ResponseType: Decodable
    var baseURL: URL { get }
    var path: String { get }
    var method: String { get }
    var headers: [String: String]? { get }
    var body: Data? { get }
}
