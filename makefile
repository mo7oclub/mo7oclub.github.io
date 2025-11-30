
down:
	docker compose down

up:
	docker compose up -d

logs:
	docker compose logs -f jekyll

build:
	docker rmi local/jekyll:latest
	docker compose build

video:
	@if [ -z "$(TITLE)" ]; then echo "Erro: TITLE é obrigatório. Use: make video TITLE='Seu Título' ID='youtube-id' DATE='YYYY-MM-DD'"; exit 1; fi
	@if [ -z "$(ID)" ]; then echo "Erro: ID é obrigatório. Use: make video TITLE='Seu Título' ID='youtube-id' DATE='YYYY-MM-DD'"; exit 1; fi
	@if [ -z "$(DATE)" ]; then echo "Erro: DATE é obrigatório. Use: make video TITLE='Seu Título' ID='youtube-id' DATE='YYYY-MM-DD'"; exit 1; fi
	@echo "---" > _posts/$(DATE)-AP2.markdown
	@echo "layout: post" >> _posts/$(DATE)-AP2.markdown
	@echo "title:  '$(TITLE)'" >> _posts/$(DATE)-AP2.markdown
	@echo "date:   $(DATE) 00:00:00 -0300" >> _posts/$(DATE)-AP2.markdown
	@echo "categories: ap2" >> _posts/$(DATE)-AP2.markdown
	@echo "---" >> _posts/$(DATE)-AP2.markdown
	@echo "" >> _posts/$(DATE)-AP2.markdown
	@echo "" >> _posts/$(DATE)-AP2.markdown
	@echo "{% include youtubePlayer.html id='$(ID)' %}" >> _posts/$(DATE)-AP2.markdown
	@echo "Post criado: _posts/$(DATE)-AP2.markdown"