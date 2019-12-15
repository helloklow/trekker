// Establish individual instances of park while iterating over memoizedParks
class Park {
    constructor(parkJSON) {
        this.id = parkJSON.id
        this.name = parkJSON.name
        this.location = parkJSON.location
        this.est = parkJSON.est
        this.summary = parkJSON.summary
        this.pic = parkJSON.pic
    }

    parkHTML() { // remove data name?
        return `
            <div id='park-card' class='park-card'>
                <h4 class='center-text'>${this.name}</h4>
                <p class='small-text'>${this.location}, est. ${this.est}</p>
                <div id='park-details'> 
                    <img class='park-pic' data-name='${this.name}' data-action='toggle-summary' src='${this.pic}'>
                    <p class='park-summary' data-name='${this.name}' data-action='toggle-summary'>${this.summary}</p>
                    <button class='visit-icon' data-name='${this.name}' data-action='visit-icon' alt='Visit'></button>
                    <button class='remove-btn' data-name='${this.name}' data-action='remove-btn' alt='Remove'></button>
                </div>                  
            </div>`
    }


}