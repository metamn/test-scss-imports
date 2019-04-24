{% extends '../../framework/templates/default/default.html.swig' %}
{% block content %}


<div class="thumbs">

<article class="article article-thumb article--delivering-the-message">
<time class="article__date">Aug 8, 15</time>
<h3 class="article__title">
<a class="link" href="http://localhost:3000/delivering-the-message" title="Delivering The Message">Delivering The Message</a></h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">design</span></nav><aside class="article__excerpt"><h3>Excerpt</h3><div class="text">How to delight visitors yet deliver business goals.</div></aside></article>

<article class="article article-thumb">
  	<time class="article__date">Feb 5, 19</time>
	<h3 class="article__title">
	<a class="link" href="http://metamn.io/beat/the-designer-who-doesnt-code" title="The designer who doesn't code">
	The designer who doesn't code
	</a>
	</h3>
	<nav class="article__categories">
	<h3 class="title">Categories</h3><span class="categories">design, code</span></nav>
	<aside class="article__excerpt"><h3>Excerpt</h3><div class="text">Blows all, and you don't even know</div></aside>
</article>

<article class="article article-thumb"><time class="article__date">Nov 11, 18</time><h3 class="article__title"><a class="link" href="http://metamn.io/beat/democratization-of-design" title="Democratization of design">Democratization of design</a></h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">design, trend</span></nav><aside class="article__excerpt"><h3>Excerpt</h3><div class="text">People as designers</div></aside></article>
<article class="article article-thumb"><time class="article__date">Nov 21, 17</time><h3 class="article__title"><a class="link" href="http://metamn.io/beat/blame-the-algorithm" title="Blame The Algorithm">Blame The Algorithm</a></h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">trend, code</span></nav><aside class="article__excerpt"><h3>Excerpt</h3><div class="text">From people to machine</div></aside></article>

<article class="article article-thumb"><time class="article__date">Oct 20, 18</time><h3 class="article__title"><a class="link" href="http://metamn.io/beat/2018" title="2018">2018</a></h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">trend</span></nav><aside class="article__excerpt"><h3>Excerpt</h3><div class="text">A retrospective • What's next?</div></aside></article>
<article class="article article-thumb"><time class="article__date">Jul 16, 17</time><h3 class="article__title"><a class="link" href="http://metamn.io/beat/unicorn-forever" title="Unicorn forever">Unicorn forever</a></h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">trend</span></nav><aside class="article__excerpt"><h3>Excerpt</h3><div class="text">A solo designer and developer's plan for the future</div></aside></article>
<article class="article article-thumb"><time class="article__date">May 15, 15</time><h3 class="article__title"><a class="link" href="http://metamn.io/beat/creating-a-styleguide-with-gulp" title="Creating A Styleguide With Gulp">Creating A Styleguide With Gulp</a></h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">code</span></nav><aside class="article__excerpt"><h3>Excerpt</h3><div class="text">Creating a component layer which both our user-facing applications and our Style Guide can work from.</div></aside></article>
<article class="article article-thumb"><time class="article__date">Aug 19, 15</time><h3 class="article__title"><a class="link" href="http://metamn.io/beat/no-more-problems-on-the-front-end" title="No More Problems On The Front End">No More Problems On The Front End</a></h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">code</span></nav><aside class="article__excerpt"><h3>Excerpt</h3><div class="text">The last decade was hard with problems for front-end developers. Cross-browser compatibility, naming and structuring code, and poor performance. Now all these are solved.</div></aside></article>


</div>

<div class="fulls">

<article class="article article-full"><h3 class="article__title"><a class="link" href="http://metamn.io/beat/creating-a-styleguide-with-gulp" title="Creating A Styleguide With Gulp">Creating A Styleguide With Gulp</a></h3><div class="article__content"><p>Styleguides have been around for a while, and like web components, they didn’t went mainstream.</p><p>Why? There is no such thing like a universal plugin to create a styleguide, and, there is no consensus on what goes into a styleguide.</p><p>Everybody rolls her own. The most well known styleguides today are Google’s Material Design <sup id="footnote--1"><a href="#footnotes--1">1</a></sup>, Lonely Planet’s Rizzo <sup id="footnote--2"><a href="#footnotes--2">2</a></sup>, and Pattern Lab / Atomic Design <sup id="footnote--3"><a href="#footnotes--3">3</a></sup> . All unique in design, content and the tools behind creating them.</p><p>If you check out <a href="http://styleguides.io/">styleguides.io</a> you'll find dozens of tools &amp; ways to create a styleguide. It's overhelming. You don't know where to start, which one to choose to have a future-proof solution.</p><p>Never mind. This article will help you understand how styleguides work and how you can roll your own with a small effort.</p><h2 id="styleguide-for-whom-">Styleguide for whom?</h2><p>The first question everybody should ask is who needs a styleguide and why.</p><p>Project owners might need it to be sure the design and development are in sync, everybody speaks the same language, new team members can catch up instantly, and the whole project is like to be done by a single person.</p><p>Designers might need it to be able to make design decisions on a granular level. They can overview the whole picture or the smallest details.</p><p>Developers might need it to have a framework easy to learn and participate where they can write error-free code.</p><p>A <em>complete</em> styleguide covers all above scenarios and provides:</p><ol><li><p>A styleguide living together with the associated website. Any change in the site design is automatically updated in the styleguide.</p></li><li><p>A decision making tool. All components and groups of components building the site will have their own styleguide entry. Designers will be able to overview a part of the user interface or a whole segment of it.</p></li><li><p>Error-free code. Components living in multiple environments — the website itself and in the various styleguide entries — are more error-proof than those <em>made to work</em> in a single context.</p></li></ol><p>A few tools offer a complete styleguide and if they do their solution is bound to a specific platform — Ruby On Rails for Lonely Planet's Rizzo, PHP for Pattern Lab — or to a specific outcome — Google's Material Design is likely to produce the same experience for any website.</p><p>What if to have a platform independent complete styleguide? One created with front-end tools and easily attachable to any back-end? You can have it more easily than you might thought.</p><h2 id="styleguide-architecture">Styleguide architecture</h2><p>The theory behind maintainable styleguides is <a href="http://ianfeather.co.uk/a-maintainable-style-guide/">Component API</a> defined by Ian Feather of Rizzo.</p><blockquote><p>... creating a component layer which both our user-facing applications and our Style Guide can work from.</p></blockquote><p>In other words there is a need for a database to store all user interface parameters. Both the site and the styleguide uses this database to build the interface. Changes go to this database and are automatically propagated to both the site and the styleguide.</p><figure class="figure illustration figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/styleguide-architecture_desktop.png, http://metamn.io/beat/assets/images/styleguide-architecture_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/styleguide-architecture_laptop.png, http://metamn.io/beat/assets/images/styleguide-architecture_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/styleguide-architecture_tablet.png, http://metamn.io/beat/assets/images/styleguide-architecture_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/styleguide-architecture_mobile.png, http://metamn.io/beat/assets/images/styleguide-architecture_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/styleguide-architecture_laptop.png" alt="Styleguide architecture"></picture><figcaption class="figcaption figcaption--from-title">Styleguide architecture</figcaption></figure><p>Since the styleguide architecture is so simple we can implement with our existing front-end tools. The database can be a JSON file, Gulp / Grunt / etc. can be the glue engine to sync the database with the front-end code.</p><figure class="figure illustration figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/styleguide-details_desktop.png, http://metamn.io/beat/assets/images/styleguide-details_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/styleguide-details_laptop.png, http://metamn.io/beat/assets/images/styleguide-details_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/styleguide-details-portrait_tablet.png, http://metamn.io/beat/assets/images/styleguide-details-portrait_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/styleguide-details-portrait_mobile.png, http://metamn.io/beat/assets/images/styleguide-details-portrait_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/styleguide-details_laptop.png" alt="Styleguide architecture details"></picture><figcaption class="figcaption figcaption--from-title">Styleguide architecture details</figcaption></figure><p>The rules are simple:</p><ol><li><p>Every user interface definition goes into a JSON file</p></li><li><p>Gulp creates HTML and CSS files from the database both for the site and the styleguide</p></li><li><p>The HTML and CSS files for the site are included also in the styleguide. This makes the styleguide stay in sync with the website.</p></li></ol><h2 id="a-concrete-example">A concrete example</h2><p>Let's take a look at how to define the colors of a site and sync with the styleguide.</p><p>First we will need a JSON file to define the colors:</p><script src="https://gist.github.com/metamn/ef8d6cf9b49b97edfded.js"></script><link rel="stylesheet" href="https://github.githubassets.com/assets/gist-embed-a9a1cf2ca01efd362bfa52312712ae94.css"><div id="gist22444558" class="gist">
    <div class="gist-file">
      <div class="gist-data">
        <div class="js-gist-file-update-container js-task-list-container file-box">
  <div id="file-colors-scss-json" class="file">


  <div itemprop="text" class="Box-body p-0 blob-wrapper data type-json ">

