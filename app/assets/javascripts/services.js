$(document).ready(function(){
const serviceitems = document.querySelectorAll('.service-item-wrapper')
    serviceitems.forEach(serviceitem => {
        serviceitem.addEventListener('mouseover', () => {
            console.log(serviceitem.childNodes[1].classList);
            serviceitem.childNodes[1].classList.add('img-darken')
        })

        serviceitem.addEventListener('mouseout', () => {
            console.log(serviceitem.childNodes[1].classList);
            serviceitem.childNodes[1].classList.remove('img-darken')
        })
    })
});