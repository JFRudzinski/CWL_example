#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: source
inputs:
  fnm:
    type: File
    inputBinding:
      position: 1
outputs: []