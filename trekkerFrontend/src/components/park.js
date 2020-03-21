class Park {
    constructor(park) {
        this.parkVisits = park.visits
        this.id = park.id
        this.name = park.name
        this.location = park.location
        this.est = park.est
        this.summary = park.summary
        this.pic = park.pic
    }

    parkHTML() {
        return (`
            <div id='park-card' class='park-card' data-id='${this.id}'>
                <h4 class='center-text'>${this.name}</h4>
                <p class='small-text'>${this.location}, est. ${this.est}</p>
                <div id='park-details' data-id='${this.id}'>
                    <img class='park-pic' data-name='${this.name}' data-action='toggle-summary' src='${this.pic}'>
                    <p class='park-summary' data-name='${this.name}' data-action='toggle-summary'>${this.summary}</p>
                </div>
                                
            </div>
        `)
    }

    // <button onclick='${this.visitClick}' id='show-visits-btn' data-id='${this.id}'>Visits</button>  

    visitClick(e) {
        e.preventDefault(e)
        debugger
        console.log('hello')
    }

}