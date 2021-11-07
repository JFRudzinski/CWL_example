#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: mdrun
stdout: mdrun.log

requirements:
  InlineJavascriptRequirement: {}
  InitialWorkDirRequirement:
    listing: $(inputs.tables)
    # listing: tables

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
  table_flag:
    type: boolean
    inputBinding:
      position: 4
      prefix: -table
  tableb_flag:
    type: boolean
    inputBinding:
      position: 5
      prefix: -tableb
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