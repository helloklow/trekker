// Establish individual instances of visit while iterating over memoizedVisits
class Visit {
    constructor(visitJSON) {
        this.action = visitJSON.action
        this.park = visitJSON.park.id
        this.parkName = visitJSON.park.name // for testing only -> just use park id (above)
        this.userName = visitJSON.user.username // for testing only -> update to user id
        // this.user = visitJSON.user.id
    }


}