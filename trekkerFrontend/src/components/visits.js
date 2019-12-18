class Visits {
    constructor() {
        this.adapter = new VisitsAdapter()
        this.memoizedVisits = []
        this.collectVisits()
        this.initBindingsAndEvents()
    }
    
    initBindingsAndEvents() {
        this.container = document.querySelector('#visit-container')
        this.form = document.querySelector('form')
        this.visitPark = this.form.querySelector('#input-park')
        this.visitDate = this.form.querySelector('#input-date')
        this.visitNotes = this.form.querySelector('#input-notes')
        this.form.addEventListener('submit', this.postVisitForm.bind(this))
    }

    collectVisits() {
        this.adapter.getVisits()
            .then(visits => visits.forEach(v => this.memoizedVisits.push(new Visit(v))))
            .then(() => this.renderVisits())
    }

    renderVisits() {
        this.container.innerHTML = this.memoizedVisits.map(v => v.visitHTML()).join('')
    }

    postVisitForm(e) {
        e.preventDefault()
        const date = this.visitDate.value
        const notes = this.visitNotes.value
        const parkId = this.visitPark.value
        const params = [date, notes, parkId]
        this.adapter.postVisit(params)
            .then(v => {
                this.memoizedVisits.push(new Visit(v))
                this.renderNewVisit(v)
            })
        this.visitDate.value = '' 
        this.visitNotes.value = ''
        this.visitPark.value = ''
    }

    renderNewVisit(v) {
        console.log(v, this.container)
    }
    
}