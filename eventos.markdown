---
layout: page
title: Eventos
permalink: /eventos/
---

<div x-data='{
   "eventos": {{site.data.eventos.eventos | jsonify}},
   sort(col) {
      if(this.sortCol === col) this.sortAsc = !this.sortAsc;
      this.sortCol = col;
      this.eventos.sort((a, b) => {
        if(a[this.sortCol] < b[this.sortCol]) return this.sortAsc?1:-1;
        if(a[this.sortCol] > b[this.sortCol]) return this.sortAsc?-1:1;
        return 0;
      });
   },
   filter() {
      let value = document.querySelector("#filter-input").value;
      let events = {{site.data.eventos.eventos | jsonify}};
      
      this.eventos = events.filter((item) => {
         let list = [];
         for(prop in item) {
            item_value = item[prop].toLowerCase()
            list.push(item_value.includes(value))
         }
         return list.some(Boolean);
      });
      
   }
}'>

<input id="filter-input" class="search search-filter" type="text" x-on:keyup="filter()" placeholder="Pesquisar">
<table>
   <thead>
   <th x-on:click="sort('date')">Data</th>
   <th x-on:click="sort('title')">Nome</th>
   <th x-on:click="sort('city')">Cidade</th>
   <th x-on:click="sort('uf')">Estado</th>
   </thead>
<tbody>
  <template x-if="!eventos">
      <tr><td colspan="4"><i>Loading...</i></td></tr>
    </template>
    <template x-for="evento in eventos">
      <tr>
        <td x-text="evento.date"></td>   
        <td x-text="evento.title"></td>   
        <td x-text="evento.city"></td>   
        <td x-text="evento.uf"></td>   
      </tr>
    </template>
</tbody>
</table>
</div>