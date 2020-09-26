export const newProjectPopupScript = () => {
  console.log("Script Fired")
// target + icon inside DOM store it in variable called modalTrigger (querySelector)
const modalTrigger = document.querySelector("#plus-icon");
// create if/else statement that checks if modalTrigger variable has content inside of it
  if ( modalTrigger ) {
    console.log( modalTrigger, "modalTrigger")
  // target popup modal in the DOM and store it in a variable called Modal
    const modal = document.querySelector('.popup-overlay');
    // (inside if else statement)add event listener to the modalTrigger on user click
    modalTrigger.addEventListener("click", (event) => {
      console.log(modal.classList)
      modal.classList.remove('modal-hidden');
    })
  }
}
