#! /usr/bin/env bash

systemctl --user daemon-reload

systemctl --user --now enable ssh-agent.service
