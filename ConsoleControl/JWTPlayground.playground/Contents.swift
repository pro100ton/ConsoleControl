import Foundation

struct Credentials: Codable {
    let username: String
    let password: String
}

class AuthenticationManager {
    static let shared = AuthenticationManager()
    
    var token: String?
    
    func login(username: String, password: String, completion: @escaping (Error?) -> Void) {
        let credentials = Credentials(username: username, password: password)
        
        guard let url = URL(string: "https://epp.ru/login") else {
            completion(NSError(domain: "Invalid URL", code: 0, userInfo: nil))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(credentials)
            request.httpBody = data
        } catch {
            completion(error)
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(error)
                return
            }
            
            guard let data = data,
                  let response = response as? HTTPURLResponse,
                  response.statusCode == 200 else {
                      completion(NSError(domain: "Invalid response", code: 0, userInfo: nil))
                      return
                  }
            
            guard let token = try? JSONDecoder().decode(Token.self, from: data) else {
                completion(NSError(domain: "Could not parse response", code: 0, userInfo: nil))
                return
            }
            
            self.token = token.jwt
            completion(nil)
        }
        
        task.resume()
    }
}

struct Token: Codable {
    let jwt: String
}
