// Communicates with API, fetches visits and parses to JSON
class VisitsAdapter {
    constructor() {
        this.url = 'http://localhost:3000/visits'
    }

    fetchVisits() {
        return fetch(this.url)
            .then(resp => resp.json())
    }

}