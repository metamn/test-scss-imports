# Testing SCSS Imports

It seems the SASS compiler is not the most efficient.
The compiled CSS file size is growing exponentially.

## Imports

No matter if you have a global / globbing / one time import of all mixins, or, you import them in individual files like in React &mdash; the final, minified CSS file size will be the same.

Data:

- global imports CSS file size: 199K https://github.com/metamn/test-scss-imports
- local imports CSS file size: 467K https://github.com/metamn/test-scss-imports-local
- with minification, both CSS file sizes: 148K

## Growth / Size

SASS ads the same amount of code over and over again to the final CSS file without any optimization.

Data:

- Initial state (just framework): 12K
- Homepage (article index) added, 13 article specific mixins added: 63K
- Single article page added, no specific mixins added, just the existing 13 article specific mixins re-added: 90K
- Single page + Homepage, no specific mixins added, just the existing 13 article specific mixins re-added: 148K

The same 13 article specific mixins are added all over again to the final CSS file. Like:

```SCSS

// Initial state: 12K

.home {
	@include 13mixins; // 63K, + 40K
}

.single-article {
	@include 13mixins; // 90K, + 30K
}

.single-article .article-list {
	@include 13mixins; // 140K, + 50k
}
```

Instead we should have something like:

```SCSS
.home,
.single-article,
.single-article .article-list {
	@include 1313mixins; // ~40K added only once
}
```

This problem was documented elsewhere too. It seems it is a global, SASS specific problem.

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

3. Article template

- Added code/pages/delivering-the-message
- And the corresponing template: code/framework/templates/article
- CSS file size: 90K

```
cs@cs-swift:~/work/test-scss-imports$ ls -alh production/assets/styles/site.min.css
-rw-r--r-- 1 cs cs 90K Apr 24 18:40 production/assets/styles/site.min.css
```

4. Article template + homepage content

- Homepage content and styling added to Article template
- CSS file size: 148K

```
cs@cs-swift:~/work/test-scss-imports$ ls -alh production/assets/styles/site.min.css
-rw-r--r-- 1 cs cs 148K Apr 24 18:46 production/assets/styles/site.min.css
```

5. Removing minification:

- CSS file size: 199K

```
cs@cs-swift:~/work/test-scss-imports$ ls -alh production/assets/styles/site.min.css
-rw-r--r-- 1 cs cs 199K Apr 24 18:58 production/assets/styles/site.min.css
```
