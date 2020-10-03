const searchLocation = () => {
  const searchButton = document.querySelector("#search_store_button");
  
  if (searchButton) {
    searchButton.addEventListener("click", (event) => {
      event.preventDefault();
      navigator.geolocation.getCurrentPosition((position) => {
        
      });
    });
  }
};

export { searchLocation };