//___FILEHEADER___

import Foundation
import Alamofire

enum ___FILEBASENAMEASIDENTIFIER___: ApiRouterProtocol {

    // MARK: - Endpoints
    case sample

    var path: String {
        switch self {
        case .sample:
            return "/sample"
        }
    }

    var parameters: Parameters? {
        switch self {
        case .sample:
            return nil
        }
    }

    var method: HTTPMethod {
        switch self {
        case .sample:
            return .get
        }
    }

    func asURLRequest() throws -> URLRequest {
        //baseURL on this sample baseUrl is in project Build Settings
        guard let baseUrl =
            try (Bundle.main.object(forInfoDictionaryKey: "baseUrl") as? String)?.asURL() else {
                throw AlamoError.invalidURL
        }

        var urlRequest = URLRequest(url: baseUrl.appendingPathComponent(path))

        urlRequest.httpMethod = method.rawValue

        //Request header
        urlRequest.setValue(ContentType.json.rawValue,
                            forHTTPHeaderField: HttpHeaderField.acceptType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue,
                            forHTTPHeaderField: HttpHeaderField.contentType.rawValue)

        // parameter enconding
        let enconding: ParameterEncoding = {
            return URLEncoding.default
        }()

        return try enconding.encode(urlRequest, with: parameters)
    }
}
