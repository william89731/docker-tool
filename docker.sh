#!/bin/bash

INFO()  {
  echo -e "\e[32m $*\e[39m";
}

WARN()  {
  echo -e "\e[33m $*\e[39m";
}

ERROR() {
  echo -e "\e[31m $*\e[39m";
  exit 1
}

PAUSE() {
  echo " " & sleep 3000
}

LOGO() {
  clear
  cat << "EOF"

  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠦⢤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠳⢦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢦⡄⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⡀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣦⡀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡄⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣉⣉⣙⠣⠄⠀⠀⠀⠉⠉⠉⠛⠶⢦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡄
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢀⣡⡴⠾⣿⡉⠛⢿⣦⠀⢀⣰⠶⠛⠛⠻⢶⣄⡙⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⡶⣶⣤⣀⠸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⣿⢃⢴⣿⣿⣿⣶⡀⠹⣶⠟⣡⣾⣿⣿⣶⡄⠙⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠋⢁⡴⢧⡀⢉⣛⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠈⣿⣿⣿⣿⣿⣷⠀⠟⠀⣿⣿⣿⣿⣿⣿⠀⢸⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⢀⣴⡟⠁⣰⡿⠁⠀⣹⠟⢋⣡⣿⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠟⣷⡀⠸⣿⣿⣿⡿⠃⠀⣦⠀⠛⣿⣿⣿⣿⡏⠀⣼⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⢀⣴⡾⠛⠉⡿⠸⡏⠀⢀⡾⠉⢉⣾⠯⣥⡈⠻⣧⠀⠀⠀⠀⠀⠀⠀⠸⣬⣿⡆⠀⠀⠁⠀⢀⣀⠘⢷⣤⡈⠉⠙⠃⣨⣾⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⣰⡏⠉⢇⡞⠶⢷⡀⠹⣄⠘⠀⣰⡟⠀⢀⡞⠉⠁⠺⣷⡀⠀⠀⠀⠀⠀⠀⠀⠙⢿⡷⣤⣴⣶⠞⠁⠀⠀⠙⠿⢾⣷⡿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⣿⠠⠀⠈⠓⠀⠠⢷⣄⠘⢷⣀⠹⡄⢠⡼⠀⠀⠀⢀⣿⢻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⢀⣿⠀⠀⠀⠀⠀⠀⠰⡦⠀⠀⠻⣆⡑⠏⠀⠀⠀⠀⣼⣿⡍⠛⢿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⢠⣾⢻⣦⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠚⠻⣦⣤⣤⣴⣿⣋⣹⣷⠀⢠⡈⢻⣿⣷⣦⣄⣤⣤⣄⣀⣤⣤⣤⣤⣤⣤⣤⣠⣤⣤⣤⣤⣤⣤⣤⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⢠⡟⠀⠘⢿⣆⡈⢷⣄⠀⠀⠀⠙⡄⠀⠛⠂⣀⠘⠠⠟⣿⣿⠁⣿⣀⣼⠟⠉⣀⠀⠸⣿⡟⣿⡿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⣿⡿⠟⠃⠀⠀⠀⠀⠀⠀⠀⠀
  ⢸⠁⠀⠀⠀⠻⠧⣄⣿⣷⡀⠀⠀⠀⠀⠀⠀⠈⠱⠀⠈⠙⣿⣿⣿⣿⡿⠷⠂⠹⢧⠀⣾⣿⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀
  ⢸⠀⠀⠀⠀⠀⠀⠹⠿⣿⣻⣦⡀⠀⠀⠀⠀⠀⢀⡀⠀⠑⠾⣿⣿⡿⠸⠆⠠⠆⠀⠀⢸⢻⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⢣⡾⠃⠀
  ⡞⠀⢀⠀⠀⠀⠀⠀⠀⠐⠀⢙⣿⣦⡀⠀⠀⣴⠟⡁⠀⠀⣰⣿⡟⠓⢰⣆⡼⠦⢄⠀⠬⡷⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠴⢞⡵⠛⠀⠀⠀
  ⠇⠀⠘⠻⣦⣄⠄⠀⢠⡀⠀⠀⠛⠛⣷⣄⡀⠉⠀⠽⢀⣾⣿⠟⢀⣴⢾⡟⢧⡀⡀⠙⣆⣶⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠜⢃⡴⠋⠀⠀⠀⠀⠀
  ⣄⠀⠀⠀⠉⠛⢷⣄⠀⠙⣄⠀⠀⠀⠙⣏⡛⢷⣄⣘⢻⣿⡏⠀⢾⠁⠸⣷⣈⣿⣤⠾⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣎⣵⠾⠋⠀⠀⠀⠀⠀⠀⠀
  ⠸⣦⡄⠀⠀⠀⠀⡙⢷⣄⠈⠀⠀⠀⣀⡞⠁⡇⠈⣹⡿⠋⢷⠀⢸⡆⢠⣾⡿⠋⠙⠷⢦⣄⣀⣀⡀⠀⠀⠀⠀⠀⣀⣀⠀⠀⣀⣠⣿⠷⠞⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠈⠳⣄⡀⠀⠀⠀⠀⠈⠻⣦⣀⠀⠈⠀⠇⣃⡼⠟⠁⠀⠀⠳⢤⣷⡿⠟⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠙⠲⣤⡀⠀⠀⠀⣠⠙⠓⢶⣤⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠉⠓⠶⣤⣀⣘⣴⠞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀github.com/william89731⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

EOF
  sleep 3
  clear
}

