#!/usr/bin/env bashio

ARGS="-c /rtl_433.conf"
if ! bashio::config.is_empty 'args'; then
  ARGS="${ARGS} $(bashio::config 'args')"
fi

if bashio::config.true 'use_core_mqtt_addon'; then
  if bashio::services.available "mqtt"; then
    ARGS="${ARGS} -F mqtt://$(bashio::services 'mqtt' 'host'):$(bashio::services 'mqtt' 'port'),user=$(bashio::services 'mqtt' 'username'),pass=$(bashio::services 'mqtt' 'password')"
    if bashio::config.true 'core_mqtt_retain'; then
      ARGS="${ARGS},retain=1"
    fi
    if ! bashio::config.is_empty 'core_mqtt_extra'; then
      ARGS="${ARGS},$(bashio::config 'core_mqtt_extra')"
    fi
  else
    bashio::log.error "The Core MQTT Addon is not available, please install it or manually enter MQTT connection settings and restart the addon."
  fi
fi

bashio::log.info "Starting /rtl_433 ${ARGS}"
/rtl_433 ${ARGS}
