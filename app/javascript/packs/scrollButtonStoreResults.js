export const scrollButtonStoreResults = () => {
  console.log("Script Fired")
  const scrollTrigger = document.querySelector(".scroll-button");
  if ( scrollTrigger ) {

    // target container and store in a variable
    const scrollStores = document.querySelector(".scroll-store-container")
    scrollTrigger.addEventListener("click", (event) => {
      // displays DOMTokenList in console
      console.log(scrollStores.classList, scrollTrigger.classList)
      // target container class is collapsed or expanded
      // changes <div class="scroll-store-container collapsed text-center mt-3 mb-2"> when clicked
      if (Array.from(scrollStores.classList).includes("expanded")) {
        scrollStores.classList.remove("expanded")
        scrollStores.classList.add("collapsed")
      // if target container is collapsed we want to remove the class collapsed and add the class expanded
      } else {
        scrollStores.classList.remove("collapsed")
        scrollStores.classList.add("expanded")
      }
    });
  }
}
