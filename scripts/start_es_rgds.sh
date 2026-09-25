#!/bin/bash
# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2024 ROCKNIX (https://github.com/ROCKNIX)

### setup is the same
. $(dirname $0)/es_settings
. /etc/profile

# (Nelynes) RG DS Plus: canvas is 1.5x the real combined screen width (theme
# layout uses thirds, not literal pixels), matching the original
# RG DS's 1920x480 ratio scaled to the Plus's 1024px panels.
if [ "${QUIRK_DEVICE}" = "Anbernic RG DS Plus" ]; then
    RESOLUTION="3072 768"
else
    RESOLUTION="1920 480"
fi

emulationstation --log-path /var/log --no-splash --resolution ${RESOLUTION}
