/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
    "../../content/**/*.{html,md}",
    "../../layouts/**/*.html",
    "./layouts/**/*.html",
    "./content/**/*.{html,md}",
    ],
  theme: {
    extend: {},
  },
  plugins: [],
  corePlugins: {
    preflight: false,
  },
}

