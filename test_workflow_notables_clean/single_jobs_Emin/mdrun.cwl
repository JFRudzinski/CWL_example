#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: mdrun
stdout: mdrun.log

inputs:
  tpr_file:
    type: File
    inputBinding:
      prefix: -s
      position: 1
  trr_name:
    type: string
    inputBinding:
      prefix: -o
      position: 2
  gro_out_name:
    type: string
    inputBinding:
      prefix: -c
      position: 3
  table_file:
    type: File
    inputBinding:
      position: 4
      prefix: -table
  edr_name:
    type: string
    inputBinding:
      prefix: -e
      position: 6
  mdout_name:
    type: string
    inputBinding:
      prefix: -g
      position: 7

outputs:
  trr_file:
    type: File
    outputBinding:
      glob: $(inputs.trr_name)
  gro_out_file:
    type: File
    outputBinding:
      glob: $(inputs.gro_out_name)
  edr_file:
    type: File
    outputBinding:
      glob: $(inputs.edr_name)
  mdout_file:
    type: File?
    outputBinding:
      glob: $(inputs.mdout_name)

  mdrun_log:
    type: stdout