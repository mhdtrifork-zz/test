import UIKit

struct Subscription<Subtest: Codable>: Codable {
    let link: String
    let successData: Subtest?
}

struct Subs: Codable {
    let test1: [Subscription<Sub1>]
    let test2: [Subscription<Sub2>]
}

struct Sub1: Codable {
    let name = "name"
}

struct Sub2: Codable {
    let description = "desc"
}


let sub1 = Subscription(link: "1", successData: Sub1())
let sub12 = Subscription(link: "2", successData: Sub1())
let sub13 = Subscription(link: "3", successData: Sub1())
let sub14 = Subscription(link: "4", successData: Sub1())

let sub2 = Subscription(link: "5", successData: Sub2())
let sub22 = Subscription(link: "6", successData: Sub2())
let sub23 = Subscription(link: "7", successData: Sub2())
let sub24 = Subscription(link: "8", successData: Sub2())

let subs = Subs(test1: [sub1, sub12, sub13, sub14], test2: [sub2, sub22, sub23, sub24])

for sub in subs.test1 {
    print(sub.successData!.name)
}

for sub in subs.test2 {
    print(sub.successData!.description)
}
