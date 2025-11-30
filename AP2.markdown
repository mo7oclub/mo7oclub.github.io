---
layout: page
title: Alforge Para 2
permalink: /ap2/
---

Se você é apaixonado por viagens de moto e está em busca de roteiros incríveis para explorar com sua companhia, você está no lugar certo! No nosso canal, compartilhamos nossas aventuras e experiências com a nossa fiel companheira, Eva (Meteor 350). 

Venha se inspirar e descobrir novos destinos conosco!



<p>
{%- if site.categories.ap2.size > 0 -%}
    <h2 class="post-list-heading">{{ page.list_title | default: "Última aventura" }}</h2>
    <ul class="post-list">
      {%- for post in site.categories.ap2 -%}
      <li>
        {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
        <span class="post-meta">{{ post.date | date: date_format }}</span>
        <h3>
          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.title | escape }}
          </a>
        </h3>
        {{ post.content }}
        {%- if site.show_excerpts -%}
          {{ post.excerpt }}
        {%- endif -%}
      </li>
      {%- endfor -%}
    </ul>
{%- endif -%}

Segue a gente nas outras redes:
<ul>
<li><a href="https://instagram.com/mo7o.club">Instagram</a></li>
<li><a href="https://www.tiktok.com/@mo7o.club">TikTok</a></li>
</ul>
