# Script to start "appwidget" on the device, which has a very rudimentary shell.
base=/system
export CLASSPATH=$base/framework/appwidget.jar
exec app_process $base/bin com.android.commands.appwidget.AppWidget "$@"

