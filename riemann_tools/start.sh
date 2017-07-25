#!/bin/bash
riemann-dash /usr/src/riemann_dash/config.rb &
riemann-health
