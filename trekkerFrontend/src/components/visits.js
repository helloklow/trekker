class Visits {
    constructor() {
        this.adapter = new VisitsAdapter()
        this.memoizedVisits = []
        this.collectVisits()
        this.initBindingsAndEvents()
    }
    
    initBindingsAndEvents() {
        this.container = document.querySelector('#visit-container')
        this.form = this.container.querySelector('form')
        this.visitPark = this.form.querySelector('#input-park')
        this.visitDate = this.form.querySelector('#input-date')
        this.visitNotes = this.form.querySelector('#input-notes')
        this.visitNotes = this.form.querySelector('#input-notes')
        this.form.addEventListener('submit', this.postVisitForm.bind(this))
    }

    collectVisits() {
        this.adapter.getVisits()
            .then(visits => visits.forEach(v => this.memoizedVisits.push(new Visit(v))))
            // .then(() => this.renderVisits())
            // THIS IS FOR EXISTING VISITS
                // Get from db -> Append to correct park's visit section (shows on button click?)
    }

    postVisitForm(e) {
        e.preventDefault()
        const date = this.visitDate.value
        const notes = this.visitNotes.value
        const park = this.findPark(this.visitPark.value)
        // const params = [date, notes, park]
        // this.adapter.postVisit(params).then(v => {
        //     this.memoizedVisits.push(new Visit(v))
        //     console.log(this)
            // append to park card
        // })
        this.visitDate.value = '' 
        this.visitNotes.value = ''
        this.visitPark.value = ''
    }

    findPark(parkName) {
        
        console.log(result)
    }
    
    
}