<table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tbody><tr>
        <td id="file-colors-scss-json-L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="file-colors-scss-json-LC1" class="blob-code blob-code-inner js-file-line">{</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="file-colors-scss-json-LC2" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">"</span>colors<span class="pl-pds">"</span></span>: [</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="file-colors-scss-json-LC3" class="blob-code blob-code-inner js-file-line">    {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="file-colors-scss-json-LC4" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>white<span class="pl-pds">"</span></span>,</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="file-colors-scss-json-LC5" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>value<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>#f1f1f1<span class="pl-pds">"</span></span>,</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="file-colors-scss-json-LC6" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>The background color<span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="file-colors-scss-json-LC7" class="blob-code blob-code-inner js-file-line">    },</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="file-colors-scss-json-LC8" class="blob-code blob-code-inner js-file-line">    {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="file-colors-scss-json-LC9" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>black<span class="pl-pds">"</span></span>,</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="file-colors-scss-json-LC10" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>value<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>#003A40<span class="pl-pds">"</span></span>,</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="file-colors-scss-json-LC11" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>The text color<span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="file-colors-scss-json-LC12" class="blob-code blob-code-inner js-file-line">    },</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="file-colors-scss-json-LC13" class="blob-code blob-code-inner js-file-line">    {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="file-colors-scss-json-LC14" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>blue<span class="pl-pds">"</span></span>,</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="file-colors-scss-json-LC15" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>value<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>rgba(0, 0, 255, 1)<span class="pl-pds">"</span></span>,</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="file-colors-scss-json-LC16" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>The highlight color<span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="file-colors-scss-json-LC17" class="blob-code blob-code-inner js-file-line">    },</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="file-colors-scss-json-LC18" class="blob-code blob-code-inner js-file-line">    {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="file-colors-scss-json-LC19" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>thumbblue<span class="pl-pds">"</span></span>,</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="file-colors-scss-json-LC20" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>value<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>rgba(38, 38, 255, 1)<span class="pl-pds">"</span></span>,</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="file-colors-scss-json-LC21" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>A lighter highlight color<span class="pl-pds">"</span></span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="file-colors-scss-json-LC22" class="blob-code blob-code-inner js-file-line">    }</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="file-colors-scss-json-LC23" class="blob-code blob-code-inner js-file-line">  ]</td>
      </tr>
      <tr>
        <td id="file-colors-scss-json-L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="file-colors-scss-json-LC24" class="blob-code blob-code-inner js-file-line">}</td>
      </tr>
</tbody></table>


  </div>

  </div>
</div>

      </div>
      <div class="gist-meta">
        <a href="https://gist.github.com/metamn/ef8d6cf9b49b97edfded/raw/a2e9480d4a629ed73676fe8c3a75e643504905ae/colors.scss.json" style="float:right">view raw</a>
        <a href="https://gist.github.com/metamn/ef8d6cf9b49b97edfded#file-colors-scss-json">colors.scss.json</a>
        hosted with ❤ by <a href="https://github.com">GitHub</a>
      </div>
    </div>
</div>
<p>Then we will have to covert this data into CSS using Gulp and Swig, a tool coming with Gulp and used to generate HTML, CSS or JS.</p><script src="https://gist.github.com/metamn/ebdf8f2bf940705ea89d.js"></script><link rel="stylesheet" href="https://github.githubassets.com/assets/gist-embed-a9a1cf2ca01efd362bfa52312712ae94.css"><div id="gist22445102" class="gist">
    <div class="gist-file">
      <div class="gist-data">
        <div class="js-gist-file-update-container js-task-list-container file-box">
  <div id="file-colors-scss-swig" class="file">


  <div itemprop="text" class="Box-body p-0 blob-wrapper data type-text ">

<table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tbody><tr>
        <td id="file-colors-scss-swig-L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="file-colors-scss-swig-LC1" class="blob-code blob-code-inner js-file-line">{% for color in colors %}</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="file-colors-scss-swig-LC2" class="blob-code blob-code-inner js-file-line">// {{ color.description }}</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="file-colors-scss-swig-LC3" class="blob-code blob-code-inner js-file-line">${{ color.name }}: {{ color.value }};</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="file-colors-scss-swig-LC4" class="blob-code blob-code-inner js-file-line">{% endfor %}</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="file-colors-scss-swig-LC5" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="file-colors-scss-swig-LC6" class="blob-code blob-code-inner js-file-line">// Color combinations. Colors are not used standalone but in pairs</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="file-colors-scss-swig-LC7" class="blob-code blob-code-inner js-file-line">@mixin colors($name) {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="file-colors-scss-swig-LC8" class="blob-code blob-code-inner js-file-line">{% for pair in color_pairs %}</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="file-colors-scss-swig-LC9" class="blob-code blob-code-inner js-file-line">  @if ($name == '{{ pair.name }}') {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="file-colors-scss-swig-LC10" class="blob-code blob-code-inner js-file-line">    {% for property in pair.properties %}{{ property.name }}: {{ property.value }};</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="file-colors-scss-swig-LC11" class="blob-code blob-code-inner js-file-line">    {% endfor %}</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="file-colors-scss-swig-LC12" class="blob-code blob-code-inner js-file-line">  }</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="file-colors-scss-swig-LC13" class="blob-code blob-code-inner js-file-line">{% endfor %}</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="file-colors-scss-swig-LC14" class="blob-code blob-code-inner js-file-line">}</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="file-colors-scss-swig-LC15" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="file-colors-scss-swig-LC16" class="blob-code blob-code-inner js-file-line">// Color classes</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="file-colors-scss-swig-LC17" class="blob-code blob-code-inner js-file-line">{% for color in colors %}</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="file-colors-scss-swig-LC18" class="blob-code blob-code-inner js-file-line">.{{ color.name }} {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="file-colors-scss-swig-LC19" class="blob-code blob-code-inner js-file-line">  background: {{ color.value }};</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="file-colors-scss-swig-LC20" class="blob-code blob-code-inner js-file-line">};</td>
      </tr>
      <tr>
        <td id="file-colors-scss-swig-L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="file-colors-scss-swig-LC21" class="blob-code blob-code-inner js-file-line">{% endfor %}</td>
      </tr>
</tbody></table>


  </div>

  </div>
</div>

      </div>
      <div class="gist-meta">
        <a href="https://gist.github.com/metamn/ebdf8f2bf940705ea89d/raw/3306f3e162bbd3cca5d5b01f74144cc4058b04f5/colors.scss.swig" style="float:right">view raw</a>
        <a href="https://gist.github.com/metamn/ebdf8f2bf940705ea89d#file-colors-scss-swig">colors.scss.swig</a>
        hosted with ❤ by <a href="https://github.com">GitHub</a>
      </div>
    </div>
</div>
<p>After conversion we will have a complete SCSS file, generated from the database, which otherwise would be written by hand by front-end developers.</p><script src="https://gist.github.com/metamn/b693076f8cf51806de7f.js"></script><link rel="stylesheet" href="https://github.githubassets.com/assets/gist-embed-a9a1cf2ca01efd362bfa52312712ae94.css"><div id="gist22445181" class="gist">
    <div class="gist-file">
      <div class="gist-data">
        <div class="js-gist-file-update-container js-task-list-container file-box">
  <div id="file-colors-scss" class="file">


  <div itemprop="text" class="Box-body p-0 blob-wrapper data type-scss ">

<table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tbody><tr>
        <td id="file-colors-scss-L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="file-colors-scss-LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c">// The background color</span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="file-colors-scss-LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">$white</span>: <span class="pl-c1">#f1f1f1</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="file-colors-scss-LC3" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="file-colors-scss-LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c">// The text color</span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="file-colors-scss-LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">$black</span>: <span class="pl-c1">#003A40</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="file-colors-scss-LC6" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="file-colors-scss-LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c">// The highlight color</span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="file-colors-scss-LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">$blue</span>: <span class="pl-c1">rgba</span>(<span class="pl-c1">0, 0, 255</span>,<span class="pl-c1"> 1</span>);</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="file-colors-scss-LC9" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="file-colors-scss-LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-c">// A lighter highlight color</span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="file-colors-scss-LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">$thumbblue</span>: <span class="pl-c1">rgba</span>(<span class="pl-c1">38, 38, 255</span>,<span class="pl-c1"> 1</span>);</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="file-colors-scss-LC12" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="file-colors-scss-LC13" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="file-colors-scss-LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-c">// Color combinations. Colors are not used standalone but in pairs</span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="file-colors-scss-LC15" class="blob-code blob-code-inner js-file-line"><span class="pl-k">@mixin</span> <span class="pl-en">colors</span>(<span class="pl-smi">$name</span>) {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="file-colors-scss-LC16" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">@if</span> (<span class="pl-smi">$name</span> == <span class="pl-s"><span class="pl-pds">'</span>white-on-blue<span class="pl-pds">'</span></span>) {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="file-colors-scss-LC17" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1"><span class="pl-c1">color</span></span>: <span class="pl-smi">$white</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="file-colors-scss-LC18" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1"><span class="pl-c1">background-color</span></span>: <span class="pl-smi">$blue</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="file-colors-scss-LC19" class="blob-code blob-code-inner js-file-line">  }</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="file-colors-scss-LC20" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="file-colors-scss-LC21" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">@if</span> (<span class="pl-smi">$name</span> == <span class="pl-s"><span class="pl-pds">'</span>white-on-thumbblue<span class="pl-pds">'</span></span>) {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="file-colors-scss-LC22" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1"><span class="pl-c1">color</span></span>: <span class="pl-smi">$white</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="file-colors-scss-LC23" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1"><span class="pl-c1">background-color</span></span>: <span class="pl-smi">$thumbblue</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="file-colors-scss-LC24" class="blob-code blob-code-inner js-file-line">  }</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="file-colors-scss-LC25" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="file-colors-scss-LC26" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">@if</span> (<span class="pl-smi">$name</span> == <span class="pl-s"><span class="pl-pds">'</span>blue-on-white<span class="pl-pds">'</span></span>) {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="file-colors-scss-LC27" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1"><span class="pl-c1">color</span></span>: <span class="pl-smi">$blue</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="file-colors-scss-LC28" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1"><span class="pl-c1">background-color</span></span>: <span class="pl-smi">$white</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="file-colors-scss-LC29" class="blob-code blob-code-inner js-file-line">  }</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="file-colors-scss-LC30" class="blob-code blob-code-inner js-file-line">}</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="file-colors-scss-LC31" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="file-colors-scss-LC32" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="file-colors-scss-LC33" class="blob-code blob-code-inner js-file-line"><span class="pl-c">// Color classes</span></td>
      </tr>
      <tr>
        <td id="file-colors-scss-L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="file-colors-scss-LC34" class="blob-code blob-code-inner js-file-line"><span class="pl-e">.white</span> {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="file-colors-scss-LC35" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1"><span class="pl-c1">background</span></span>: <span class="pl-c1">#f1f1f1</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="file-colors-scss-LC36" class="blob-code blob-code-inner js-file-line">};</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="file-colors-scss-LC37" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="file-colors-scss-LC38" class="blob-code blob-code-inner js-file-line"><span class="pl-e">.black</span> {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="file-colors-scss-LC39" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1"><span class="pl-c1">background</span></span>: <span class="pl-c1">#003A40</span>;</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="file-colors-scss-LC40" class="blob-code blob-code-inner js-file-line">};</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="file-colors-scss-LC41" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="file-colors-scss-LC42" class="blob-code blob-code-inner js-file-line"><span class="pl-e">.blue</span> {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="file-colors-scss-LC43" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1"><span class="pl-c1">background</span></span>: <span class="pl-c1">rgba</span>(<span class="pl-c1">0, 0, 255</span>,<span class="pl-c1"> 1</span>);</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="file-colors-scss-LC44" class="blob-code blob-code-inner js-file-line">};</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="file-colors-scss-LC45" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="file-colors-scss-LC46" class="blob-code blob-code-inner js-file-line"><span class="pl-e">.thumbblue</span> {</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="file-colors-scss-LC47" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1"><span class="pl-c1">background</span></span>: <span class="pl-c1">rgba</span>(<span class="pl-c1">38, 38, 255</span>,<span class="pl-c1"> 1</span>);</td>
      </tr>
      <tr>
        <td id="file-colors-scss-L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="file-colors-scss-LC48" class="blob-code blob-code-inner js-file-line">};</td>
      </tr>
</tbody></table>


  </div>

  </div>
</div>

      </div>
      <div class="gist-meta">
        <a href="https://gist.github.com/metamn/b693076f8cf51806de7f/raw/46bb2799097110c17050a86a9fff125bcbe85e74/colors.scss" style="float:right">view raw</a>
        <a href="https://gist.github.com/metamn/b693076f8cf51806de7f#file-colors-scss">colors.scss</a>
        hosted with ❤ by <a href="https://github.com">GitHub</a>
      </div>
    </div>
</div>
<p>The most important part of the process above is that we <em>define data</em> instead of <em>writing code</em>. This makes sure data will be the same both for the site and the styleguide and there won't be human mistakes.</p><p>Or put another way, the process above let's non-developers to describe user interfaces. JSON is plain English and no code. It's easy to use by anyone.</p><p>A designer can hand over a JSON file with user interface definitions and the single task of the developer will be to convert that data to HTML and CSS.</p><h3 id="use-style">Use style</h3><p>Once styles are generated we will need the HTML to display them. Like the CSS, HTML will use the JSON data to create the structure displaying styles.</p><p>The example below is the styleguide entry for colors. It's a HTML skeleton code displaying which colors are used to build the site. The code is independent of the colors it displays. Colors can change, new ones can be added or others removed. This code's outcome is only defined by JSON data.</p><script src="https://gist.github.com/metamn/dc1b4efc4e71f31abf22.js"></script><link rel="stylesheet" href="https://github.githubassets.com/assets/gist-embed-a9a1cf2ca01efd362bfa52312712ae94.css"><div id="gist22446210" class="gist">
    <div class="gist-file">
      <div class="gist-data">
        <div class="js-gist-file-update-container js-task-list-container file-box">
  <div id="file-colors-html-swig" class="file">


  <div itemprop="text" class="Box-body p-0 blob-wrapper data type-text ">

<table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tbody><tr>
        <td id="file-colors-html-swig-L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="file-colors-html-swig-LC1" class="blob-code blob-code-inner js-file-line">  &lt;article class="example__colors"&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-swig-L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="file-colors-html-swig-LC2" class="blob-code blob-code-inner js-file-line">    &lt;h3&gt;Colors&lt;/h3&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-swig-L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="file-colors-html-swig-LC3" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-html-swig-L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="file-colors-html-swig-LC4" class="blob-code blob-code-inner js-file-line">    {% for color in colors %}</td>
      </tr>
      <tr>
        <td id="file-colors-html-swig-L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="file-colors-html-swig-LC5" class="blob-code blob-code-inner js-file-line">      &lt;div class="item"&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-swig-L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="file-colors-html-swig-LC6" class="blob-code blob-code-inner js-file-line">        &lt;span class="{{ color.name }} placeholder"&gt;&lt;/span&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-swig-L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="file-colors-html-swig-LC7" class="blob-code blob-code-inner js-file-line">        &lt;span class="name"&gt;{{ color.name }}&lt;/span&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-swig-L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="file-colors-html-swig-LC8" class="blob-code blob-code-inner js-file-line">      &lt;/div&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-swig-L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="file-colors-html-swig-LC9" class="blob-code blob-code-inner js-file-line">    {% endfor %}</td>
      </tr>
      <tr>
        <td id="file-colors-html-swig-L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="file-colors-html-swig-LC10" class="blob-code blob-code-inner js-file-line">  &lt;/article&gt;</td>
      </tr>
</tbody></table>


  </div>

  </div>
</div>

      </div>
      <div class="gist-meta">
        <a href="https://gist.github.com/metamn/dc1b4efc4e71f31abf22/raw/d388ad9e86efc7730ed302488373842024dde9c5/colors.html.swig" style="float:right">view raw</a>
        <a href="https://gist.github.com/metamn/dc1b4efc4e71f31abf22#file-colors-html-swig">colors.html.swig</a>
        hosted with ❤ by <a href="https://github.com">GitHub</a>
      </div>
    </div>
</div>
<p>Gulp transforms the skeleton into a final HTML which contains the same colors as defined in the <code>colors.scss.json</code> file above.</p><script src="https://gist.github.com/metamn/2d01cc5e07c7e3221739.js"></script><link rel="stylesheet" href="https://github.githubassets.com/assets/gist-embed-a9a1cf2ca01efd362bfa52312712ae94.css"><div id="gist22446333" class="gist">
    <div class="gist-file">
      <div class="gist-data">
        <div class="js-gist-file-update-container js-task-list-container file-box">
  <div id="file-colors-html" class="file">


  <div itemprop="text" class="Box-body p-0 blob-wrapper data type-html ">

<table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tbody><tr>
        <td id="file-colors-html-L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="file-colors-html-LC1" class="blob-code blob-code-inner js-file-line">&lt;<span class="pl-ent">article</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>example__colors<span class="pl-pds">"</span></span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="file-colors-html-LC2" class="blob-code blob-code-inner js-file-line">    &lt;<span class="pl-ent">h3</span>&gt;Colors&lt;/<span class="pl-ent">h3</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="file-colors-html-LC3" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-colors-html-L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="file-colors-html-LC4" class="blob-code blob-code-inner js-file-line">      &lt;<span class="pl-ent">div</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>item<span class="pl-pds">"</span></span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="file-colors-html-LC5" class="blob-code blob-code-inner js-file-line">        &lt;<span class="pl-ent">span</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>white placeholder<span class="pl-pds">"</span></span>&gt;&lt;/<span class="pl-ent">span</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="file-colors-html-LC6" class="blob-code blob-code-inner js-file-line">        &lt;<span class="pl-ent">span</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>&gt;white&lt;/<span class="pl-ent">span</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="file-colors-html-LC7" class="blob-code blob-code-inner js-file-line">      &lt;/<span class="pl-ent">div</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="file-colors-html-LC8" class="blob-code blob-code-inner js-file-line">    </td>
      </tr>
      <tr>
        <td id="file-colors-html-L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="file-colors-html-LC9" class="blob-code blob-code-inner js-file-line">      &lt;<span class="pl-ent">div</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>item<span class="pl-pds">"</span></span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="file-colors-html-LC10" class="blob-code blob-code-inner js-file-line">        &lt;<span class="pl-ent">span</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>black placeholder<span class="pl-pds">"</span></span>&gt;&lt;/<span class="pl-ent">span</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="file-colors-html-LC11" class="blob-code blob-code-inner js-file-line">        &lt;<span class="pl-ent">span</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>&gt;black&lt;/<span class="pl-ent">span</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="file-colors-html-LC12" class="blob-code blob-code-inner js-file-line">      &lt;/<span class="pl-ent">div</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="file-colors-html-LC13" class="blob-code blob-code-inner js-file-line">    </td>
      </tr>
      <tr>
        <td id="file-colors-html-L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="file-colors-html-LC14" class="blob-code blob-code-inner js-file-line">      &lt;<span class="pl-ent">div</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>item<span class="pl-pds">"</span></span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="file-colors-html-LC15" class="blob-code blob-code-inner js-file-line">        &lt;<span class="pl-ent">span</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>blue placeholder<span class="pl-pds">"</span></span>&gt;&lt;/<span class="pl-ent">span</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="file-colors-html-LC16" class="blob-code blob-code-inner js-file-line">        &lt;<span class="pl-ent">span</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>&gt;blue&lt;/<span class="pl-ent">span</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="file-colors-html-LC17" class="blob-code blob-code-inner js-file-line">      &lt;/<span class="pl-ent">div</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="file-colors-html-LC18" class="blob-code blob-code-inner js-file-line">    </td>
      </tr>
      <tr>
        <td id="file-colors-html-L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="file-colors-html-LC19" class="blob-code blob-code-inner js-file-line">      &lt;<span class="pl-ent">div</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>item<span class="pl-pds">"</span></span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="file-colors-html-LC20" class="blob-code blob-code-inner js-file-line">        &lt;<span class="pl-ent">span</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>thumbblue placeholder<span class="pl-pds">"</span></span>&gt;&lt;/<span class="pl-ent">span</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="file-colors-html-LC21" class="blob-code blob-code-inner js-file-line">        &lt;<span class="pl-ent">span</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>&gt;thumbblue&lt;/<span class="pl-ent">span</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="file-colors-html-LC22" class="blob-code blob-code-inner js-file-line">      &lt;/<span class="pl-ent">div</span>&gt;</td>
      </tr>
      <tr>
        <td id="file-colors-html-L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="file-colors-html-LC23" class="blob-code blob-code-inner js-file-line">    </td>
      </tr>
      <tr>
        <td id="file-colors-html-L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="file-colors-html-LC24" class="blob-code blob-code-inner js-file-line">  &lt;/<span class="pl-ent">article</span>&gt;</td>
      </tr>
</tbody></table>


  </div>

  </div>
</div>

      </div>
      <div class="gist-meta">
        <a href="https://gist.github.com/metamn/2d01cc5e07c7e3221739/raw/ec1c40f7f202ef16b89c3ce6bc9553800ea3c86c/colors.html" style="float:right">view raw</a>
        <a href="https://gist.github.com/metamn/2d01cc5e07c7e3221739#file-colors-html">colors.html</a>
        hosted with ❤ by <a href="https://github.com">GitHub</a>
      </div>
    </div>
</div>
<figure class="figure illustration figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/styleguide-example_desktop.png, http://metamn.io/beat/assets/images/styleguide-example_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/styleguide-example_laptop.png, http://metamn.io/beat/assets/images/styleguide-example_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/styleguide-example-portrait_tablet.png, http://metamn.io/beat/assets/images/styleguide-example-portrait_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/styleguide-example-portrait_mobile.png, http://metamn.io/beat/assets/images/styleguide-example-portrait_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/styleguide-example_laptop.png" alt="Styleguide colors example"></picture><figcaption class="figcaption figcaption--from-title">Styleguide colors example</figcaption></figure><h2 id="see-live-comment-contribute">See live, comment, contribute</h2><p>My portfolio features a complete, living styleguide built on these principles and technologies. You can <a href="http://metamn.io/styleguide/">see it live</a>, check the source code on <a href="https://github.com/metamn/metamn-v1">Github</a>, or contribute to the <a href="https://github.com/metamn/ssgg">open source version</a>.</p></div><nav class="article__footnotes"><h3>Footnotes</h3><ol class="ol"><li class="li" id="footnotes--1"><span class="footnote"><span class="footnote__link"><a class="link" href="https://www.google.com/design/spec/material-design/introduction.html" title="Google’s Material Design">Google’s Material Design</a></span> <span class="footnote__go-back"><a class="link" title="Back to the footnote" href="#footnote--1"><span class="arrow-with-triangle arrow-with-triangle--top"><span class="arrow-with-triangle__line"></span> <span class="triangle triangle--top arrow-with-triangle__triangle"></span></span> <span class="text">Back to the footnote</span></a></span></span></li><li class="li" id="footnotes--2"><span class="footnote"><span class="footnote__link"><a class="link" href="https://rizzo.lonelyplanet.com/styleguide/design-elements/colours" title="Lonely Planet’s Rizzo">Lonely Planet’s Rizzo</a></span> <span class="footnote__go-back"><a class="link" title="Back to the footnote" href="#footnote--2"><span class="arrow-with-triangle arrow-with-triangle--top"><span class="arrow-with-triangle__line"></span> <span class="triangle triangle--top arrow-with-triangle__triangle"></span></span> <span class="text">Back to the footnote</span></a></span></span></li><li class="li" id="footnotes--3"><span class="footnote"><span class="footnote__link"><a class="link" href="http://patternlab.io/" title="Pattern Lab / Atomic Design">Pattern Lab / Atomic Design</a></span> <span class="footnote__go-back"><a class="link" title="Back to the footnote" href="#footnote--3"><span class="arrow-with-triangle arrow-with-triangle--top"><span class="arrow-with-triangle__line"></span> <span class="triangle triangle--top arrow-with-triangle__triangle"></span></span> <span class="text">Back to the footnote</span></a></span></span></li></ol></nav><aside class="article__categories-and-date"><h3>Article categories and date</h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">code</span></nav><time class="article__date">May 15, 15</time></aside></article>


<article class="article article-full"><h3 class="article__title"><a class="link" href="http://metamn.io/beat/delivering-the-message" title="Delivering The Message">Delivering The Message</a></h3><div class="article__content"><p>User interface design has been around for decades. Lately a brand new profession — User Experience / UX design emerged from it. Before that we had Human-Computer Interaction and usability design.</p><p>All these methodologies are focusing on a single issue: how to deliver a message to users via interactive visual interfaces. How to delight visitors yet deliver business goals.</p><p>We all agree every website / app sells something. A product, a service, a subscription, a photo. Information.</p><p>And design is the art and craft to make that sales happen.</p><h2 id="focus-points">Focus points</h2><p>Before UX there was Jakob Nielsen and usability. Since 1995 he taught us how to create effective websites, how to make people interact with your site in a way it will lead to certain, planned outcome.</p><p>While most of his advices are valid for websites <a href="http://www.nngroup.com/articles/113-design-guidelines-homepage-usability/">he made a statement</a> universally true for other interactive interfaces.</p><blockquote><p>Visitors can focus only on five things on a single page.</p></blockquote><ol><li><strong>Identity</strong> — Making the visitor feeling safe, being in the right place</li><li><strong>Offer</strong> — What the page offers</li><li><strong>Values</strong> — What your site does that’s valuable from the user’s point of view, as well as how you differ from key competitors.</li><li><strong>Action</strong> — The highest priority tasks giving users a clear starting point for what to do next.</li><li><strong>Entertainment</strong> — If all above are not interesting for the user offer something fun which still connects / links back to your site.</li></ol><figure class="figure figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/focus-points-landscape_desktop.png, http://metamn.io/beat/assets/images/focus-points-landscape_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/focus-points-landscape_laptop.png, http://metamn.io/beat/assets/images/focus-points-landscape_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/focus-points-portrait_tablet.png, http://metamn.io/beat/assets/images/focus-points-portrait_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/focus-points-portrait_mobile.png, http://metamn.io/beat/assets/images/focus-points-portrait_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/focus-points-landscape_laptop.png" alt="The five focus points on metamn.io"></picture><figcaption class="figcaption figcaption--from-title">The five focus points on metamn.io</figcaption></figure><p>Sticking to these five focus points makes interface design simple and highly effective. They give us a foundation of how pages should be structured and each section visually weighted to reach a certain goal.</p><p>Focus points define how a product is laid out and how drives attention.</p><h2 id="focus-groups">Focus Groups</h2><p>With UX we’ve got richer — finally! — with user research. Despite being seemingly complicated by the hype around and by the new tools and job descriptions springing every day, User Experience is all about answering a question:</p><blockquote><p>Who does what, how does it feels and flows?</p></blockquote><p>If you don’t have the resources — to run an entire UX department producing studies and prototypes — focus on just one thing: <em>how your product feels</em> to be able to define your message.</p><p>When creating my portfolio at <a href="http://metamn.io">http://metamn.io</a> I knew my target audience will be highly educated tech people with clear understanding of web design and development trends. And my message was:</p><blockquote><p>Hire me, I’m at the cutting edge of your industry.</p></blockquote><p>To prove that I had to show something new, unique both in design and development.</p><p>For development I’ve created a living styleguide accompanying my portfolio and outsourced it. Even today I only knew companies not single individuals doing styleguide (Google’s Material Design, Lonely Planet’s Rizzo). That should deliver the message.</p><figure class="figure figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/metamn-styleguide-landscape_desktop.png, http://metamn.io/beat/assets/images/metamn-styleguide-landscape_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/metamn-styleguide-landscape_laptop.png, http://metamn.io/beat/assets/images/metamn-styleguide-landscape_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/metamn-styleguide-portrait_tablet.png, http://metamn.io/beat/assets/images/metamn-styleguide-portrait_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/metamn-styleguide-portrait_mobile.png, http://metamn.io/beat/assets/images/metamn-styleguide-portrait_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/metamn-styleguide-landscape_laptop.png" alt="The living styleguide of metamn.io"></picture><figcaption class="figcaption figcaption--from-title">The living styleguide of metamn.io</figcaption></figure><p>On design I went with something outside the box. I’ve picked an unusual layout, an electric and vibrant color palette, a modern typeface for text and a geeky one for the logo — thanks Jason Kottke! I’ve created a simple and minimal slider and accordion from scratch to communicate my visitors I’m out of the hype, I work with homegrown, unique ingredients and yet the result is enjoyable in all environments.</p><p>The portfolio should radiate now energy, strength in simplicity, courage in pushing the web forward yet sticking to it’s basic principles. This is how I think and feel, this is my message.</p><figure class="figure figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/metamn-frontpage-landscape_desktop.png, http://metamn.io/beat/assets/images/metamn-frontpage-landscape_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/metamn-frontpage-landscape_laptop.png, http://metamn.io/beat/assets/images/metamn-frontpage-landscape_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/metamn-frontpage-portrait_tablet.png, http://metamn.io/beat/assets/images/metamn-frontpage-portrait_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/metamn-frontpage-portrait_mobile.png, http://metamn.io/beat/assets/images/metamn-frontpage-portrait_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/metamn-frontpage-landscape_laptop.png" alt="The frontpage of metamn.io"></picture><figcaption class="figcaption figcaption--from-title">The frontpage of metamn.io</figcaption></figure><h2 id="tldr-">TLDR;</h2><p>You are always selling something. Get to know who you are selling to and come up with a message. Make that message shine through your every move, decision thus the final product.</p><p>You can <a href="http://01.its-csongor.com/manifesto/">check another case study</a> — more detailed — how to deliver the message written a few years ago featuring an e-commerce project.</p></div><aside class="article__categories-and-date"><h3>Article categories and date</h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">design</span></nav><time class="article__date">Aug 8, 15</time></aside></article>


<article class="article article-full"><h3 class="article__title"><a class="link" href="http://metamn.io/beat/no-more-problems-on-the-front-end" title="No More Problems On The Front End">No More Problems On The Front End</a></h3><div class="article__content"><p>The last decade — at least — was full with hard problems for the front-end web developers. Cross-browser compatibility, naming and structuring code, and poor performance. Now all these are solved.</p><p>Thanks to Javascript and some fine folks from Russia.</p><h2 id="cross-browser-compatibility">Cross-browser compatibility</h2><p>We have spent at least ten years trying to make websites run seamlessly in all browsers. The solution recently found is very elegant: it is effortless and it is transparent for the developer making the problem like never existed.</p><p>It is called <a href="http://postcss.org/">PostCSS / Autoprefixer</a> and incorporates lots of collective wisdom like <a href="http://caniuse.com/">Can I Use</a>. It's part of Grunt / Gulp / Webpack which are front-end dev’s best friend. They take our handwritten HTML / CSS / JS code and make it better.</p><p>They enhance our workflow. As large ecosystems they provide solutions for every aspect of front-end development. They <em>let us focus on code logic</em> and they do the rest of the hard work. Like making websites faster and cross-browser compatible.</p><h2 id="naming-and-structuring-code">Naming and structuring code</h2><p>There are large websites developed by large, ever changing personnel. Their biggest problem is to name and structure HTML / CSS / JS elements in a way everybody understands the logic.</p><p>There are small websites developed by single developers. And enhanced later by another developer. The biggest problem of one developer is to understand the structuring and naming conventions used by the other.</p><p>Since the beginning of web development this problem persisted until it was solved recently by the fine people from Yandex. Yes, the Google of Russia.</p><p>Russians were always good in structuring things. Americans too, but in this case they've come up with a dead-end strategy called <a href="http://atomicdesign.bradfrost.com/table-of-contents/">Atomic Web Design</a>. I’ve spent two years using it. It was very romantic. And when I was not able anymore to follow my own molecules ...</p><p>... Ladies and gentleman I met <a href="https://en.bem.info/">BEM</a>. The solution for organizing and naming code in an universal way everybody understands. BEM makes sure a code written by anybody can be picked up and extended with no efforts. With a single hour learning curve. BEM is the English of front-end code and structure.</p><h2 id="poor-performance">Poor performance</h2><p>I’m in a constant hunt for perfect mobile web experiences since the beginning of responsive web design in 2010. Now in 2015 I can say only 1 out of 10 websites from the highly respectable <a href="http://www.siteinspire.com/">Siteinspire</a> offer a fully enjoyable mobile experience.</p><p>Forget that. There is a bigger problem. The lack of native-like performance. Why the New York Times app — presenting the same content — is light-years ahead in usability and joy of it’s web counterpart on mobile devices?</p><p>The answer is a multi-million dollar question ... because it was found by Facebook who employs the most expensive talent as we know. They have realised the engine of the web browsers — the DOM — is broken. It’s simply not capable to offer the same performance apps can easily afford.</p><p>They have fixed that engine and made us available through React, a yet another Javascript tool to make our front-end devs life easier.</p><p>And the ladies and gentleman from <a href="http://engineering.flipboard.com/2015/02/mobile-web/">Flipboard</a> taught us how finally we can create websites indistinguishable from apps in means of smoothness, speed and elegance.</p><h2 id="what-s-next-">What’s next?</h2><p>Nothing interesting. Since these above problems are all solved the web stack — HTML, CSS, Javascript — will take over incumbent proprietary technologies and will constitute the coding platform of choice for all.</p></div><aside class="article__categories-and-date"><h3>Article categories and date</h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">code</span></nav><time class="article__date">Aug 19, 15</time></aside></article>

<article class="article article-full">
<h3 class="article__title">
<a class="link" href="http://metamn.io/beat/blame-the-algorithm" title="Blame The Algorithm">
Blame The Algorithm
</a>
</h3><div class="article__content"><p>When have you heard last time about <em>web 2.0</em>? Web 3.0? Right, around ten years ago when Wordpress, Shopify, Etsy, Twitter, Tumblr and co was launched.</p><p>Now all you hear is social media, sharing economy, machine learning, blockchain and artificial intelligence, internet of things. None of them have anything to do with the web.</p><p>What happened? How the web got lost in the noise? I'm trying to understand this phenomena through analyzing it's underlying technology.</p><h2 id="from-presentation-to-interaction">From Presentation To Interaction</h2><p>Web 2.0 introduced us commenting and sharing — the first interactive artifacts since <em>add to cart</em> from the Amazon and E-bay era.</p><p>That was a revolution. Immediately brought us the REST and the MVC — technologies meant to replace plain simple presentation with heavy interactions on web pages. To move us from web sites to web apps.</p><p>It also brought us the cloud to move us from web servers to web services. And git to let code freely evolve.</p><p>Interactivity decomposed monoliths into quick moving atomic components. Today everything is possible on the web.</p><p>You can rent machine time to run your functions; spin up servers on demand when traffic goes high; use specific programming languages for specific tasks; decouple user interface from backend; compose applications on the fly; have same good looking apps like internet giants; many more and all for <em>free</em>.</p><p>Such a perfect time to do web! It's never been easier and more enjoyable to create!</p><h2 id="from-people-to-machine">From People To Machine</h2><p>How this fine progress can't be enough for the web to hit the headlines again?</p><p>Yeah, when <em>free</em> then you are the product.</p><p>It seems, by its nature, the web become a vehicle to a higher order entity. Together with it's successor the app, matched with the advertising<sup id="footnote--1"><a href="#footnotes--1">1</a></sup> driven business model, we see now a shift from human to machine.</p><p>It's not what somebody can do with technology but what machine can do with the outcome of all these.</p><p>Everything we create and do — from user interfaces to phone calls — goes <em>semantic</em>: understandable by algorithms. Everything we optimize — infrastructures, processes, tools, ourselves — shifts control to machine.</p><p>Now all what's left to us is to <a href="https://imgur.com/gallery/RYP2L">blame the algorithm</a>.</p></div>

<nav class="article__footnotes"><h3>Footnotes</h3><ol class="ol"><li class="li" id="footnotes--1"><span class="footnote"><span class="footnote__link"><a class="link" href="http://metamn.io/gust/advertising" title="Advertising">Advertising</a></span> <span class="footnote__go-back"><a class="link" title="Back to the footnote" href="#footnote--1"><span class="arrow-with-triangle arrow-with-triangle--top"><span class="arrow-with-triangle__line"></span> <span class="triangle triangle--top arrow-with-triangle__triangle"></span></span> <span class="text">Back to the footnote</span></a></span></span></li></ol></nav><aside class="article__categories-and-date"><h3>Article categories and date</h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">trend, code</span></nav><time class="article__date">Nov 21, 17</time></aside></article>

<article class="article article-full"><h3 class="article__title"><a class="link" href="http://metamn.io/beat/democratization-of-design" title="Democratization of design">Democratization of design</a></h3><div class="article__content"><p>WordPress, a company started at the same time like Facebook, Twitter, Tumblr, Shopify — and which powers 30% of all websites today — is rolling out a new version of it's web app this month with a game changing feature called Gutenberg.</p><p>Gutenberg<sup id="footnote--1"><a href="#footnotes--1">1</a></sup> is a new web editor enabling people to design their own website visually.</p><p>This is not the first attempt to let people freely design their own websites. Atavist, Wix, ReadyMag, Jux have all tried before but, as it always happens, after ahead of time innovation and failure there is a momentum when and attempt becomes truly successful.</p><p>That momentum is now. Delivered by WordPress via it's huge reach and ecosystem together with React a revolutionary tool created by Facebook.</p><p>These two put together can't miss to make everyone a designer.</p><p>Log in to WordPress, throw together some React components called Gutenberg blocks, and voila, in a few hours your website is ready.</p><h2 id="seismic">Seismic</h2><p>When everybody is a designer seismic shift happens in the background. A few classic software jobs — UI/UX designer, front-end and back-end developer — will sink together with entire industries.</p><p>There won't be any, or much less need for these roles and their tools. People will use a new design tool — the browser! — and they'll use it in real time.</p><p>They won't fire up Photoshop or Sketch to design and wait for god / miracle / yet another developer to implement their creation.</p><p>They won't fire up the browser and go to the back-end, to a dashboard, to a content management system or e-commerce engine as we know today. They will make changes on the front-end in a <em>what you see is what you get</em> fashion in real time.</p><p>Instead of monolithic, incompatible, incumbent systems, servers and apps — atomic, highly interactive and interoperable components will be everywhere running on micro service architecture.</p><p>Components. A mix of UI/UX design, front-end code with back-end support, packaged in a self-sustaining fashion. You just drop content on them and pick up a style to display. Nothing more.</p><h2 id="painful">Painful</h2><p>The democratisation of design starts with WordPress and it will painful for the half of the industry in a similar way like Artificial Intelligence is painful by taking away jobs.</p><p>Instead of millions of themes, hundreds of visual theme builders, dozens of content management and e-commerce systems there will be a few component frameworks, compatible with each other, using universal design systems like Google's Material Design or another system coming from another major player.</p><p>Personally I'm happy with this. Our industry is overpopulated, deeply perverted, with lots of charlatans and overnight pixel pushers reinventing the same wheel every day hidden behind soundy job titles for large sums of money driving the global gentrification. It's time to cool down and make a reality check.</p><h2 id="the-scenario">The scenario</h2><p>What really concerns me is how the large public with no design education and aesthetic sense will manage to come up with a good looking, finished website?</p><p>And how we can avoid all those websites looking the same?</p><p>Masses fed up with social networks will start soon leaving the silos and looking for something original to express themselves even on the cost of the likes.</p><p>They'll flock into WordPress; choose a design system; pick up some components and color schemes; in an afternoon they'll come up with the solution, in ecstasy. The next day they'll wake up and realize a.) they won't win the next Awwwards and b.) their creation looks like almost as the guys' next door.</p><p>What we can do in the next short years to satisfy them all? We don't want every new site look alike neither to be ugly. We don't want to make people disappointed by the web immediately after a disappointment in social networks.</p><h2 id="intelligent-components">Intelligent components</h2><p>I guess the race is to create intelligent components which can't be abused by layman to break the associated design system.</p><p>Or: to create a highly customizable design system built on intelligent components which preserves their unity even under heavy misuse.</p><p>We don't want another Theme Forrest or Geocities.</p><p>Years ago I wrote a similar tech-fiction article called <em>Devices as Designers</em><sup id="footnote--2"><a href="#footnotes--2">2</a></sup> where I was musing about highly intelligent components assembled into a system by AI and displayed from watches, websites to interactive installations on skyscrapers.</p><p>We are not too far from that and neither closer. But still to follow that path. Instead of devices people will do the task of assembling interfaces in a less intelligent way forcing us to come up with more intelligent components and design systems.</p><p>Our new tools first of all has to teach people how to design. To realize what they really want is not to throw another slider and two gradients with a killer hero on a canvas, but to deliver a message.</p><p>We should come up with design wizards framing the everyday designers' urge and push into creating usable content first then let the rampage happen, in a coordinated way, when these newly found design flamethrowers — we call components — are put in practice.</p><p>The winners in this race will be companies who educate their users, force them to stick to best practices, and after the basics are set up unleash their users with novel, AI based components instead of drowning them with sliders, heroes and hamburger menus again.</p><p>Yes, we will have to equip our components with semantics, making them understandable by both their users who will act as designers, and by the underlying tech stack powered by AI bringing in the entertainment and perhaps the new enlightenment.</p></div><nav class="article__footnotes"><h3>Footnotes</h3><ol class="ol"><li class="li" id="footnotes--1"><span class="footnote"><span class="footnote__link"><a class="link" href="https://wordpress.org/gutenberg/" title="WordPress Gutenberg">WordPress Gutenberg</a></span> <span class="footnote__go-back"><a class="link" title="Back to the footnote" href="#footnote--1"><span class="arrow-with-triangle arrow-with-triangle--top"><span class="arrow-with-triangle__line"></span> <span class="triangle triangle--top arrow-with-triangle__triangle"></span></span> <span class="text">Back to the footnote</span></a></span></span></li><li class="li" id="footnotes--2"><span class="footnote"><span class="footnote__link"><a class="link" href="http://metamn.io/beat/tomorrowww/" title="Devices as designers">Devices as designers</a></span> <span class="footnote__go-back"><a class="link" title="Back to the footnote" href="#footnote--2"><span class="arrow-with-triangle arrow-with-triangle--top"><span class="arrow-with-triangle__line"></span> <span class="triangle triangle--top arrow-with-triangle__triangle"></span></span> <span class="text">Back to the footnote</span></a></span></span></li></ol></nav><aside class="article__categories-and-date"><h3>Article categories and date</h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">design, trend</span></nav><time class="article__date">Nov 11, 18</time></aside></article>

