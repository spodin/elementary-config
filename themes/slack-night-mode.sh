#! /bin/bash

# Slack Night Mode Theme

# Tested on elementary OS 0.4.1 Loki.
#
# Looks good with `Aubergine` sidebar theme
# and `Always Show Menu Bar` turned off.

cat << 'EOF' >> /usr/lib/slack/resources/app.asar.unpacked/src/static/ssb-interop.js
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://cdn.rawgit.com/laCour/slack-night-mode/master/css/raw/black.css',
   success: function(css) {
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
EOF
echo If Slack.app is already running, refresh with CMD-R

