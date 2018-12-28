---
layout: default
title: Yvan Volochine
tagline: music
group: index
---

{% include title.md title="Yvan Volochine" css="neon" home=true %}
{% include menu.md items=site.data.menu selected="Code" %}

<section class="code">
  <p>
    Involved in new media art since 2005.<br />
    Workshops, live coding and art installations using
    {% for techno in site.data.technos %}{% unless techno.active %}<span class="strike">{{ techno.name }}</span>{% else %}{{ techno.name }}{% endunless %}{% unless forloop.last %},&nbsp;{% endunless %}{% endfor %}.<br />
    <a href="http://github.com/gusano" target="_blank">Github</a> – <a href="http://vimeo.com/yv" target="_blank">Vimeo</a>
  </p>
</section>
<section class="art-projects">
  <p>
    {% for project in site.data.installations %}
      <div class="row project-item">
        <div class="col-md-8">
          <h2 class="project-name">{{ project.name }}</h2>
          <p class="project-data">
            {{ project.data }} - {{ project.year }}
            {% if project.link != '#' %}
              <br /><a href="{{ project.link }}" target="_blank">{{ project.link }}</a>
            {% endif %}
          </p>
        </div>
        <div class="col-md-4 image">
          {% if project.picture %}
            <img class="project" src="img/{{ project.picture }}" alt="{{ project.name }}" title="{{ project.name }}" />
          {% endif %}
        </div>
      </div>
    {% endfor %}
  </p>
</section>