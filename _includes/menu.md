<ul class="nav justify-content-center">
{% for menu in include.items %}
  <li class="nav-item">
    {% unless forloop.first %}
      &nbsp;/&nbsp;
    {% endunless %}
    <a
      href="{{ menu.link }}"
      class="nav-link{% if include.selected == menu.name %} active{% endif %}"
    >
      {{ menu.name }}
    </a>
  </li>
{% endfor %}
</ul>
