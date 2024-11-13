---
layout: default
title: Yvan Volochine
tagline: music
group: index
---

{% include menu.md items=site.data.menu %}
<section>
  <p class="main">
    Multi artist specialized in noise music, psycho-acoustic performances, art installations and code.<br />
    Now focusing on the physicality of the (guitar) sound, playing as much with the PA as with his instrument.<br />
    <br /><br />
    Located in
    {% for city in site.data.cities %}{% unless forloop.last %}<span class="strike">{{ city.name }}</span>,&nbsp;{% else %}{{ city.name }}{% endunless %}{% endfor %}.
  </p>
</section>
<section class="music">
  <h4>Past & Future events</h4>
  <ol class="gigs" reversed="reversed">
  {% capture nowunix %}{{site.time | date: '%s'}}{% endcapture %}
  {% for gig in site.data.gigs %}
    {% capture eventdate %}{{gig.date | date: '%s'}}{% endcapture %}
    <li>
    {% if eventdate < nowunix %}
      <span class="past">
    {% else %}
      <span class="future">
    {% endif %}
      <span class="date">{{ gig.date }}</span> – <span class="location">{{ gig.location }}</span>
      <span class="infoo">{{ gig.text }}</span>
      </span>
    </li>
  {% endfor %}
  </ol>
</section>
