import Foundation
import Alamofire
import Logging

struct Library {
    init() {
        
    }
    
    func load() {
        // 1
        let request = AF.request("https://swapi.dev/api/films")
        // 2
        request.responseJSON { (data) in
            print(data)
        }
    }
    
    func log() {
        Logger(label: "label").debug("message")
    }
}
