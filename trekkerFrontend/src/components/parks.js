class Parks {
    constructor() {
        this.adapter = new ParksAdapter()
        this.memoizedParks = []
        this.collectParks()
        this.initBindingsAndEvents()
    }

    initBindingsAndEvents() {
        this.container = document.querySelector('#parks-container')
        this.parkSelector = document.querySelector('#input-park')
        this.container.onmouseover = this.container.onmouseout = this.toggleSummary
    }

    collectParks() {
        this.adapter.getParks()
            .then(parks => parks.forEach(p => this.memoizedParks.push(new Park(p))))
            .then(() => this.renderParksAndOptions())
    }

    renderParksAndOptions() {
        this.container.innerHTML = this.memoizedParks.map(p => p.parkHTML()).join('')
        const options = this.memoizedParks.map(p => p.name)
        for (let i=0; i < options.length; i++) {
            let opt = options[i]
            let el = document.createElement('option')
            el.innerText = opt
            el.value = i+1
            this.parkSelector.appendChild(el)
        }
    }

    // Figure out how to move to park.js? Set up callback fn and pass in e.target?
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
