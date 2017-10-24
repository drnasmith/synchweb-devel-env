# SynchWeb Virtual Development Environment

## Introduction
This project allows you to generate a vagrant based dev environment.

It uses Ansible for provisioning.

It can generate:
- a standalone machine with apache, php, synchweb and mariadb in one box.
- a multimachine setup web: apache, php and synchweb db: mariadb server.

The folders should include a share folder which will be synched to the VM.
For the web development role synchweb will be checked out to share/

## Setup
* Decide which option you want (multi_machine or standalone)
* cd into the dir (e.g. synchweb_multi_machine)
* Sym link the playbooks file, ln -s ../playbooks
* Run vagrant up
* This should download the centos box and provision the machine(s)
* Try using a web browser on http://localhost:8080 to see the Synchweb pages

## Reprovision
* If you need to re-run the provisioning (after a change) run sh run-playbook.sh <name of playbook>

## Cleanup
* cd into the dir and run vagrant destroy
* This should cleanup and delete the vagrant box

## Notes 
* We don't have many template files so they are stored under roles/<role>/files
* Could be moved to separate templates folder at a later date...
* There are lots of sql files (under roles/dbserver/files) that can be imported into the db - they will need checking to make sure you get what you need. 
