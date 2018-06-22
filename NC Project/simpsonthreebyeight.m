function varargout = simpsonthreebyeight(varargin)
% SIMPSONTHREEBYEIGHT MATLAB code for simpsonthreebyeight.fig
%      SIMPSONTHREEBYEIGHT, by itself, creates a new SIMPSONTHREEBYEIGHT or raises the existing
%      singleton*.
%
%      H = SIMPSONTHREEBYEIGHT returns the handle to a new SIMPSONTHREEBYEIGHT or the handle to
%      the existing singleton*.
%
%      SIMPSONTHREEBYEIGHT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPSONTHREEBYEIGHT.M with the given input arguments.
%
%      SIMPSONTHREEBYEIGHT('Property','Value',...) creates a new SIMPSONTHREEBYEIGHT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before simpsonthreebyeight_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to simpsonthreebyeight_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help simpsonthreebyeight

% Last Modified by GUIDE v2.5 23-Jul-2015 00:08:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @simpsonthreebyeight_OpeningFcn, ...
                   'gui_OutputFcn',  @simpsonthreebyeight_OutputFcn, ...
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


% --- Executes just before simpsonthreebyeight is made visible.
function simpsonthreebyeight_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to simpsonthreebyeight (see VARARGIN)

% Choose default command line output for simpsonthreebyeight
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes simpsonthreebyeight wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = simpsonthreebyeight_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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

a = str2num(get(handles.tb1,'String'));

h = a(1,2) - a(1,1);

sum = 0;
n = max(size(a));
if mod((n-1),3) == 0
    for i = 2:n-1
    if mod((i-1),3) == 0
        sum = sum + (2*(a(2,i)));
  %number is even
    else
        sum = sum + (3*(a(2,i)));
  %number is odd
    end
   
end

area = ((3*h)/8)*((a(2,1)+a(2,n))+sum);

set(handles.answerthreeeight,'String',area);

    
else
    
set(handles.answerthreeeight,'String','Not Possible Because Condition of (Nth item should be dvisible by 3) is False ');
end