DOCKER_STATUS() {
  command docker ps > /dev/null 2>&1 || DOCKER=("false")
  if [[  $DOCKER == "false" ]]; then
    clear
    ERROR "found problem docker service"
  fi
}


CHECK(){
  clear
  INFO "check updates.."
  sleep 5
  command kubectl get no > /dev/null 2>&1 || KUBECTL=("not found")

  if [[  $KUBECTL != "not found" ]]; then

  IMAGES=$(kubectl get po -A -o jsonpath="{.items[*].spec.containers[*].image}" |
          tr -s '[[:space:]]' '\n' |
          sort |
          uniq -c |
          awk '{print  $2}' |
          awk '{gsub("quay.io/", "");print}' |
          awk '{gsub("docker.io/", "");print}')
  else
  IMAGES=$(docker images --format "{{.Repository}}:{{.Tag}}")
  fi
  #Images=neuvector/controller:5.3.0
  for IMAGE in $IMAGES; do
  REPO=$(printf '%s' "$IMAGE" | cut -f1 -d":")
  VTAG=$(printf '%s' "$IMAGE" | cut -f2 -d":" | cut -b1)
  VERSION=$(printf '%s' "$IMAGE" | cut -f2 -d":")
  LIBRARY=$(printf '%s' "$REPO" | grep /)
  APIREPO="https://registry.hub.docker.com/v2/repositories/${REPO}/tags?page_size=50"
  APILIBRARY="https://registry.hub.docker.com/v2/repositories/library/${REPO}/tags?page_size=50"
  LATEST=$(
    if [[ $REPO == "koenkk/zigbee2mqtt" ]]; then
    curl --silent $APIREPO \
    | jq -r ".results[].name" | sort --version-sort -r \
    | grep  -E -x '([0-9]+).[0-9]+.[0-9]+' \
    | head -n 1

    elif [[ ($REPO == "neuvector/controller") || ($REPO == "neuvector/enforcer") || ($REPO == "neuvector/manager") || ($REPO == "neuvector/scanner") ]]; then
    curl --silent https://registry.hub.docker.com/v2/repositories/${REPO}/tags?page_size=10 \
    | jq -r ".results[].name" | sort --version-sort -r \
    | grep  -E -x '([0-9]+).[0-9]+.[0-9]+' \
    | head -n 1

    elif [[ $REPO == "rabbitmq" ]]; then
    curl --silent $APILIBRARY \
    | jq -r ".results[].name" | sort --version-sort -r \
    | grep  -E -x '[0-9]+.[0-9]+.[0-9]+-management-alpine' \
    | head -n 1

    elif [[ -z $LIBRARY ]]; then
    curl --silent $APILIBRARY \
    | jq -r ".results[].name" | sort --version-sort -r \
    | grep  -E -x '(v[0-9]+||[0-9]+).[0-9]+.[0-9]+' \
    | head -n 1

    elif [[ ! -z $LIBRARY ]]; then
    curl --silent $APIREPO \
    | jq -r ".results[].name" | sort --version-sort -r \
    | grep  -E -x '(v[0-9]+||[0-9]+).[0-9]+.[0-9]+' \
    | head -n 1

    else
    ERROR "error"
    fi
  )

  if [[ $LATEST != $VERSION ]]; then
  echo "$IMAGE" >> /tmp/images.txt; INFO "|____$LATEST" >> /tmp/images.txt
  fi

  done

  clear

  if [[ -f /tmp/images.txt ]]; then
  WARN "update available:"
  cat /tmp/images.txt
  rm /tmp/images.txt

  else
    INFO "no image found for update"
  fi
}

