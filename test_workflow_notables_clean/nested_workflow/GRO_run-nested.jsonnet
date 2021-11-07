{
    # global variables
    local FF_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/FF_notables/",
    local sys =  "BMI-PF6",
    # Emin variables
    local Emin_input_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/Input_notables/Emin/",
    # Prodrun variables
    local input_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/Input_notables/Prod_run/",

    # Emin input
        # grompp input
        "mdp_file_Emin": {
            "class": "File",
            "path": Emin_input_path+sys+".mdp"
        },
        "gro_file_Emin": { 
            "class": "File",
            "path": FF_path+sys+".mapped.gro"
        },
        "top_file_Emin": { 
            "class": "File",
            "path": FF_path+sys+".top"
        },
        "index_file_Emin": {
            "class": "File",
            "path": FF_path+"index.ndx"
        },
        "tpr_name_Emin": sys+".tpr",
        "grout_name_Emin": "grout-"+sys+".mdp",
        
        # mdrun input
        "tpr_file_Emin": { 
            "class": "File",
            "path": sys+".tpr"
        },
        "trr_name_Emin": sys+".trr",
        "gro_out_name_Emin": sys+".confout.gro",
        "table_file_Emin": {
            "class": "File",
            "path": FF_path+"table.xvg"
        }, 
        "edr_name_Emin": sys+".edr",
        "mdout_name_Emin": "mdout-"+sys+".mdp",

    # Prodrun input
        # grompp input
        "mdp_file_Prodrun": {
            "class": "File",
            "path": input_path+sys+".mdp"
        },
        "gro_file_Prodrun": { 
            "class": "File",
            "path": FF_path+sys+".mapped.gro"
        },
        "top_file_Prodrun": { 
            "class": "File",
            "path": FF_path+sys+".top"
        },
        "index_file_Prodrun": {
            "class": "File",
            "path": FF_path+"index.ndx"
        },
        "tpr_name_Prodrun": sys+".tpr",
        "grout_name_Prodrun": "grout-"+sys+".mdp",
        
        # mdrun input
        "tpr_file_Prodrun": { 
            "class": "File",
            "path": sys+".tpr"
        },
        "trr_name_Prodrun": sys+".trr",
        "gro_out_name_Prodrun": sys+".confout.gro",
        "table_file_Prodrun": {
            "class": "File",
            "path": FF_path+"table.xvg"
        }, 
        "edr_name_Prodrun": sys+".edr",
        "mdout_name_Prodrun": "mdout-"+sys+".mdp"

}