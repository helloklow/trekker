// Establish individual instances of visit while iterating over memoizedVisits
class Visit {
    constructor(visit) {
        this.date = visit.date
        this.notes = visit.notes
        this.park = visit.park.id
        this.parkName = visit.park.name // for testing only -> just use park id (above)
    }

    visitFormHTML() {

    }
    
}