import Foundation

public extension Calendar {
    @inlinable func xn_isDateAtLeast(_ dateComponents: DateComponents, date: Date) -> Bool {
        guard let treshold = self.date(from: dateComponents) else {
            return false
        }
        return date >= treshold
    }
    
    @inlinable func xn_nextDayAfter(adding components: DateComponents, to date: Date) -> Date? {
        guard let nextDate = self.date(byAdding: components, to: date) else {
            return nil
        }
        return self.nextDate(
            after: nextDate,
            matching: DateComponents(hour: 0, minute: 0),
            matchingPolicy: .nextTime
        )
    }
}

