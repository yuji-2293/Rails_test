module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],

  daisyui: {
    themes: [
      "light",
      "night",
      "winter"
    ],
    darkTheme: false,
  },
  theme: {
    extend: {
      keyframes: {
        float_up: {
          '0%, 100%': { transform: 'translateY(0)' },
          '50%': { transform: 'translateY(-20px)' },
        },
         sink_down: {
          '0%, 100%': { transform: 'translateY(0)' },
          '50%': { transform: 'translateY(20px)' },
        },
         button_up: {
          '0%, 100%': { transform: 'translateY(0)' },
          '50%': { transform: 'translateY(20px)' },
        },
       
      },
      animation: {
        float_up: 'float_up 0.5s ease-in-out infinite',
        sink_down: 'sink_down 1s ease-in-out infinite',
        button_up: 'button_up 2s ease-in-out infinite'
      },

    },
  },

  plugins: [
    require('daisyui'), require('@tailwindcss/typography')

  ],

}
