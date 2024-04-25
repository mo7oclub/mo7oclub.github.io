---
layout: page
title: Clubes
permalink: /clubes/
---
<div class="alert">
   <center>
      <h3>Não encontrou seu clube?</h3>
      <p class="subtitle">Então não perde tempo!</p>
      <a class="btn" target="blank" href="https://forms.gle/LkJEBaNTR7mWiaiv7">Cadastrar meu clube 🤘</a>
   </center>
</div>
<table>
<thead>
  <th>Nome</th>
  <th>Cidade</th>
  <th>Estado</th>
  <th>Página</th>
</thead>
<tbody>
  {% for item in site.data.clubes.clubes%}
      <tr>
        <td>{{ item.title }}</td>
        <td>{{ item.city }}</td>
        <td>{{ item.uf }}</td>
        <td><a target="blank" href="{{ item.url }}">Página do clube</a></td>
        
      </tr>
   {% endfor %}
</tbody>
</table>