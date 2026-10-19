#!/usr/bin/env bash
# Tampilkan pemakaian RAM dalam GB: used/total (used = active + wired + compressed, versi macOS)
total=$(sysctl -n hw.memsize)
vm_stat | awk -v t="$total" '
  /page size of/ {ps=$8}
  /Pages active/ {a=$3} /Pages wired down/ {w=$4} /occupied by compressor/ {c=$5}
  END {printf "%.1f/%.1f GB", (a+w+c)*ps/1073741824, t/1073741824}'
