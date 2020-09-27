$(document).ready(function(){
const selected = document.querySelector(".selected");
const optionsContainer = document.querySelector(".options-container");

const optionsList = document.querySelectorAll(".option");
if(selected){
  selected.addEventListener("click", () => {
    optionsContainer.classList.toggle("active");
  });

  optionsList.forEach(o => {
    o.addEventListener("click", () => {
      selected.innerHTML = o.querySelector("label").innerHTML;
      optionsContainer.classList.remove("active");
      location.href = "/mechanics?location="+o.querySelector("label").innerHTML;
    });
  });
}
});