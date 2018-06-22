function varargout = lanrangian(varargin)
% LANRANGIAN MATLAB code for lanrangian.fig
%      LANRANGIAN, by itself, creates a new LANRANGIAN or raises the existing
%      singleton*.
%
%      H = LANRANGIAN returns the handle to a new LANRANGIAN or the handle to
%      the existing singleton*.
%
%      LANRANGIAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LANRANGIAN.M with the given input arguments.
%
%      LANRANGIAN('Property','Value',...) creates a new LANRANGIAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lanrangian_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lanrangian_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lanrangian

% Last Modified by GUIDE v2.5 22-Jul-2015 13:01:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lanrangian_OpeningFcn, ...
                   'gui_OutputFcn',  @lanrangian_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before lanrangian is made visible.
function lanrangian_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lanrangian (see VARARGIN)

% Choose default command line output for lanrangian
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lanrangian wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lanrangian_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);

% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function tb2_Callback(hObject, eventdata, handles)
% hObject    handle to tb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tb2 as text
%        str2double(get(hObject,'String')) returns contents of tb2 as a double


% --- Executes during object creation, after setting all properties.
function tb2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tb1_Callback(hObject, eventdata, handles)
% hObject    handle to tb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tb1 as text
%        str2double(get(hObject,'String')) returns contents of tb1 as a double


% --- Executes during object creation, after setting all properties.
function tb1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
x = str2num(get(handles.tb1,'String'));
y = str2num(get(handles.tb2,'String'));
n = max(size(y));


sum = 0;

for i = 1 : n;
    p = 1;
    for j = 1 : n;
        if i ~= j
            p = p * ((x - y(1,j))/(y(1,i)-y(1,j)));
        end
        
    end
    sum = sum + (p * y(2,i));
end

set(handles.answer,'String',sum);
