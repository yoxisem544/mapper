import Foundation

extension NSDictionary {
    @nonobjc
    func safeValue(forKeyPath keyPath: String, delimiter: String = ".") -> Any? {
        var object: Any? = self
        var keys = keyPath.components(separatedBy: delimiter)

        while !keys.isEmpty, let currentObject = object {
            let key = keys.remove(at: 0)
            object = (currentObject as? NSDictionary)?[key]
        }

        return object
    }
}
