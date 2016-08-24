//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let calendar = NSCalendar.autoupdatingCurrentCalendar()
let now = NSDate()
let dateComponents = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year, NSCalendarUnit.WeekOfYear, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second, NSCalendarUnit.Nanosecond], fromDate: now)

print("day = \(dateComponents.day)", "month = \(dateComponents.month)", "year = \(dateComponents.year)", "week of year = \(dateComponents.weekOfYear)", "hour = \(dateComponents.hour)", "minute = \(dateComponents.minute)", "second = \(dateComponents.second)", "nanosecond = \(dateComponents.nanosecond)" , separator: ", ", terminator: "")

let dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
var dateAsString = "2016-08-24 09:00"
let date1 = dateFormatter.dateFromString(dateAsString)!
dateAsString = "2016-08-24 17:30"
let date2 = dateFormatter.dateFromString(dateAsString)!

print("Earlier date is \(date1.earlierDate(now))")
print("Later date is \(date1.laterDate(now))")


let diffDateComponents = NSCalendar.currentCalendar().components([NSCalendarUnit.Year, NSCalendarUnit.Month, NSCalendarUnit.Day, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second], fromDate: date1, toDate: date2, options: NSCalendarOptions.init(rawValue: 0))

print("The difference between start and finish is: \(diffDateComponents.year) years, \(diffDateComponents.month) months, \(diffDateComponents.day) days, \(diffDateComponents.hour) hours, \(diffDateComponents.minute) minutes, \(diffDateComponents.second) seconds")
let lunchStart = dateFormatter.dateFromString("2016-08-24 12:00")!
let lunchEnd = dateFormatter.dateFromString("2016-08-24 12:30")!

let lunchbreak = NSCalendar.currentCalendar().components([NSCalendarUnit.Hour, NSCalendarUnit.Minute],fromDate: lunchEnd, toDate: lunchStart, options: NSCalendarOptions.init(rawValue: 0))

let totalTime = calendar.dateByAddingComponents(lunchbreak, toDate: calendar.dateFromComponents(diffDateComponents)!, options: NSCalendarOptions.init(rawValue: 0))










//let midday = NSDateComponents("2016-08-24 12:00:00 +1000")







