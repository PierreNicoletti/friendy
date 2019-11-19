import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find new friends and improve your social life!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
