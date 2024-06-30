---
layout: page
title: Clubes
permalink: /clubes/
---
<div x-data='{
   "dt_atualizacao": {{site.data.clubes.dt_atualizacao | jsonify}},
   "clubes": {{site.data.clubes.clubes | jsonify}},
   "options": { timeZone: "UTC"},
   "lang": "pt-BR",
   sort(col) {
      if(this.sortCol === col) this.sortAsc = !this.sortAsc;
      this.sortCol = col;
      this.clubes.sort((a, b) => {
        if(a[this.sortCol] < b[this.sortCol]) return this.sortAsc?1:-1;
        if(a[this.sortCol] > b[this.sortCol]) return this.sortAsc?-1:1;
        return 0;
      });
   },
   filter() {
      let value = document.querySelector("#filter-input").value.toLowerCase();
      let clubs = {{site.data.clubes.clubes | jsonify}};
      
      this.clubes = clubs.filter((item) => {
         const props = ["city", "title", "uf"];
         let contains_list = [];
         let item_list = [];
         for(index in props) {
            prop = props[index];
           item_value = item[prop].toLowerCase();
               contains_list.push(item_value.includes(value));
            
         }
         return contains_list.some(Boolean);
      });
      
   }
}'>
   <div class="alert">
      <center>
         <h3>Não encontrou seu clube?</h3>
         <p class="subtitle">Então não perde tempo!</p>
         <a class="btn" target="blank" href="https://forms.gle/LkJEBaNTR7mWiaiv7">Cadastrar meu clube 🤘</a>
      </center>
   </div>
   <div class="stats">
   <div>
      <p>Atualizado em: <span x-text="(new Date(dt_atualizacao)).toLocaleDateString(lang, options)"></span></p>
      <p>Clubes cadastrados: <span x-text="(clubes.length)"></span></p>
   </div>
   <div>
      <input id="filter-input" class="search search-filter" type="text" x-on:keyup="filter()" placeholder="Pesquisar evento">
   </div>
</div>
<table>
   <thead>
   <th x-on:click="sort('title')">Nome</th>
   <th x-on:click="sort('city')">Cidade</th>
   <th x-on:click="sort('uf')">Estado</th>
   <th x-on:click="sort('url')">Página</th>
   </thead>
<tbody>
  <template x-if="!clubes">
      <tr><td colspan="4"><i>Loading...</i></td></tr>
    </template>
    <template x-for="clube in clubes">
      <tr>
         <td x-text="clube.title"></td>   
         <td x-text="clube.city"></td>   
         <td x-text="clube.uf"></td>   
         <td>
            <a target="blank" x-bind:href="clube.url" >Página do clube</a>
         </td>
      </tr>
    </template>
</tbody>
</table>
<div>