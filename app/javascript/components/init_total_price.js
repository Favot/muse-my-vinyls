const initTotalPrice = () => {
  const startDateInput = document.getElementById("renting_start_date")
  const endDateInput = document.getElementById("renting_end_date")

  if (startDateInput && endDateInput) {
    startDateInput.addEventListener("change", () => {
      console.log("coucou")
    })
  }
}

export {initTotalPrice}

// check if startDateInput and endDateInput have value
// if true convert value in date object
// get difference in days between 2 dates
//

