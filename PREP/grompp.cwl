#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: $(inputs.bin)grompp
stdout: grompp.log
inputs:
  mdp:
    type: File
    inputBinding:
      prefix: -f
      separate: true
      position: 1
  gro:
    type: File
    inputBinding:
      prefix: -c
      position: 2
  top:
    type: File
    inputBinding:
      prefix: -p
      position: 3
  index:
    type: File
    inputBinding:
      prefix: -n
      position: 4
  tpr:
    type: File
    inputBinding:
      prefix: -o
      position: 5
  mdout:
    type: File?
    inputBinding:
      prefix: -po
      position: 6

outputs:
  grompp_log:
    type: stdout