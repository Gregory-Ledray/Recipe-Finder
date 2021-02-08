//= require jquery3


// Because in Rails v6 Sprockets no longer processes JavaScript and instead Webpack does that,
// It is not quite as easy to include the Javascript.


// I tried copying the files into the assets/javascripts folder and referencing them in the 'require'.
// Unfortunately this didn't work. Instead I am using the Bootstrap CDN and directly referencing it in application.html.erb