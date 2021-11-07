#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
requirements:
  SubworkflowFeatureRequirement: {}
  InlineJavascriptRequirement: {}
  StepInputExpressionRequirement: {}
inputs:
  mdp_file: File
  gro_file: File
  top_file: File
  index_file: File?
  tpr_name: string
  grout_name: string
  trr_name: string
  gro_out_name: string
  table_flag: boolean
  tableb_flag: boolean
  edr_name: string  
  mdout_name: string
  # tables: File[]


outputs:
  tpr_file:
    type: File
    outputSource: grompp/tpr_file
  grout_file:
    type: File?
    outputSource: grompp/grout_file
  # grompp_log_file:
  #   type: stdout
  #   outputSource: grompp/grompp_log_file
  trr_file:
    type: File
    outputSource: mdrun/trr_file
  edr_file:
    type: File?
    outputSource: mdrun/edr_file
  mdout_file:
    type: File?
    outputSource: mdrun/mdout_file

steps:
  grompp:
    run: grompp.cwl
    in:
      mdp_file: mdp_file
      gro_file: gro_file
      top_file: top_file
      index_file: index_file
      tpr_name: tpr_name
      grout_name: grout_name
    out: [tpr_file, grout_file]

  mdrun:
    run: mdrun.cwl
    requirements: { 
      InlineJavascriptRequirement: {},
      InitialWorkDirRequirement: {listing: $(inputs.tables)} 
      }
    # requirements: { InitialWorkDirRequirement: {listing: tables} }
    in:
      tpr_file: grompp/tpr_file
      trr_name: trr_name
      gro_out_name: gro_out_name
      table_flag: table_flag
      tableb_flag: tableb_flag
      edr_name: edr_name
      mdout_name: mdout_name
      # tables: tables
        # source: tables
        # valueFrom: $(inputs.tables)
      # in: 
      #   valueFrom: $(inputs.tables)
    out: [trr_file, edr_file, mdout_file]