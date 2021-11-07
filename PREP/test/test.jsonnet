{
    #gro_bin: "/sw/linux/gromacs/4.5/full/4.5.3/bin", # currently just sourcing GMXRC before
    local Emin_input_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/Input/Emin/",
    local FF_path = "/data/bee14/rudzinski/cluster_tmp_ext/FAIRmat/CWL_example/FF/",
    local sys =  "BMI-PF6",
    local types = ['I1', 'I2', 'I3', 'CT', 'PF'],
    "tpr": { 
        "class": "File",
        "path": sys+".tpr"
    },
    "trr": sys+".trr",
    "gro_out": sys+".confout.gro",
    "table": true,
    "tableb": true,
}