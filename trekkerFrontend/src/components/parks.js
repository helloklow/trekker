// Parks constructor sets up creation of parks collection
// Invokes collectParks, which uses ParksService to fetch parks JSON and push to array
class Parks {
    constructor() {
        this.memoizedParks = []
        this.service = new ParksService()
        this.initBindAndEvents()
        this.collectParks()
    }

    // Cache DOM elements
    initBindAndEvents() {
        this.container = document.querySelector('#parks-container')
        this.container.onmouseover = this.container.onmouseout = this.toggleSummary
    }

    collectParks() {
        this.service.fetchParks()
            .then(parks => parks.forEach(p => this.memoizedParks.push(new Park(p))))
            .then(() => this.renderParks())
    }

    renderParks() {
        this.container.innerHTML = this.memoizedParks.map(p => p.parkHTML()).join('')
    }

    // Figure out how to move to park.js?
    toggleSummary(e) {
        if (e.target.dataset.action === 'toggle-summary') {
            const img = e.target
            const summary = e.target.parentNode.children[1]
            if (e.type === 'mouseover') {
                img.style.visibility = 'hidden'
                summary.style.visibility = 'visible'
            } else if (e.type === 'mouseout') {
                img.style.visibility = 'visible'
                summary.style.visibility = 'hidden'
            }
        }
    }

}