<article class="article article-full"><h3 class="article__title"><a class="link" href="http://metamn.io/beat/the-designer-who-doesnt-code" title="The designer who doesn't code">The designer who doesn't code</a></h3><div class="article__content"><p><strong>&lt;update&gt;</strong></p><p>The <a href="https://dev.to/metamn/the-designer-who-doesnt-code-1l8d">first version</a> of this article left room for inflammatory <a href="http://localhost:3000/the-designer-who-doesnt-code/">comments</a>.</p><p>A few readers choose to continue a nonsense debate — should designers code — instead of looking at the numbers. This article is a case study not an opinionated piece.</p><p>To make it purely objective the first introductory part — Comps — and the last sections — Pain; Cure — were rewritten. The rest, the case study was untouched.</p><p><strong>&lt;/update&gt;</strong></p><p><strong>&lt;disclaimer&gt;</strong></p><p>I'm in equal measure a designer — self-taught with works featured in online galleries and theme stores — and developer — with a degree in Computer Science.</p><p>This is a privileged situation some people find it funny, others unbelievable, others take it with envy.</p><p>I use it to create with confidence, end-to-end, from user research to performance. And to share the findings with others as often as possible.</p><p><strong>&lt;/disclaimer&gt;</strong></p><h2 id="comps">Comps</h2><p>Occasionally I do freelancing for clients and often times I'm hired at the development phase.</p><p>This means I'm receiving comps from designers either coming from Photoshop or Sketch, wrapped or not into Zeplin.</p><p>These comps are imperfect. They contain design decisions not grounded in web development best practices. Making a comp work sometimes is very painful and expensive.</p><p>I've been long waiting for a case study which speaks for itself. Let's see it.</p><h2 id="the-task">The task</h2><p>It sounds simple: list the latest posts on the homepage in a responsive way. On large screens there should be 8 posts displayed 4 in a row, on medium screens 6 posts / 3 in a row, on tablet 4 posts / 2 in a row, on mobile 2 posts each on its own row.</p><figure class="figure figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/comp-large_desktop.png, http://metamn.io/beat/assets/images/comp-large_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/comp-large_laptop.png, http://metamn.io/beat/assets/images/comp-large_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/comp-large_tablet.png, http://metamn.io/beat/assets/images/comp-large_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/comp-large_mobile.png, http://metamn.io/beat/assets/images/comp-large_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/comp-large_laptop.png" alt="The comp on large screens"></picture><figcaption class="figcaption figcaption--from-title">The comp on large screens</figcaption></figure><figure class="figure figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/comp-medium_desktop.png, http://metamn.io/beat/assets/images/comp-medium_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/comp-medium_laptop.png, http://metamn.io/beat/assets/images/comp-medium_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/comp-medium_tablet.png, http://metamn.io/beat/assets/images/comp-medium_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/comp-medium_mobile.png, http://metamn.io/beat/assets/images/comp-medium_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/comp-medium_laptop.png" alt="The comp on medium screens"></picture><figcaption class="figcaption figcaption--from-title">The comp on medium screens</figcaption></figure><figure class="figure figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/comp-tablet_desktop.png, http://metamn.io/beat/assets/images/comp-tablet_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/comp-tablet_laptop.png, http://metamn.io/beat/assets/images/comp-tablet_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/comp-tablet_tablet.png, http://metamn.io/beat/assets/images/comp-tablet_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/comp-tablet_mobile.png, http://metamn.io/beat/assets/images/comp-tablet_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/comp-tablet_laptop.png" alt="The comp on tablet"></picture><figcaption class="figcaption figcaption--from-title">The comp on tablet</figcaption></figure><figure class="figure figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/comp-mobile_mobile.png, http://metamn.io/beat/assets/images/comp-mobile_mobile2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/comp-mobile_mobile.png, http://metamn.io/beat/assets/images/comp-mobile_mobile2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/comp-mobile_mobile.png, http://metamn.io/beat/assets/images/comp-mobile_mobile2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/comp-mobile_mobile.png, http://metamn.io/beat/assets/images/comp-mobile_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/comp-mobile_mobile.png" alt="The comp on mobile"></picture><figcaption class="figcaption figcaption--from-title">The comp on mobile</figcaption></figure><p>The comps are blurred out to protect the designer and the company. The black and red boxes are ad placeholders, and, there are gray vertical lines between columns the blurred screenshots can't show.</p><p>The comps were replicated using mockups. You can check it <a href="https://codepen.io/metamn/pen/OdjaGE?editors=0100#0">live on Codepen</a> to better sense the task.</p><figure class="figure figure--loaded"><picture class="picture"><source media="(min-width: 1600px)" srcset="http://metamn.io/beat/assets/images/comp-mockup-large_desktop.png, http://metamn.io/beat/assets/images/comp-mockup-large_desktop2x.png 2x"><source media="(min-width: 1024px)" srcset="http://metamn.io/beat/assets/images/comp-mockup-large_laptop.png, http://metamn.io/beat/assets/images/comp-mockup-large_laptop2x.png 2x"><source media="(min-width: 600px)" srcset="http://metamn.io/beat/assets/images/comp-mockup-large_tablet.png, http://metamn.io/beat/assets/images/comp-mockup-large_tablet2x.png 2x"><source media="(max-width: 599px)" srcset="http://metamn.io/beat/assets/images/comp-mockup-large_mobile.png, http://metamn.io/beat/assets/images/comp-mockup-large_mobile2x.png 2x"><img class="img img--loaded" src="http://metamn.io/beat/assets/images/comp-mockup-large_laptop.png" alt="The comp on large screens replicated with mockups"></picture><figcaption class="figcaption figcaption--from-title">The comp on large screens replicated with mockups</figcaption></figure><h2 id="problems">Problems</h2><p>Since the designer doesn't code / doesn't consult with a developer ...</p><blockquote><p>The designer doesn't knows content cannot be get in a responsive way only <em>displayed</em> in a responsive way.</p></blockquote><p>... and creates comps which makes the developer to fetch all 8 posts on the back-end and hide some of them on the front-end — such a performance waste — put to be supported by those devices which have the poorest resources.</p><blockquote><p>The designer doesn't knows the CSS Grid specification</p></blockquote><p>... and spices up the design with vertical lines separating the columns. CSS Grid has no support for grid gap styling <sup id="footnote--2"><a href="#footnotes--2">2</a></sup> and a nasty hack <sup id="footnote--3"><a href="#footnotes--3">3</a></sup> has to be used to accomplish this original design idea.</p><blockquote><p>The designer doesn't knows exceptions are painful and bloat the source code</p></blockquote><p>... and inserts an ad between the rows. The ad has different dimension and positioning which breaks the grid. An exception has to be added to support this design decision bloating the code during development time and later during maintenance.</p><h2 id="solutions">Solutions</h2><p>If the designer were coding or consulting with a developer the following design decisions were taken:</p><ol><li><p>Do not hide posts on smaller screens — wrap them into a navigation element. This way the resources used to get all posts on the back-end would have been not wasted on the front-end.</p></li><li><p>Forget the vertical column separator lines. They can't be implemented with current best practices and they need workaround. Let form follow function even if function is coding standards.</p></li><li><p>Put that ad elsewhere. Combined with 2.) it's dangerous. Moving out of the grid will spare around half of development time and budget.</p></li></ol><p>With these practical design decisions the implementation would have been easy: use the CSS Grid. Time spent would be from minutes to around half an hour.</p><p>With vertical borders the CSS Grid technique — used across the site up until now — cannot be re-used. A research has to be done to see if the specification added the grid gap styling feature recently, or if there is a polyfill, or a nice workaround.</p><p>It turned out only a workaround exists which won't fully solve the problem since the suggested bordering is ... complicated: it applies to middle columns treating columns at the edge as exceptions.</p><p>Time spent with research and workarounds: around an hour.</p><p>To implement the comp a loop has to be created over grid elements adding border only where necessary. For that I've already had a component built on Flexbox. Importing, adjusting to this current project took around half an hour. If it had to be written from scratch it would take at least an hour in plus.</p><p>Inserting the ad between the posts is way more complicated. It's about adding exceptions to an existing well working code. The back-end code displaying a post list has to be modified to insert the ad; on the front-end the grid has to be re-drawn and re-bordered.</p><p>The final front-end code is so ugly it is worth a look. <sup id="footnote--1"><a href="#footnotes--1">1</a></sup></p><p>Time spent: around an hour.</p><h2 id="numbers">Numbers</h2><table><caption><span class="text">The cost of the solutions</span></caption><thead><tr><th>Solution</th><th>Duration (min)</th><th>Notes</th></tr></thead><tbody><tr><td>Practical implementation</td><td>30</td><td>Using the CSS Grid</td></tr><tr><td>Vertical borders — research</td><td>60</td><td>Wasted. Only a nasty hack found</td></tr><tr><td>Vertical borders — implementation</td><td>30</td><td>+60 mins if the Flexbox grid component were not be already written</td></tr><tr><td>Ad between rows</td><td>60</td><td>The result is a very ugly patch over a well written code</td></tr></tbody></table><table><caption><span class="text">The amount and cost of new code added</span></caption><thead><tr><th>New code</th><th>Lines of code (LOC/SLOC)</th><th>Time spent (mins)</th></tr></thead><tbody><tr><td><a href="https://gist.github.com/metamn/b052d61cc36ae86a4c0de4e7fed38638">post-list-with-ad.php</a></td><td>37 / 32</td><td>15</td></tr><tr><td><a href="https://codepen.io/metamn/pen/OdjaGE">flexbox-grid mixin</a></td><td>62 / 54</td><td>60</td></tr><tr><td><a href="https://codepen.io/metamn/pen/OdjaGE">responsive-flexbox-grid mixin</a></td><td>48 / 39</td><td>15</td></tr><tr><td><a href="https://codepen.io/metamn/pen/OdjaGE">flexbox-grid-borders mixin</a></td><td>30 / 26</td><td>15</td></tr><tr><td><a href="https://codepen.io/metamn/pen/OdjaGE">latest-posts mixin new code</a></td><td>15 / 15</td><td>15</td></tr><tr><td><a href="https://codepen.io/metamn/pen/OdjaGE">latest-posts--regrid-for-ad mixin</a></td><td>108 / 97</td><td>45</td></tr></tbody><tfoot><tr><th>Total</th><th>300 / 263</th><th>165</th></tr></tfoot></table><table><caption><span class="text">Code bloat</span></caption><thead><tr><th>Component</th><th>Operation</th><th>Exception</th></tr></thead><tbody><tr><td>Post list with ad</td><td>Added</td><td>It might be not re-used again</td></tr><tr><td>Flexbox grid</td><td>Added</td><td>It might be not re-used again</td></tr><tr><td>Responsive flexbox grid</td><td>Added</td><td>It might be not re-used again</td></tr><tr><td>Responsive grid</td><td>Skipped</td><td>It is not re-used now while it is re-used across the entire site</td></tr></tbody></table><h2 id="pain">Pain</h2><p>This project has a good few dozens of sections like this <em>Latest posts</em> depicted above. More than half of them is designed in the same <em>unimplementable</em> way. Or, in the same <em>costly implementable</em> way.</p><p>Remember: on this component alone we've spent at least 2.5-3 hours instead of half an hour. Yes,</p><blockquote><p>5 times or 500% more than usual.</p></blockquote><p>That's immense. It all adds up during development time, and, rolls out as a technical debt for the future.</p><h2 id="cure">Cure</h2><p>Big / well organized / informed teams might be lucky. They've probably enrolled a perfect designer ←→ developer communication strategy to avoid this kind of extra cost and technical debt.</p><p>Small teams can do three things:</p><ol><li><p>Acknowledge the problem.</p></li><li><p>Find a designer who code — there are plenty out there. Or</p></li><li><p>Involve the developer as early as possible in the design process to help the designer with feasibility tips.</p></li><li><p>Make the developer and designer equal.</p></li></ol></div><nav class="article__footnotes"><h3>Footnotes</h3><ol class="ol"><li class="li" id="footnotes--1"><span class="footnote"><span class="footnote__link"><a class="link" href="https://codepen.io/metamn/pen/OdjaGE?editors=0100#0" title="The design comp replicated using mockups">The design comp replicated using mockups</a></span> <span class="footnote__go-back"><a class="link" title="Back to the footnote" href="#footnote--1"><span class="arrow-with-triangle arrow-with-triangle--top"><span class="arrow-with-triangle__line"></span> <span class="triangle triangle--top arrow-with-triangle__triangle"></span></span> <span class="text">Back to the footnote</span></a></span></span></li><li class="li" id="footnotes--2"><span class="footnote"><span class="footnote__link"><a class="link" href="https://stackoverflow.com/questions/45884630/css-grid-is-it-possible-to-apply-color-to-grid-gaps" title="No grid gap styling support for CSS Grid">No grid gap styling support for CSS Grid</a></span> <span class="footnote__go-back"><a class="link" title="Back to the footnote" href="#footnote--2"><span class="arrow-with-triangle arrow-with-triangle--top"><span class="arrow-with-triangle__line"></span> <span class="triangle triangle--top arrow-with-triangle__triangle"></span></span> <span class="text">Back to the footnote</span></a></span></span></li><li class="li" id="footnotes--3"><span class="footnote"><span class="footnote__link"><a class="link" href="https://stackoverflow.com/questions/13792755/show-border-grid-lines-only-between-elements/47914693#47914693" title="Show border grid lines only between elements - An ugly hack">Show border grid lines only between elements - An ugly hack</a></span> <span class="footnote__go-back"><a class="link" title="Back to the footnote" href="#footnote--3"><span class="arrow-with-triangle arrow-with-triangle--top"><span class="arrow-with-triangle__line"></span> <span class="triangle triangle--top arrow-with-triangle__triangle"></span></span> <span class="text">Back to the footnote</span></a></span></span></li></ol></nav><aside class="article__categories-and-date"><h3>Article categories and date</h3><nav class="article__categories"><h3 class="title">Categories</h3><span class="categories">design, code</span></nav><time class="article__date">Feb 5, 19</time></aside></article>

</div>

{% endblock %}
