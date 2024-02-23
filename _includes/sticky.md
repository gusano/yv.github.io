<ul class="sticky {{ include.css }}">
{% for item in site.data.sticky-items %}
  <li>
    <a href="{{ item.href }}">
      <i class="{{ item.icon }}"></i>
      <span class="item-{{ forloop.index }}">{{ item.title }}</span>
    </a>
  </li>
{% endfor %}
</ul>
