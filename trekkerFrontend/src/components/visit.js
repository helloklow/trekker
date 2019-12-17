// Establish individual instances of visit while iterating over memoizedVisits
class Visit {
    constructor(visit) {
        this.date = visit.date
        this.notes = visit.notes
        this.park = visit.park_id
        this.initBindingsAndEvents()
    }

    initBindingsAndEvents() {
        // console.log(this.park)
        this.container = document.querySelector('#parks-container')

    }


}