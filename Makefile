# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rlevilla <marvin@42lausanne.ch>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/20 13:41:06 by rlevilla          #+#    #+#              #
#    Updated: 2023/11/27 21:08:39 by rlevilla         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
all:
	up
up: docker compose -f ./srcs/docker-compose.yaml --build -d up
down: docker compose -f ./srcs/docker-compose.yaml down
stop: docker compose -f ./src/docker-compose.yml stop
rm: stop
	docker compose -f ./srcs/docker-compose.yaml rm
