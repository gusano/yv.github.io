<ul class="sticky {{ include.css }}">
{% for item in site.data.sticky-items %}
  <li><a href="{{ item.href }}"><i class="{{ item.icon }}"></i></a></li>
{% endfor %}
</ul>
