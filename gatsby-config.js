/**
 * Configure your Gatsby site with this file.
 *
 * See: https://www.gatsbyjs.org/docs/gatsby-config/
 */

module.exports = {
  plugins: [
    "gatsby-plugin-purescript",
    {
      resolve: "gatsby-plugin-postcss",
      options: {
        postCssPlugins: [
          require("tailwindcss")("./tailwind.config.js"),
          require("autoprefixer")
        ]
      }
    },
    {
      resolve: "gatsby-plugin-purgecss",
      options: {
        content: ["gatsby-ssr.js", "app/**/*.purs"],
        tailwind: true,
        purgeOnly: ["styles/styles.css"]
      }
    },
  ]
};
