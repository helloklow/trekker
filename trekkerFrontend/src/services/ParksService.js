// Communicates with API, fetches parks and parses to JSON
class ParksService {
    constructor() {
        this.url = 'http://localhost:3000/parks'
    }

    fetchParks() {
        return fetch(this.url)
            .then(resp => resp.json())
    }

}