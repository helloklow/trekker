// Establish individual instances of visit while iterating over memoizedVisits
class Visit {
    constructor(visit) {
        this.date = visit.date
        this.notes = visit.notes
        this.park = visit.park_id
    }

    visitHTML() { 
        return (`
            <div id='visit-details' class='visit-card'>
                <p class='visit-date'>${this.date}</p>
                <p class='visit-notes'>${this.notes}</p>
            </div>                 
        `)
    }

}


{/* <div id='-card' class='park-card' data-id='${this.id}'>
    <h4 class='center-text'>${this.name}</h4>
    <p class='small-text'>${this.location}, est. ${this.est}</p>
</div> */}