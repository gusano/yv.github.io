<div class="title">
  {% if include.home %}
  <a href="/"{% if include.css %} class="{{ include.css }}"{% endif %}>{{ include.title }}</a>
  {% else %}
  <h1>{{ include.title }}</h1>
  {% endif %}
</div>
