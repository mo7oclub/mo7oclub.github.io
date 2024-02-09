---
layout: page
title: Eventos
permalink: /eventos/
---
<!-- <ul>
   {% for item in site.data.eventos.eventos | sort: "date" %}
      <li><a href="{{ item.url }}">{{ item.title }} - {{item.date}}</a></li>
   {% endfor %}
</ul> -->
{% for mes in site.data.eventos.mes | sort: "date" %}
<h2>{{mes}}</h2>
{% endfor %}
<table>
<thead>
  <th>Data</th>
  <th>Nome</th>
  <th>Cidade</th>
  <th>Estado</th>
  <!-- <th>Link</th> -->
</thead>
<tbody>
  {% for item in site.data.eventos.eventos | sort: "date" %}
      <tr>
        <td>{{ item.date }}</td>
        <td>{{ item.title }}</td>
        <td>{{ item.city }}</td>
        <td>{{ item.uf }}</td>
        <!-- <td><a href="{{ item.url }}">Página do evento</a></td> -->
        
      </tr>
   {% endfor %}
</tbody>
</table>