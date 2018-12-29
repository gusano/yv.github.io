---
layout: default
title: Yvan Volochine
tagline: music
group: index
---

{% include menu.md items=site.data.menu selected="Performance" %}
<section class="performance">
  <p class="main">
    Involved since 2013 in avant guarde performance art and clown.<br />
    The use of micro computers and sensors allows a tighter relationship between physical gestures and music/light uses, leading to an intense sensorial experience.<br />
    <br />
    Audience discretion is adviced.
  </p>
  <p class="main">
    {% for project in site.data.performances %}
      <div class="row project-item">
        <div class="col-md-8">
          <h5>{{ project.name }}</h5>
          <p class="project-data">
            {{ project.data }}
            {% if project.link != '#' %}
              <br /><a href="{{ project.link }}" target="_blank">{{ project.link }}</a>
            {% endif %}
          </p>
        </div>
        <div class="col-md-4 image">
          {% if project.picture %}
            {% asset "{{ project.picture }}" alt="{{ project.name }}" title="{{ project.name }}" %}
          {% endif %}
        </div>
      </div>
    {% endfor %}
  </p>
</section>
