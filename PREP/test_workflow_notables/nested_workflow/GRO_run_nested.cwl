#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow

requirements:
  SubworkflowFeatureRequirement: {}

inputs:
  mdp_file_Emin: File
  gro_file_Emin: File
  top_file_Emin: File
  index_file_Emin: File?
  tpr_name_Emin: string
  grout_name_Emin: string
  trr_name_Emin: string
  gro_out_name_Emin: string
  table_file_Emin: File
  edr_name_Emin: string  
  mdout_name_Emin: string
  mdp_file_Prodrun: File
  gro_file_Prodrun: File
  top_file_Prodrun: File
  index_file_Prodrun: File?
  tpr_name_Prodrun: string
  grout_name_Prodrun: string
  trr_name_Prodrun: string
  gro_out_name_Prodrun: string
  table_file_Prodrun: File
  edr_name_Prodrun: string  
  mdout_name_Prodrun: string


outputs:
  tpr_file_Emin:
    type: File
    outputSource: GRO_run_Emin/tpr_file
  grout_file_Emin:
    type: File?
    outputSource: GRO_run_Emin/grout_file
  trr_file_Emin:
    type: File
    outputSource: GRO_run_Emin/trr_file
  gro_out_file_Emin:
    type: File?
    outputSource: GRO_run_Emin/gro_out_file
  edr_file_Emin:
    type: File?
    outputSource: GRO_run_Emin/edr_file
  mdout_file_Emin:
    type: File?
    outputSource: GRO_run_Emin/mdout_file
  tpr_file_Prodrun:
    type: File
    outputSource: GRO_run_Prodrun/tpr_file
  grout_file_Prodrun:
    type: File?
    outputSource: GRO_run_Prodrun/grout_file
  trr_file_Prodrun:
    type: File
    outputSource: GRO_run_Prodrun/trr_file
  gro_out_file_Prodrun:
    type: File?
    outputSource: GRO_run_Prodrun/gro_out_file
  edr_file_Prodrun:
    type: File?
    outputSource: GRO_run_Prodrun/edr_file
  mdout_file_Prodrun:
    type: File?
    outputSource: GRO_run_Prodrun/mdout_file

steps:
  GRO_run_Emin:
    run: /data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/test_workflow_notables/workflow/GRO_run.cwl
    in:
      mdp_file: mdp_file_Emin
      gro_file: gro_file_Emin
      top_file: top_file_Emin
      index_file: index_file_Emin
      tpr_name: tpr_name_Emin
      grout_name: grout_name_Emin
      trr_name: trr_name_Emin
      gro_out_name: gro_out_name_Emin
      table_file: table_file_Emin
      edr_name: edr_name_Emin
      mdout_name: mdout_name_Emin
    out: [tpr_file, grout_file, trr_file, gro_out_file, edr_file, mdout_file]

  GRO_run_Prodrun:
    run: /data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/test_workflow_notables/workflow/GRO_run.cwl
    in:
      mdp_file: mdp_file_Prodrun
      gro_file: gro_file_Prodrun
      top_file: top_file_Prodrun
      index_file: index_file_Prodrun
      tpr_name: tpr_name_Prodrun
      grout_name: grout_name_Prodrun
      trr_name: trr_name_Prodrun
      gro_out_name: gro_out_name_Prodrun
      table_file: table_file_Prodrun
      edr_name: edr_name_Prodrun
      mdout_name: mdout_name_Prodrun
    out: [tpr_file, grout_file, trr_file, gro_out_file, edr_file, mdout_file]