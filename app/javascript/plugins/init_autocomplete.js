import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('friend_address');
  if (addressInput) {
    places({ container: addressInput });
  }
  const addressUserInput = document.getElementById('user_address');
  if (addressUserInput) {
    places({ container: addressUserInput });
  }
};

export { initAutocomplete };
