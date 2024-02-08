---
layout: page
title: Clubes
permalink: /clubes/
---

<table>
<thead>
  <th>Nome</th>
  <th>Cidade</th>
  <th>Estado</th>
  <th>Página</th>
</thead>
<tbody>
  {% for item in site.data.clubes.clubes | sort: "uf"  %}
      <tr>
        <td>{{ item.title }}</td>
        <td>{{ item.city }}</td>
        <td>{{ item.uf }}</td>
        <td><a href="{{ item.url }}">Página do clube</a></td>
        
      </tr>
   {% endfor %}
</tbody>
</table>