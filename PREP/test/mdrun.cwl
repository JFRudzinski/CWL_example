#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: mdrun
stdout: mdrun.log

requirements:
  InitialWorkDirRequirement:
    listing: $(inputs.tables)

inputs:
  tpr:
    type: File
    inputBinding:
      prefix: -s
      position: 1
  trr:
    type: string
    inputBinding:
      prefix: -o
      position: 2
  gro_out:
    type: string
    inputBinding:
      prefix: -c
      position: 3
  table:
    type: boolean
    inputBinding:
      position: 4
      prefix: -table
  tableb:
    type: boolean
    inputBinding:
      position: 5
      prefix: -tableb
  edr:
    type: string
    inputBinding:
      prefix: -e
      position: 6
  mdout:
    type: string
    inputBinding:
      prefix: -g
      position: 7

outputs:
  trr:
    type: File
    outputBinding:
      glob: $(inputs.trr)
  edr:
    type: File
    outputBinding:
      glob: $(inputs.edr)
  mdout:
    type: File?
    outputBinding:
      glob: $(inputs.mdout)

  mdrun.log:
    type: stdout