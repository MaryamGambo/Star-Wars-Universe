// main.js

document.addEventListener('DOMContentLoaded', () => {
  // Get all "navbar-burger" elements
  const navbarBurgers = Array.prototype.slice.call(
    document.querySelectorAll('.navbar-burger'),
    0
  );

  // Check if there are any navbar burgers
  if (navbarBurgers.length > 0) {
    // Add a click event listener to each navbar burger
    navbarBurgers.forEach((navbarBurger) => {
      navbarBurger.addEventListener('click', () => {
        // Get the target menu from the data-target attribute
        const target = navbarBurger.dataset.target;
        const targetMenu = document.getElementById(target);

        // Toggle the "is-active" class on both the navbar-burger and the target menu
        navbarBurger.classList.toggle('is-active');
        targetMenu.classList.toggle('is-active');
      });
    });
  }
});
