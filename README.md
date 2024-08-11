# R&B-SABO-BiLSTM
Free, but visible code will gradually be developed soon.

In MATLAB versions 2022 and above, you can run a test sample by opening main_start. m. The result outputs two variables, result1 and daset1. The first and second columns of result 1 represent the RMSE, R-squared, MAE, MAPE, and RPD metrics on the training and testing sets, respectively. The first and second columns of daset1 represent the true and predicted values on the test set, respectively.


dataset_1.mat corresponds to the dataset of the South China Sea:
"H" is the wave height; "tems" is the sea surface temperature; "wave-v" is the sea surface velocity; "wind-v" is the sea surface wind speed; "risk" is the risk value ranging from 0 to 1.

dataset_2.mat corresponds to the Indonesian continuous flow dataset:
"H_m" is the wave height; "tems" is the sea surface temperature; "wave-v" is the sea surface velocity; "wind-v" is the sea surface wind speed; "njd" stands for sea visibility; "risk" is the risk value ranging from 0 to 1.

PS: dataset_1 and dataset_2 are all 3D matrices, with the first and second dimensions representing latitude and longitude, and the third dimension representing time. H (1,1,2) represents the wave height at a certain moment in latitude and longitude.

