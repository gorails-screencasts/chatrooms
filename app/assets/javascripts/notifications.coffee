jQuery ->
  if Notification.permission == "default"
    Notification.requestPermission()
