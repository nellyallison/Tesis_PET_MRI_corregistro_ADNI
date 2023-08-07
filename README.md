# Tesis_PET_MRI_corregistro_ADNI-
Este repositorio es para guardar todos los códigos, datas, tablas y otros que se utilizaron en la ejecución de mi tesis de Pregrado en la UNMSM.   

## Esquema de procesamiento de corregistro PET-MRI y segmentación basada en atlas MNI

![image](https://github.com/nellyallison/Tesis_PET_MRI_corregistro_ADNI/assets/137833358/ae943c3d-1f96-4904-91e9-c1bb245a7e1c)

## Arquitectura de los datos 
- PET original (sin corregistrar): `/data_ADNI/sub_01/pet.nii.gz`
- MRI original: `/data_ADNI/sub_01/mri.nii.gz`
- PET corregistrado por el método 1: `/data_ADNI/sub_01/pet_1.nii.gz`
- PET corregistrado por el método 2: `/data_ADNI/sub_01/pet_2.nii.gz`
- Template y atlas MNI original: `/data_ADNI/MNI/`  
- Máscaras del MNI corregistradas: `/data_ADNI/sub_01/X_region_cerebral.nii.gz`
- Todos los resultados disponibles en: `/analisis/`
- Todos los codigos disponibles en: `/codigos/`
  
# Agradecimiento: 

*Data used in preparation of this article were obtained from the Alzheimer’s Disease Neuroimaging Initiative (ADNI) database (adni.loni.usc.edu). As such, the investigators within the ADNI contributed to the design and implementation of ADNI and/or provided data
but did not participate in analysis or writing of this report. A complete listing of ADNI investigators can be found at:
http://adni.loni.usc.edu/wp-content/uploads/how_to_apply/ADNI_Acknowledgement_List.pdf 

# Bibliografía: 

1. Mueller SG, Weiner MW, Thal LJ, Petersen RC, Jack C, Jagust W, Trojanowski JQ, Toga AW, Beckett L. The Alzheimer's disease neuroimaging initiative. Neuroimaging Clin N Am. 2005 Nov;15(4):869-77, xi-xii. doi: 10.1016/j.nic.2005.09.008. PMID: 16443497; PMCID: PMC2376747.
2. Toussaint N, Souplet JC, Fillard P. MedINRIA: Medical Image Navigation and Research Tool by INRIA. In 2007 [cited 2022 Dec 5]. Available from: https://hal.inria.fr/inria-00616047
3. Avants BB, Tustison NJ, Song G, Cook PA, Klein A, Gee JC. A reproducible evaluation of ANTs similarity metric performance in brain image registration. Neuroimage. 2011;54:2033–44.
4. Klein S, Staring M, Murphy K, Viergever MA, Pluim JPW. elastix: A Toolbox for Intensity-Based Medical Image Registration. IEEE Transactions on Medical Imaging. 2010;29:196–205.
5. Fonov V, Evans A, McKinstry R, Almli C, Collins D. Unbiased nonlinear average age-appropriate brain templates from birth to adulthood. NeuroImage. 2009;47:S102.
6. Kikinis R, Pieper SD, Vosburgh K (2014) 3D Slicer: a platform for subject-specific image analysis, visualization, and clinical support. Intraoperative Imaging Image-Guided Therapy, Ferenc A. Jolesz, Editor 3(19):277–289 ISBN: 978-1-4614-7656-6 (Print) 978-1-4614-7657-3 (Online).

