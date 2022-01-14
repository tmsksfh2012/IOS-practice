import UIKit

// Closure
var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
// sort
names.sort {$0 < $1}

names.sort(by: {$0 < $1})

names.sort() {$0 < $1}

names.sort(by: < )
