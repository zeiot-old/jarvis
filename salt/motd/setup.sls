# Copyright (C) 2018 Nicolas Lamirault <nicolas.lamirault@gmail.com>

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

remove-old-motd:
  file.absent:
    - name: /etc/motd

symbolic-motd:
  file.symlink:
    - name: /etc/motd
    - target: /var/run/motd.dynamic
    - force: True
    - backupname: bak

dynamic-motd:
  file.recurse:
    - name: /etc/update-motd.d/
    - source: salt://motd/update-motd.d/
    - file_mode: 755
