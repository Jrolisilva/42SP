# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    r_dwssap.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jade-oli <jade-oli@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/18 19:33:55 by jade-oli          #+#    #+#              #
#    Updated: 2021/06/18 19:33:56 by jade-oli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

cat /etc/passwd | grep -v '#' | sed -n "n;p" | cut -d ':' -f1 | rev | sort -r | sed -n "$FT_LINE1 $FT_LINE2 p" | sed 's/$/, /' | tr -d '\n' | sed 's/, $/./' | tr -d '\n'
