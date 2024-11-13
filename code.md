---
layout: default
title: Yvan Volochine
tagline: music
group: index
---

{% include menu.md items=site.data.menu selected="Code" %}
<section class="code">
  <p>
    Involved in new media art between 2005 and 2020.<br />
    Workshops, live coding and art installations using
    {% for techno in site.data.technos %}{% unless techno.active %}<span class="strike">{{ techno.name }}</span>{% else %}{{ techno.name }}{% endunless %}{% unless forloop.last %}, {% endunless %}{% endfor %}.<br />
    Check it out on <a href="http://github.com/gusano" target="_blank">Github</a> and <a href="http://vimeo.com/yv" target="_blank">Vimeo</a>.
  </p>
</section>
<section class="art-projects">
  <p>
    {% for project in site.data.installations %}
      <div class="row project-item">
        <div class="col-md-8">
          <h4>{{ project.name }}</h4>
          <p class="project-data">
            {{ project.data }} - {{ project.year }}
            {% if project.link != '#' %}
              <br /><a href="{{ project.link }}" target="_blank">{{ project.link }}</a>
            {% endif %}
          </p>
        </div>
        <div class="col-md-4 image">
          {% if project.picture %}
            <img src="{{ '/assets/img/' | append: project.picture | relative_url }}" alt="{{ project.name }}" title="{{ project.name }}" />
          {% endif %}
        </div>
      </div>
    {% endfor %}
  </p>
</section>
