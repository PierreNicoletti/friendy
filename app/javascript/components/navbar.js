const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-friendy');
  if (navbar) {
    window.addEventListener('scroll', () => {
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
