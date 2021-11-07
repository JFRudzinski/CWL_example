#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow

inputs:
  mdp_file: File
  gro_file: File
  top_file: File
  index_file: File?
  tpr_name: string
  grout_name: string
  trr_name: string
  gro_out_name: string
  table_file: File
  edr_name: string  
  mdout_name: string


outputs:
  tpr_file:
    type: File
    outputSource: grompp/tpr_file
  grout_file:
    type: File?
    outputSource: grompp/grout_file
  trr_file:
    type: File
    outputSource: mdrun/trr_file
  gro_out_file:
    type: File?
    outputSource: mdrun/gro_out_file
  edr_file:
    type: File?
    outputSource: mdrun/edr_file
  mdout_file:
    type: File?
    outputSource: mdrun/mdout_file

steps:
  grompp:
    run: /data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/test_workflow_notables/single_jobs_Emin/grompp.cwl
    in:
      mdp_file: mdp_file
      gro_file: gro_file
      top_file: top_file
      index_file: index_file
      tpr_name: tpr_name
      grout_name: grout_name
    out: [tpr_file, grout_file]

  mdrun:
    run: /data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/test_workflow_notables/single_jobs_Emin/mdrun.cwl

    in:
      tpr_file: grompp/tpr_file
      trr_name: trr_name
      gro_out_name: gro_out_name
      table_file: table_file
      edr_name: edr_name
      mdout_name: mdout_name
    out: [trr_file, gro_out_file, edr_file, mdout_file]