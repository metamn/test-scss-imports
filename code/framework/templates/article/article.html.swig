{% include '../head/head.html.swig' %}

<article class="article">

  <div class='article__content'>
    {% block content %}{% endblock %}
  </div>
</article>

{% block more %}{% endblock %}
