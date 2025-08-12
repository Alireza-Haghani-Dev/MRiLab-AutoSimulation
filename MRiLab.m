
%%%%%%%%%%%%%%%%%%%% MRiLab setup%%%%%%%%%%%%%%%%%%%%%%
function MRiLab

    warning off; % disable warning
    
    [pathstr,name,ext]=fileparts(mfilename('fullpath'));
    addpath(genpath(pathstr));
    % Remove unnessary search path
    rmpath(genpath([pathstr filesep '.git']));
    rmpath(genpath([pathstr filesep 'Doc']));
global weights;
n_DataSet=1;% number of datasets
n=4;%number of shim coils
for i=1:n_DataSet

weights=(rand(n,1)-0.5)/100000;% random number of current normalized to 10e4
     
        SimuPanel(pathstr); % Call the function with 'pathstr'
         % Define the data to append
global weights;
% Open the file in append mode
fileID = fopen('Weights.txt', 'a');

% Check if the file opened successfully
if fileID == -1
    error('Failed to open the file.');
    
end
% Write the data to the file
fprintf(fileID, '%d %d %d %d\n', weights);

% Close the file
fclose(fileID);

end
   
    clear pathstr name ext

end