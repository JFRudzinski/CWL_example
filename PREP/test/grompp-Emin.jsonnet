{
    #gro_bin: "/sw/linux/gromacs/4.5/full/4.5.3/bin", # currently just sourcing GMXRC before
    local Emin_input_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/Input/Emin/",
    local FF_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/FF/",
    local sys =  "BMI-PF6",

    "FF_path": FF_path,
    "mdp": {
        "class": "File",
        "path": Emin_input_path+sys+".mdp"
    },
    "gro": { 
        "class": "File",
        "path": FF_path+sys+".mapped.gro"
    },
    "top": { 
        "class": "File",
        "path": FF_path+sys+".top"
    },
    "index": {
        "class": "File",
        "path": FF_path+"index.ndx"
    },
    "tpr": sys+".tpr",
    "mdout": "mdout-"+sys+".mdp"
    // "mdout": {
    //     "class":"File",
    //     "path": "mdout-"+sys+".mdp"
    // }
}