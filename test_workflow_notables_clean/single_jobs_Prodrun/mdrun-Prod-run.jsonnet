{
    #gro_bin: "/sw/linux/gromacs/4.5/full/4.5.3/bin", # currently just sourcing GMXRC before
    local input_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/Input_notables/Prod_run/",
    local FF_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/FF_notables/",
    local sys =  "BMI-PF6",
    local types = ['I1', 'I2', 'I3', 'CT', 'PF'],
    local types_indices = std.range(0,std.length(types)-1),
    local table_pair_paths =  [ 
        FF_path+"table_"+types[i]+"_"+types[j]+".xvg"
        for i in types_indices for j in types_indices[i:]
    ],
    local n_bonds = 4,
    local table_bond_paths =  [ 
        FF_path+"table_b"+i+".xvg"
        for i in std.range(0,n_bonds-1)
    ],
    local n_angles = 5,
    local table_angle_paths =  [ 
        FF_path+"table_a"+i+".xvg"
        for i in std.range(0,n_angles-1)
    ],
    local table_paths = table_pair_paths+table_bond_paths+table_angle_paths,

    "tpr_file": { 
        "class": "File",
        "path": sys+".tpr"
    },
    "trr_name": sys+".trr",
    "gro_out_name": sys+".confout.gro",
    "table_file": {
        "class": "File",
        "path": FF_path+"table.xvg"
    }, 
    // "table_flag": true,
    // "tableb_flag": true,
    // "tables": [  // Array comprehension.
    //     { "class": "File", path: path }
    //     for path in table_paths
    //   ],
    "edr_name": sys+".edr",
    "mdout_name": "mdout-"+sys+".mdp"

}