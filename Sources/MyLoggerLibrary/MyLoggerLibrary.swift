
import Foundation
import os.log

@available(iOS 10.0, *)
class Logger {
    static func log(message: String = "", type:OSLogType = OSLogType.debug, file: String = #file, function: String = #function,column: Int = #column, line: Int = #line) -> Void {
        self.log(message, type: type, file: file, function: function,column: column,line: line)
    }
    
    static func log(_ message :String, type:OSLogType = OSLogType.debug, file: String = #file, function: String = #function,column: Int = #column, line: Int = #line) -> Void {
        let formatMessage = "[\(function) \n in \(file) \n at line:\(line) column:\(column)] \n \(message)"
        os_log("%{public}@", type:type, formatMessage)
    }
}
