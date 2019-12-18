class Visits {
    constructor() {
        this.adapter = new VisitsAdapter()
        this.memoizedVisits = []
        // this.createVisitCards()
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

        // this.parksContainer= document.querySelector('#parks-container')
        // this.parksContainer.addEventListener('click', (e) => {
        //     if (e.target && e.target.className === 'visit-btn') {
        //         this.showVisits(e)
        //     }
        // })
    }

    // showVisits(e) {
    //     e.preventDefault()
    //     console.log(e.target.parentNode)
    //     // console.log(this.memoizedVisits, e.target.dataset.id)
    //     // 1. MATCH VISITS TO CARD BY PARK ID
    //     // 2. HIDE PARK DETAILS DIV
    //     // 3. SHOW PRE-RENDERED VISITS DIV (WITH BACK BTN)
    // }

    // createVisitCards() {
        // console.log(this.parkCard)
        // this.parkCard.forEach(p => console.log('hey'))
    // }

    collectVisits() {
        this.adapter.getVisits()
            .then(visits => visits.forEach(v => this.memoizedVisits.push(new Visit(v))))
            .then(() => this.renderVisits())
    }

    renderVisits() {
        this.container.innerHTML = this.memoizedVisits.map(v => v.visitHTML()).join('')
    }

    // createVisitCard(visit) { // 
    //     const div = document.createElement('div')
    //     // const visitList = document.createElement('ul')
    //     // visitDetails.appendChild(visitList)
    //     div.className = 'visit-details'
    //     div.dataset.id = visit.id
    //     div.dataset.park = visit.park.id 

    //     const ul = document.querySelector('.visit-ul')
    //     // div.style.visibility = 'hidden'
    //     // console.log(div)
    //     if (visit.park_id === div.dataset.park) {
    //         const li = document.createElement('li')
    //         li.innerText = `${visit.park.name} (${visit.date}): ${visit.notes}`
    //         ul.appendChild(li)
    //     } else {
    //         const ul = document.createElement('ul')
    //         ul.className = 'visit-ul'
    //         div.appendChild(ul)
    //         const li = document.createElement('li')
    //         li.innerText = `${visit.park.name} (${visit.date}): ${visit.notes}`
    //         ul.appendChild(li)
    //         // create visit card for park 
    //         // append visit as li to card
    //         // show visits btn / change color of btn to indicate it has visits
    //     }

        // 1. CREATE HIDDEN VISIT DETAILS DIV CONTAINING UL
        // 2. APPEND NEW VISIT LI TO UL 
        // * IF NO OTHER VISITS, CREATE NEW VISIT DETAILS DIV FOR PARK, ELSE APPEND TO EXISTING VISITS DIV

    // }
    // this.parkCard.innerHTML = this.memoizedVisits.map(p => p.parkHTML()).join('')

    postVisitForm(e) {
        e.preventDefault()
        const date = this.visitDate.value
        const notes = this.visitNotes.value
        const parkId = this.visitPark.value
        const params = [date, notes, parkId]
        this.adapter.postVisit(params)
            .then(v => {
                this.memoizedVisits.push(new Visit(v))
                this.createVisitCard(v)
            })
        this.visitDate.value = '' 
        this.visitNotes.value = ''
        this.visitPark.value = ''
    }
    
}