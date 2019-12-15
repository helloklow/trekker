// Communicates with API, fetches parks and parses to JSON
class ParksAdapter {
    constructor() {
        this.url = 'http://localhost:3000/parks'
    }

    getParks() {
        return fetch(this.url)
            .then(resp => resp.json())
    }

}