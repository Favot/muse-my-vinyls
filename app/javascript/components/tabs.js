const displayTab = () => {
  // console.log(event.target.id);

if (event.target.id == 'pending-tab') {

  // Remove .show.active on all tabs
  const hiddenATab = document.querySelector('#accepted');
  hiddenATab.classList.remove("show");
  hiddenATab.classList.remove("active");

  const hiddenDTab = document.querySelector('#declined');
  hiddenDTab.classList.remove("show");
  hiddenDTab.classList.remove("active");

  // Add .show.active on clicked tab
  const hiddenPendingTab = document.querySelector('#pending');
  hiddenPendingTab.classList.add("show");
  hiddenPendingTab.classList.add("active");
}

if (event.target.id == 'accepted-tab') {
  // Remove .show.active on all tabs
  const hiddenPenTab = document.querySelector('#pending');
  hiddenPenTab.classList.remove("show");
  hiddenPenTab.classList.remove("active");

  const hiddenDTab = document.querySelector('#declined');
  hiddenDTab.classList.remove("show");
  hiddenDTab.classList.remove("active");

  // Add .show.active on clicked tab
  const hiddenPendingTab = document.querySelector('#accepted');
  hiddenPendingTab.classList.add("show");
  hiddenPendingTab.classList.add("active");
}

if (event.target.id == 'declined-tab') {
  // Remove .show.active on all tabs
  const hiddenPenTab = document.querySelector('#pending');
  hiddenPenTab.classList.remove("show");
  hiddenPenTab.classList.remove("active");

  const hiddenATab = document.querySelector('#accepted');
  hiddenATab.classList.remove("show");
  hiddenATab.classList.remove("active");

  // Add .show.active on clicked tab
  const hiddenPendingTab = document.querySelector('#declined');
  hiddenPendingTab.classList.add("show");
  hiddenPendingTab.classList.add("active");
}


}

export {displayTab}
