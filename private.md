---
layout: default
title: Yvan Volochine
tagline: music
group: index
---

{% include menu.md items=site.data.menu selected="Music" %}
<section class="private">
  <h3>Private</h3>
  {% for project in site.data.private %}
    <div class="row">
      <div class="col-md-8">
      <h4 class="project-name">{{ project.name }}</h4>
        <p class="project-data">
          {{ project.data }}
        </p>
        {% for track in project.tracks %}
        <figure style="margin-top: 20px">
          <figcaption style="margin-bottom: 12px; font-style: italic;">{{ track.name }} :</figcaption>
          <audio controls src="{{ '/assets/audio/' | append: track.source | relative_url }}"></audio>
        </figure>
        {% endfor %}
      </div>
      <div class="col-md-4 image text-center">
        {% if project.picture %}
          <img src="{{ '/assets/img/' | append: project.picture | relative_url }}" alt="{{ project.name }}" style="max-height: 340px" />
        {% endif %}
      </div>
    </div>
  {% endfor %}
</section>
