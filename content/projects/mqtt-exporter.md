---
title: mqtt-exporter
description: Exporter des messages MQTT via Prometheus
date: 2023-07-13
---

Cet outil permet d'exporter des données scalaire de type `int` ou `float` depuis des messages MQTT vers Prometheus.

L'idée de cet exporter est de ne pas avoir à déployer une stack complexe de surveillance IoT. Au lieu d'avoir à utiliser une base de données de séries chronologies, j'ai souhaité pouvoir simplement me reposer sur une stack de surveillance basée sur Prometheus déjà déployée où je peux utiliser PromQL pour interroger et visualiser ces données, dans Grafana notamment.

Voici un exemple des métriques exportées par Prometheus à partir des configurations suivantes :

```toml
broker = "localhost:1883"

[[topics]]
name = "zigbee2mqtt/my_thermostat"
fields = [
    "outside_temperature",
    "inside_temperature",
]
```

```txt
# HELP mqtt_topic_field
# TYPE mqtt_topic_field gauge
mqtt_topic_field{name="outside_temperature",topic="zigbee2mqtt/my_thermostat"} 12.6
mqtt_topic_field{name="inside_temperature",topic="zigbee2mqtt/my_thermostat"} 19
# HELP mqtt_topic_messages_total
# TYPE mqtt_topic_messages_total counter
mqtt_topic_messages_total{topic="zigbee2mqtt/my_thermostat"} 14
```

Vous pouvez retrouver les sources de ce projet [ici](https://github.com/gaelreyrol/udev-nix).
