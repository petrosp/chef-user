#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2011, Fletcher Nichol
#
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
#
user_account "deployer" do
  ssh_keys "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEIKPYl5frwAvMwVFVgZ/2WF0l7dhe3v+8FAVpOsMuJRFAGQuORPZ5ghsyaBYyRqrrKeUS71uhO70JuQQaT1QjkZ+N7BXhlO/JPuf+XZgn//P0LKAzdXm3UG2tWyJVrGPENViTtsk0nxGzVf//Zx61b3YXxf4M5B7STx92vPKRPuuL9ERigqrdm/4EBtpr+LR3zInXdzX6rQfBKwSJcy8qdFhNEIKhOJKiOfgA68REVKor18shz2vJJjMQVk/g8dO1/2ruCPagnlEMQzOFOU4jqm9iFjAtD1NMOassPvOi3DGv7VbUkuX7WdmhjDHDT8eFExncT6jtBZM5+cD6ACDb cacophoniks@gmail.com"
end

group "www-data" do
  members ["deployer"]
  append true
end
