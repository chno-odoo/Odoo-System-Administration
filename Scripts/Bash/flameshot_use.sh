echo '#!/bin/bash' > ~/flameshot-launcher.sh
echo 'xhost +local:' >> ~/flameshot-launcher.sh
echo '/usr/bin/flameshot gui' >> ~/flameshot-launcher.sh
chmod +x ~/flameshot-launcher.sh
