# Testing SCSS Imports

## Defaults

Global SCSS imports with globbing:

```SCSS
@import 'framework/behavior/**/*.scss';
@import 'framework/structure/**/*.scss';
@import 'framework/design/typography/scale/scale.scss';
@import 'framework/design/**/*.scss';
@import 'project/**/*.scss';
@import 'framework/templates/**/*.scss';
@import 'pages/**/*.scss';
```

## CSS file size

1. Barebones

- empty `project/`
- `pages/home` has just a "Test" inside
- CSS file size: 12K

```
cs@cs-swift:~/work/test-scss-imports$ ls -alh production/assets/styles/site.min.css
-rw-r--r-- 1 cs cs 12K Apr 24 16:33 production/assets/styles/site.min.css
```

2. Articles added and styled

- `project` has 13 mixins
- `pages/home` has 3 thumbs and 3 full articles
- CSS file size: 63K

```
cs@cs-swift:~/work/test-scss-imports$ ls -alh production/assets/styles/site.min.css
-rw-r--r-- 1 cs cs 63K Apr 24 17:23 production/assets/styles/site.min.css
```
