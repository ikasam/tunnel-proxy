function FindProxyForURL(url, host) {
  if (shExpMatch(host, "example.com")) {
    return "SOCKS5 localhost:1080; DIRECT";
  } else {
    return "DIRECT";
  }
}
