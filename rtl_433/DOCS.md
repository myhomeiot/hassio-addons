# myhomeiot Home Assistant Add-on: rtl_433

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```yaml
args: '-f 868.3M -R 172 -R 173 -M time:tz'
use_core_mqtt_addon: true
core_mqtt_extra: events=rtl_433[/id]
core_mqtt_retain: true
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option: `args`

The `args` configures rtl_433 options, more info you can found [here](https://github.com/merbanan/rtl_433#running).

### Option: `use_core_mqtt_addon`

The `use_core_mqtt_addon` option configures rtl_433 to use Core MQTT Addon (should be installed separately).
The rtl_433 option -F mqtt://host:port,user=user,pass=password will be build using
Core MQTT Addon settings and added at the end of the `args`.

### Option: `core_mqtt_extra`

The `core_mqtt_extra` option controls extra options of Core MQTT Addon settings, such as the <format>[=topic].
This option used together with `use_core_mqtt_addon`.

### Option: `core_mqtt_retain`

The `core_mqtt_retain` option controls retain option of rtl_433 MQTT messages.
This option used together with `use_core_mqtt_addon`.
