{
    grompp:
    {
        #gro_bin: "/sw/linux/gromacs/4.5/full/4.5.3/bin", # currently just sourcing GMXRC before
        local Emin_input_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/Input_notables/Emin/",
        local FF_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/FF_notables/",
        local sys =  "BMI-PF6",

        "mdp_file": {
            "class": "File",
            "path": Emin_input_path+sys+".mdp"
        },
        "gro_file": { 
            "class": "File",
            "path": FF_path+sys+".mapped.gro"
        },
        "top_file": { 
            "class": "File",
            "path": FF_path+sys+".top"
        },
        "index_file": {
            "class": "File",
            "path": FF_path+"index.ndx"
        },
        "tpr_name": sys+".tpr",
        "grout_name": "grout-"+sys+".mdp"
    }
}