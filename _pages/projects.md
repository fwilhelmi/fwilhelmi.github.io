---
layout: archive
title: "Projects"
permalink: /projects/
---

{% include base_path %}

{% for post in site.projects reversed %}
  {% include archive-single.html %}
{% endfor %}