let bandeAnnonces = document.querySelectorAll(".bande_annonce");
let showTrailler = document.querySelectorAll(".showBandeAnnonce");
let hideTrailler = document.querySelectorAll(".hideBandeAnnonce");
let film_image = document.querySelectorAll(".image");

console.log(bandeAnnonces);
// show trailler when i click on "voir la bande annonce" and hide when i click on "cacher la bande annonce"
for (let i = 0; i < showTrailler.length; i++) {

showTrailler[i].addEventListener("click", function(showTrail){
    bandeAnnonces[i].style.display = "block";
    showTrailler[i].style.display = "none";
    hideTrailler[i].style.display = "block";
    film_image[i].style.display = "none";
  })
}

for (let j = 0; j < showTrailler.length; j++) {
  hideTrailler[j].addEventListener("click", function(hideTrail){
    bandeAnnonces[j].style.display = "none";
    showTrailler[j].style.display = "block";
    hideTrailler[j].style.display = "none";
    film_image[j].style.display = "block";
  })
}

