build-and-push:
	docker build -t staging-codese-backend .
	aws ecr get-login-password --region ap-southeast-1 --profile h1sonath | docker login --username AWS --password-stdin 339712938940.dkr.ecr.ap-southeast-1.amazonaws.com
	docker tag staging-codese-backend:latest 339712938940.dkr.ecr.ap-southeast-1.amazonaws.com/staging-codese-backend:latest
	docker push 339712938940.dkr.ecr.ap-southeast-1.amazonaws.com/staging-codese-backend:latest