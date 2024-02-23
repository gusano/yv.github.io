---
layout: default
title: Yvan Volochine
tagline: music
group: index
---

{% include menu.md items=site.data.menu selected="Music" %}
<section class="releases">
  <h4>Releases</h4>
  <div class="row">
    {% for release in site.data.releases %}
      <div class="col-4 col-md-2 image">
        <a href="{{ release.link }}" class="thumbnail" target="_blank">
          <img src="{{ '/assets/img/' | append: release.image | relative_url }}" alt="{{ release.ref }}" />
        </a>
      </div>
    {% endfor %}
  </div>
</section>
<section class="projects">
  <h4>Projects</h4>
  {% for project in site.data.projects %}
    <div class="row">
      <div class="col-md-8">
      <h5 class="project-name">{{ project.name }}</h5>
        <p class="project-data">
          {{ project.data }}
          {% if project.link != '#' %}
            <br /><a href="{{ project.link }}" target="_blank">{{ project.link }}</a>
          {% endif %}
        </p>
      </div>
      <div class="col-md-4 image">
        {% if project.picture %}
          <img src="{{ '/assets/img/' | append: project.picture | relative_url }}" alt="{{ project.name }}" />
        {% endif %}
      </div>
    </div>
  {% endfor %}
</section>
