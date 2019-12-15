// Visits constructor sets up creation of all visits collection
    // Invoke collectVisits, which uses VisitsService to fetch all visits JSON and push to array
    // -> Run collectVisits() after user login and collect only their visits???
    class Visits {
        constructor() {
            this.memoizedVisits = []
            this.service = new VisitsService()
            this.initBindAndEvents()
            this.collectVisits()
        }
    
        // Cache DOM elements
        initBindAndEvents() {
            this.container = document.querySelector('#parks-container')
            this.container.addEventListener('click', this.visitedCard)
        }

        collectVisits() {
            this.service.fetchVisits()
                .then(visits => visits.forEach(v => this.memoizedVisits.push(new Visit(v))))
                // .then(() => this.renderVisits())
        }

        // This must still render all inactive visit cards!!!
        // renderVisits() {
        //     this.container.innerHTML = this.memoizedVisits.map(v => v.visitedCard()).join('')
        // }
    
        // When users are implemented, follow park fn calls...
            // collectVisits() -> .then(() => this.renderVisits()) -> calls visitedCard from visit.js*
        visitedCard(e) { 
            const parkCard = e.target.parentNode.parentNode
            const summary = e.target.parentNode.children[1]
            const icon = e.target.parentNode.children[2]
            const btn = e.target.parentNode.children[3]
            if (e.target.dataset.action === 'visit-icon') {
                parkCard.className = 'visited-card'
                summary.className = 'visited-summary'
                icon.className = 'visited-icon'
                btn.style.visibility = 'visible'
            } else if (e.target.dataset.action === 'remove-btn') {
                parkCard.className = 'park-card'
                summary.className = 'park-summary'
                icon.className = 'visit-icon'
                btn.style.visibility = 'hidden'
            }
        }
    
        // To load users visits: 
            // 1. search visits array for visits matching that user
            // 2. render those visits as visited cards
    
    
    }