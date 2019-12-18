// Communicates with API, fetches visits and parses to JSON
class VisitsAdapter {
    constructor() {
        this.url = 'http://localhost:3000/visits'
    }

    getVisits() {
        return fetch(this.url)
            .then(resp => resp.json())
    }

    async postVisit(params) {
        return fetch(this.url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: JSON.stringify({
                date: params[0],
                notes: params[1],
                park_id: params[2]
            })
        })
            .then(resp => resp.json())
    }

}