// Establish individual instances of visit while iterating over memoizedVisits
class Visit { // extends Park -> secondary option if setting dataset won't work???
    constructor(visit) {
        // super(name)
        this.date = visit.date
        this.notes = visit.notes
        this.park = visit.park_id
        this.initBindingsAndEvents()
    }

    initBindingsAndEvents() {
        this.container = document.querySelector('#parks-container')
    }


}