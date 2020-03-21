class Visit {
    constructor(visit) {
        this.visitPark = visit.park
        this.date = visit.date
        this.notes = visit.notes
        this.park = visit.park_id
    }

    visitHTML() { 
        return (`
            <div id='visit-details' class='visit-card'>
                <h5 class='visit-park center-text'>${this.visitPark.name}</h5>
                <p class='visit-date center-text'>${this.formatDate(this.date)}</p>
                <p class='visit-notes'>${this.notes}</p>
            </div>             
        `)
    }

    formatDate(date) {
        const d = date.split('-')
        const newDate = d[1]+'/'+d[2]+'/'+d[0]
        return newDate
    }

}