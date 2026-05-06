@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 67, capacity: 71, latency: 13, risk: 17, weight: 9)
        precondition(Policy.score(signalcase_1) == 105)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 65, capacity: 78, latency: 18, risk: 22, weight: 8)
        precondition(Policy.score(signalcase_2) == 52)
        precondition(Policy.classify(signalcase_2) == "review")
        let signalcase_3 = Signal(demand: 94, capacity: 83, latency: 9, risk: 19, weight: 5)
        precondition(Policy.score(signalcase_3) == 151)
        precondition(Policy.classify(signalcase_3) == "review")
        let domainReview = DomainReview(signal: 52, slack: 48, drag: 17, confidence: 76)
        precondition(DomainReviewLens.score(domainReview) == 177)
        precondition(DomainReviewLens.lane(domainReview) == "ship")
    }
}
