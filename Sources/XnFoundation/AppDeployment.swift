import Foundation
import Xn

public extension Xn.Foundation {
    enum AppDeployment {
        case simulator
        case debugDevice
        case testFlight
        case appStore
    }
    
    static let appDeployment: AppDeployment = {
        guard !isSimulator else { return .simulator }
        guard !isDebug else { return .debugDevice }
        guard !isTestFlight else { return .testFlight }
        return .appStore
    }()
}

private let isTestFlight = {
    Bundle.main.appStoreReceiptURL?.lastPathComponent == "sandboxReceipt"
}()

private let isProduction = {
    !isTestFlight
}()

private let isDebug: Bool = {
#if DEBUG
    return true
#else
    return false
#endif
}()

private let isSimulator: Bool = {
#if targetEnvironment(simulator)
    return true
#else
    return false
#endif
}()
