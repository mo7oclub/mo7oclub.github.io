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

<table>
<thead>
  <th>Data</th>
  <th>Nome</th>
  <th>Link</th>
</thead>
<tbody>
  {% for item in site.data.eventos.eventos | sort: "date" %}
      <tr>
        <td>{{ item.date }}</td>
        <td>{{ item.title }}</td>
        <td><a href="{{ item.url }}">Página do evento</a></td>
        
      </tr>
   {% endfor %}
</tbody>
</table>