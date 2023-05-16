{{/* https://github.com/qdm12/gluetun/wiki/ProtonVPN */}}
{{- define "gluetun.protonvpn.openvpn.validation" -}}
  {{- include "gluetun.options.required" (dict
                                          "rootCtx" $
                                          "options" (list
                                                    "openvpnUser"
                                                    "openvpnPassword")) -}}
  {{- include "gluetun.unsupported.server.options" (dict
                                                  "rootCtx" $
                                                  "options" (list
                                                            "serverNames")) -}}
{{- end -}}

{{- define "gluetun.protonvpn.wireguard.validation" -}}
  {{- include "gluetun.unsupported.type" $ -}}
{{- end -}}
