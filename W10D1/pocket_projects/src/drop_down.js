
const dogs = {
  "Corgi": "https://www.akc.org/dog-breeds/cardigan-welsh-corgi/",
  "Australian Shepherd": "https://www.akc.org/dog-breeds/australian-shepherd/",
  "Affenpinscher": "https://www.akc.org/dog-breeds/affenpinscher/",
  "American Staffordshire Terrier": "https://www.akc.org/dog-breeds/american-staffordshire-terrier/",
  "Tosa": "https://www.akc.org/dog-breeds/tosa/",
  "Labrador Retriever": "https://www.akc.org/dog-breeds/labrador-retriever/",
  "French Bulldog": "https://www.akc.org/dog-breeds/french-bulldog/" 
};

function dogLinkCreator (dogs) {
  const doggies = Object.keys(dogs);
  // console.log(doggies);

  const dogLinks = [];

  doggies.forEach(dog => {
    const link = document.createElement('a');
    const liEle = document.createElement('li');

    link.innerHTML = dog;
    link.href = dogs[dog];

    liEle.classList = "dog-link";
    liEle.appendChild(link);
    dogLinks.push(liEle);
  });  
  return dogLinks;
};


const attachDogLinks = () => {
  const dogLinks = dogLinkCreator(dogs);
  const dropDown = document.querySelector('.drop-down-dog-list');
  dogLinks.forEach(link => {
    dropDown.appendChild(link);
  });
  
};

const handleEnter = () => {
  const links = document.querySelectorAll(".dog-link")
  links.forEach(link => link.classList.add('open'));
};

const handleLeave = () => {
  const links = document.querySelectorAll(".dog-link")
  links.forEach(link => link.classList.remove('open'));
};

const nav = document.querySelector(".drop-down-dog-nav")
nav.addEventListener('mouseenter', handleEnter);
nav.addEventListener('mouseleave', handleLeave);
attachDogLinks();