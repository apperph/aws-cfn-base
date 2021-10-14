#!/bin/bash

set -euo pipefail

pip3 install yamllint cfn-lint

cat << EOT > .git/hooks/pre-commit
#!/bin/bash

yamllint . && cfn-lint
exit \$?
EOT

chmod +x .git/hooks/pre-commit

echo "Git hooks successfully installed!"
