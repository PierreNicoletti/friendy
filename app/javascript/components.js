const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-friendy');
  console.log(navbar)
  if (navbar) {
    window.addEventListener('scroll', () => {
      console.log(`scrollY : ${window.scrollY}`)
      console.log(`innerHeight : ${window.innerHeight}`)
      if (window.scrollY >= 100 && window.scrollY < 200 ) {
        navbar.classList.remove('navbar-friendy-transparent-2');
        navbar.classList.add('navbar-friendy-transparent-1');
      } else if (window.scrollY >= 200) {
        navbar.classList.add('navbar-friendy-transparent-2');
      } else {
        navbar.classList.remove('navbar-friendy-transparent-1');
        navbar.classList.remove('navbar-friendy-transparent-2');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
