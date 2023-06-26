#!/bin/bash
for ite in {1..20}; 
	do
	printf -v j "%02g" $ite ;
	echo ${j}
 	
	cp data_final/sub_${j}/mri.nii.gz data_final/evaluadores/sub_${j}/mri.nii.gz
	cp data_final/sub_${j}/pet_2_mri_Warped.nii.gz data_final/evaluadores/sub_${j}/pet_1.nii.gz
	cp data_final/sub_${j}/elastix.nii.gz data_final/evaluadores/sub_${j}/pet_2.nii.gz

	#fslchfiletype NIFTI_GZ data_final/sub_${j}/mri.nii  
	#fslchfiletype NIFTI_GZ data_final/sub_${j}/pet.nii 

	#antsRegistrationSyNQuick.sh -d 3  -f data_final/sub_${j}/mri.nii.gz  -m mni/t1.nii.gz -o data_final/sub_${j}/t1_2_mri_ -t s
	#antsRegistrationSyNQuick.sh -d 3  -f data_final/sub_${j}/mri.nii.gz  -m data_final/sub_${j}/pet.nii.gz -o data_final/sub_${j}/pet_2_mri_ -t a

	#antsApplyTransforms -d 3 -i mni/atlas_all.nii.gz -o data_final/sub_${j}/atlas.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/0_brain_mask.nii.gz -o data_final/sub_${j}/0_brain_mask.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/1_Parietal.nii.gz -o data_final/sub_${j}/1_Parietal.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/2_Frontal.nii.gz -o data_final/sub_${j}/2_Frontal.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/3_Temporal.nii.gz -o data_final/sub_${j}/3_Temporal.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/4_Occipital.nii.gz -o data_final/sub_${j}/4_Occipital.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/5_Cerebellum.nii.gz -o data_final/sub_${j}/5_Cerebellum.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/6_Thalamus.nii.gz -o data_final/sub_${j}/6_Thalamus.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/7_Caudate.nii.gz -o data_final/sub_${j}/7_Caudate.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/8_BrainStem.nii.gz -o data_final/sub_${j}/8_BrainStem.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/9_Pallidum.nii.gz -o data_final/sub_${j}/9_Pallidum.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/10_Putamen.nii.gz -o data_final/sub_${j}/10_Putamen.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/11_ventriculos.nii.gz -o data_final/sub_${j}/11_ventriculos.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel
	#antsApplyTransforms -d 3 -i mni/12_gm_mask.nii.gz -o data_final/sub_${j}/12_gm_mask.nii.gz -r data_final/sub_${j}/mri.nii.gz -t data_final/sub_${j}/t1_2_mri_1Warp.nii.gz -t data_final/sub_${j}/t1_2_mri_0GenericAffine.mat  -n MultiLabel

	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] 
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/0_brain_mask.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/1_Parietal.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/2_Frontal.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/3_Temporal.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/4_Occipital.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/5_Cerebellum.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/6_Thalamus.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/7_Caudate.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/8_BrainStem.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/9_Pallidum.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/10_Putamen.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/11_ventriculos.nii.gz
	#MeasureImageSimilarity -d 3 -m MI[data_final/sub_${j}/mri.nii.gz , data_final/sub_${j}/pet_2_mri_Warped.nii.gz ,1,32] -x data_final/sub_${j}/12_gm_mask.nii.gz

	
	
done

