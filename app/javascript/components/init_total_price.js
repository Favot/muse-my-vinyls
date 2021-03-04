const computeTotalPrice = (startDateInput, endDateInput) => {
  if (startDateInput != '' && endDateInput != '') {
    const endDate = new Date(endDateInput.value);
    const startDate = new Date(startDateInput.value);
    const days = (endDate - startDate) / 86400000

    const priceElement = document.getElementById("total-price");
    const pricePerDay  = Number.parseInt(priceElement.dataset.pricePerDay, 10);
    const totalPrice = (days * pricePerDay);

    if (totalPrice > 0) {
      priceElement.value = `Resquest for ${totalPrice}€ ?`;
    }
  }
};

const initTotalPrice = () => {
  const startDateInput = document.getElementById("renting_start_date")
  const endDateInput = document.getElementById("renting_end_date")

  if (startDateInput && endDateInput) {
    startDateInput.addEventListener("change", () => {

      computeTotalPrice(startDateInput, endDateInput);
    })
    endDateInput.addEventListener("change", () => {
      computeTotalPrice(startDateInput, endDateInput);

    })
  }
}

export {initTotalPrice}







