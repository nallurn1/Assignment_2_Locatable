const { environment } = require('@rails/webpacker')

const webpack = require("webpack")

//Adding Bootstrap popperjs
environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery',
    JQuery: 'jquery',
    Popper: ['popper.js', 'default']
}))

module.exports = environment
