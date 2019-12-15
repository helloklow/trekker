// Visits constructor sets up creation of all visits collection
    // Invoke collectVisits, which uses Visitsadapter to fetch all visits JSON and push to array
    // -> Run collectVisits() after user login and collect only their visits???
    class Visits {
        constructor() {
            this.memoizedVisits = []
            this.adapter = new VisitsAdapter()
            this.initBindAndEvents()
            this.collectVisits()
        }
    
        // Cache DOM elements
        initBindAndEvents() {
            this.container = document.querySelector('#parks-container')
            this.container.addEventListener('click', this.visitedCard)
        }

        collectVisits() {
            this.adapter.fetchVisits()
                .then(visits => visits.forEach(v => this.memoizedVisits.push(new Visit(v))))
                // .then(() => this.renderVisits())
        }
    
    
    }