Swift
struct TrackerData: Codable, Identifiable {
    let id = UUID()
    var title: String
    var projectURL: URL
    var lastUpdated: Date
    var metrics: [Metric]

    struct Metric: Codable, Identifiable {
        let id = UUID()
        var name: String
        var value: Double
        var unit: String
    }
}

struct TrackerApp: Codable {
    var trackers: [TrackerData]
    var selectedTracker: TrackerData?
    var isUpdating: Bool
}

class TrackerViewModel {
    @Published var app: TrackerApp
    @Published var error: Error?

    init() {
        self.app = TrackerApp(trackers: [], selectedTracker: nil, isUpdating: false)
    }

    func fetchTrackers() {
        // API call to fetch trackers
    }

    func selectTracker(_ tracker: TrackerData) {
        self.app.selectedTracker = tracker
    }

    func updateTracker(_ tracker: TrackerData) {
        // API call to update tracker
    }
}