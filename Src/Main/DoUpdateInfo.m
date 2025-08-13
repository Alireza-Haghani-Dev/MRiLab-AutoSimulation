
% function DoUpdateInfo(Simuh,Info)
    % 
    % string=get(Simuh.Info_listbox,'String');
    % time=clock;
    % string{end+1,1}=[num2str(time(4)) ':' num2str(time(5)) ':' num2str(round(time(6))) '>' Info];
    % set(Simuh.Info_listbox,'String',string,'Value',length(string));
    function DoUpdateInfo(~, message)
    % Print the message to the Command Window instead of a GUI element
    disp(['INFO: ', message]);
end

% end