SCAN() {
  clear
  echo  -e "\033[5mscan $IMG\033[0m"
  docker run --rm -v /tmp/trivy-scan/trivy_database:/root/.cache/ -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy \
   image --scanners \
   vuln --severity HIGH,CRITICAL $IMG

}

CLEAN() {
  clear
  INFO "clean unused $RESOURCE.."
  sleep 3
  case $RESOURCE in
    SYSTEM)
    command docker system prune -f
    ;;

    IMAGES)
    command docker image prune -f
    ;;

    CONTAINERS)
    command docker container prune -f
    ;;

    NETWORK)
    command docker network prune -f
    ;;

    VOLUME)
    command docker volume prune -f
    ;;

    *)
    ERROR
    ;;
  esac


}

UPDATE() {
  clear
  INFO "install/update docker compose.."
  COMPOSE_DIR=${COMPOSE_DIR:-~/.docker/cli-plugins/docker-compose}
  VERSION=$(curl -sL https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')
  command sudo rm -f ~/.docker/cli-plugins/docker-compose > /dev/null 2>&1
  command mkdir -p ~/.docker/cli-plugins
  command curl -sL https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $COMPOSE_DIR
  command sudo chmod +x $COMPOSE_DIR
  echo ""
  command docker compose version

}

REMOVE() {
  clear
  INFO "remove docker compose.."
  sleep 5
  command sudo rm -f ~/.docker/cli-plugins/docker-compose > /dev/null 2>&1
  echo ""
  echo "docker compose removed"
}

DOCKER_GET() {
  clear
  INFO "install docker.."
  command sudo apt-get update 1>/dev/null
  command sudo apt-get install -y docker.io 1>/dev/null
  echo ""
  command docker -v
}

DOCKER_DROP() {
  clear
  INFO "remove docker.."
  command sudo apt-get remove -y docker.io --purge 1>/dev/null
  command sudo rm -rf /var/lib/docker /etc/docker > /dev/null 2>&1
  command sudo rm /etc/apparmor.d/docker > /dev/null 2>&1
  command sudo groupdel docker
  sudo rm -rf /var/run/docker.sock > /dev/null 2>&1
  echo ""
  echo "docker removed"
}

ROUTINE() {
  clear
  OPTS=$(whiptail \
    --title "Docker  Tools" \
    --menu "choise action:" 20 58 7 \
    "CHECK" "check updates images" \
    "SCAN" "scan image docker" \
    "CLEAN" "clean system unused resource" \
    "INS/UPD" "install/update docker-compose" \
    "REMOVE" "uninstall docker-compose" \
    "DOCKER_get" "install docker " \
    "DOCKER_drop" "uninstall docker " 3>&2 2>&1 1>&3)

  case $OPTS in
      CHECK)
      DOCKER_STATUS
      CHECK
      #CHECK
      ;;

      SCAN)
      DOCKER_STATUS
      IMG=$(whiptail \
        --title "Docker  Helper" \
        --inputbox  "insert image:" 20 58  \
        "owner/repo" 3>&2 2>&1 1>&3)
      if [ $IMG ]; then
        SCAN

      else
        clear
        ERROR "exit"

      fi
      ;;

      CLEAN)
      DOCKER_STATUS
      RESOURCE=$(whiptail \
        --menu "clean resource?" 20 58 5 \
        "SYSTEM" "" \
        "IMAGES" "" \
        "CONTAINERS" "" \
        "NETWORK" "" \
        "VOLUME" "" 3>&2 2>&1 1>&3)
      if [ $RESOURCE ]; then
        CLEAN
      fi
      ;;

      INS/UPD)
      UPDATE
      ;;

      REMOVE)
      REMOVE
      ;;

      DOCKER_get)
      DOCKER_GET
      ;;

      DOCKER_drop)
      DOCKER_DROP
      ;;

      *)
      clear
      ERROR
      ;;

  esac

}

LOGO

ROUTINE
