import ReviewsCard from "./ReviewsCard";

function Reviews({reviews }) {
    return (
        <div>
            <h1> Reviews</h1>
            {
            reviews.map(review => (
              <ReviewsCard key={reviews.id} review={review}/>
            ))
            }
        </div>
    )
}

export default Reviews;