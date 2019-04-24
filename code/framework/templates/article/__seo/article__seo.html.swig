{# http://jsonld.com/article/ #}
<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Article",
  "mainEntityOfPage":{
     "@type":"WebPage",
     "@id":"{{ site.url }}{{ article.url }}"
   },
  "headline": "{{ article.title }}",
  "alternativeHeadline": "{{ article.excerpt }}",
  {% if article.thumb %}
    {% set image_url = site.url + site.images + article.thumb %}
    "image": {
        "@type": "ImageObject",
        "url": "{{ image_url }}",
        "height": 426,
        "width": 320
    },
  {% endif %}
  "author": "Csongor Bartus",
  "genre": "web design and development",
  "keywords": "{{ article.categories | join(' ') }}",
  "url": "{{ site.url }}{{ article.url }}",
  "datePublished": "{{ article.date }}",
  "dateModified": "{{ Date.now() | date('Y-m-d') }}",
  "description": "{{ article.excerpt }}",
  "publisher": {
    "@type": "Organization",
    "name": "Metamn",
    "logo": {
      "@type": "ImageObject",
      "url": "http://metamn.io/assets/images/icons/favicon-196x196.png"
    }
  }
}
</script>
