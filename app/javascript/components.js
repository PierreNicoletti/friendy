const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-friendy');
  console.log(navbar)
  if (navbar) {
    window.addEventListener('scroll', () => {
      console.log(`scrollY : ${window.scrollY}`)
      console.log(`innerHeight : ${window.innerHeight}`)
      if (window.scrollY >= window.innerHeight / 10) {
        navbar.classList.add('navbar-friendy-transparent');
      } else {
        navbar.classList.remove('navbar-friendy-transparent');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
