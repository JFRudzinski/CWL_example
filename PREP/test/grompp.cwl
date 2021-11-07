#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: grompp
stdout: grompp.log
inputs:
  mdp_file:
    type: File
    inputBinding:
      prefix: -f
      separate: true
      position: 1
  gro_file:
    type: File
    inputBinding:
      prefix: -c
      position: 2
  top_file:
    type: File
    inputBinding:
      prefix: -p
      position: 3
  index_file:
    type: File?
    inputBinding:
      prefix: -n
      position: 4
  tpr_name:
    type: string
    inputBinding:
      prefix: -o
      position: 5
  grout_name:
    type: string
    inputBinding:
      prefix: -po
      position: 6
outputs:
  tpr_file:
    type: File
    outputBinding:
      glob: $(inputs.tpr_name)
  grout_file:
    type: File?
    outputBinding:
      glob: $(inputs.mdout_name)
  grompp_log:
    type: stdout