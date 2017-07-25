#!/bin/bash
riemann-0.2.14/bin/riemann etc/riemann.config &
riemann-dash &
riemann-client &
rienmann-health
