function varargout = evenOddGUIcheck(varargin)
% EVENODDGUICHECK MATLAB code for evenOddGUIcheck.fig
%      EVENODDGUICHECK, by itself, creates a new EVENODDGUICHECK or raises the existing
%      singleton*.
%
%      H = EVENODDGUICHECK returns the handle to a new EVENODDGUICHECK or the handle to
%      the existing singleton*.
%
%      EVENODDGUICHECK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EVENODDGUICHECK.M with the given input arguments.
%
%      EVENODDGUICHECK('Property','Value',...) creates a new EVENODDGUICHECK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before evenOddGUIcheck_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to evenOddGUIcheck_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help evenOddGUIcheck

% Last Modified by GUIDE v2.5 03-Mar-2018 09:05:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @evenOddGUIcheck_OpeningFcn, ...
                   'gui_OutputFcn',  @evenOddGUIcheck_OutputFcn, ...
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


% --- Executes just before evenOddGUIcheck is made visible.
function evenOddGUIcheck_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to evenOddGUIcheck (see VARARGIN)

% Choose default command line output for evenOddGUIcheck
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes evenOddGUIcheck wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = evenOddGUIcheck_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

userVal = str2double(get(handles.inputTextBox ,'string'));
m = mod(userVal,2);
if ((get(handles.btnEven,'value') == 1) && (m==0)) % check radio btn state & mod condition
    a = 'Even hey';
    set(handles.inputTextBox,'string',a);

elseif ((get(handles.btnEven,'value') == 1) && (m==1)) % check radio btn state & mod condition
    a = 'Odd hey';
    set(handles.inputTextBox,'string',a);
% % % Odd condition
elseif ((get(handles.btnOdd,'value') == 1) && (m==0)) 
    a = 'its Even';
    set(handles.inputTextBox,'string',a);
    
elseif ((get(handles.btnOdd,'value') == 1) && (m==1))
    a = 'its Odd';
    set(handles.inputTextBox,'string',a);
    
elseif ((get(handles.btnEven,'value') == 0) && (get(handles.btnEven,'value') == 0)) % check both radio button state
    a = 'y u do dis';
    set(handles.inputTextBox,'string',a);
    
end

% --- Executes on button press in btnEven.
function btnEven_Callback(hObject, eventdata, handles)
% hObject    handle to btnEven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of btnEven


% --- Executes on button press in btnOdd.
function btnOdd_Callback(hObject, eventdata, handles)
% hObject    handle to btnOdd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of btnOdd



function inputTextBox_Callback(hObject, eventdata, handles)
% hObject    handle to inputTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputTextBox as text
%        str2double(get(hObject,'String')) returns contents of inputTextBox as a double


% --- Executes during object creation, after setting all properties.
function inputTextBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
