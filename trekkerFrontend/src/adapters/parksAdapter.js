class ParksAdapter {
    constructor() {
        this.url = 'http://localhost:3000/api/v1/parks'
    }

    getParks() {
        return fetch(this.url)
            .then(resp => resp.json())
    }

}