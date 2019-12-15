class Visits {
    constructor() {
        this.adapter = new VisitsAdapter()
        this.memoizedVisits = []
        this.collectVisits()
        this.initBindAndEvents()
    }
    
    initBindAndEvents() {
        this.container = document.querySelector('#parks-container')
        this.container.addEventListener('click', this.renderVisitForm.bind(this))
        // this.container.addEventListener('click', (e) => {
        //     if (e.target && e.target.className === 'visit-btn') {
        //         this.renderVisitForm(e)
        //     }
        // })
    }

    formBindingsAndEvents() {
        this.form = document.querySelector('form')
        this.visitDate = this.form.querySelector('.visit-date')
        this.visitNotes = this.form.querySelector('.visit-notes')
        this.container.addEventListener('submit', this.postVisitForm.bind(this))
    }

    // renderVisitForm(e) {
    //     console.log(this.memoizedVisits)
    //     const id = e.target.dataset.id 
    //     // const park = 
    //     if(id) {

    //     }
    // }

    collectVisits() {
        this.adapter.getVisits()
            .then(visits => visits.forEach(v => this.memoizedVisits.push(new Visit(v))))
            // .then(() => this.renderVisits())
            // THIS IS FOR EXISTING VISITS
                // Get from db -> Append to correct park's visit section (shows on button click?)
    }

    renderVisitForm(e) {
        const img = e.target.parentNode.children[0]
        const summary = e.target.parentNode.children[1]
        const form = e.target.parentNode.children[2]
        // const backBtn = e.target.parentNode.children[3]
        // const icon = e.target.parentNode.children[4]
        if (e.target.dataset.action === 'visit-btn') {
            img.style.visibility = 'hidden'
            summary.style.visibility = 'hidden'
            form.style.visibility = 'visible'
            // backBtn.style.visibility = 'visible'
        } 
        this.formBindingsAndEvents(form)
        // else if (e.target.dataset.action === 'back') {
        //     img.style.visibility = 'visible'
        //     summary.style.visibility = 'hidden'
        //     form.style.visibility = 'hidden'
        //     backBtn.style.visibility = 'hidden'
        // }
    }

    postVisitForm(e) {
        e.preventDefault()
        e.stopImmediatePropagation()
        console.log(e.target.parentNode)
    }
    
    
}