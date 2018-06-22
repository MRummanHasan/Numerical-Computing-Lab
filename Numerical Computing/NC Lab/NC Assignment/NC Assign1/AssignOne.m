function varargout = AssignOne(varargin)
% ASSIGNONE MATLAB code for AssignOne.fig
%      ASSIGNONE, by itself, creates a new ASSIGNONE or raises the existing
%      singleton*.
%
%      H = ASSIGNONE returns the handle to a new ASSIGNONE or the handle to
%      the existing singleton*.
%
%      ASSIGNONE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASSIGNONE.M with the given input arguments.
%
%      ASSIGNONE('Property','Value',...) creates a new ASSIGNONE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AssignOne_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AssignOne_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AssignOne

% Last Modified by GUIDE v2.5 10-Mar-2018 01:19:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AssignOne_OpeningFcn, ...
                   'gui_OutputFcn',  @AssignOne_OutputFcn, ...
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

% --- Executes just before AssignOne is made visible.
function AssignOne_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AssignOne (see VARARGIN)

% Choose default command line output for AssignOne
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AssignOne wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AssignOne_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in btn0.
function btn0_Callback(hObject, eventdata, handles)
global num;
set(handles.edit1,'string',0);
num = 0;

% --- Executes on button press in btn1.
function btn1_Callback(hObject, eventdata, handles)
global num;
global temp;
global operation;
if operation == 0
    temp = (temp * 10) + 1;
    set(handles.edit1,'string',temp);
else
    operation = 0;
    temp = temp + 1;
    set(handles.edit1,'string',temp);
end


% --- Executes on button press in btnTwo.
function btnTwo_Callback(hObject, eventdata, handles)
global num;
global temp;
global operation;

if operation == 0
    temp = (temp * 10) + 2;
    set(handles.edit1,'string',temp);
else
    operation = 0;
    temp = temp + 2;
    set(handles.edit1,'string',temp);
end

% --- Executes on button press in btn3.
function btn3_Callback(hObject, eventdata, handles)
global num;
global temp;
global operation;
temp = num;
if operation == 0
    temp = (temp * 10) + 3;
    set(handles.edit1,'string',temp);
else
    operation = 0;
    num = temp + 3;
    set(handles.edit1,'string',num);
    temp = num;
end

% --- Executes on button press in btn4.
function btn4_Callback(hObject, eventdata, handles)
global num;
global temp;
global operation;
temp = num;
if operation == 0
    temp = (temp * 10) + 4;
    set(handles.edit1,'string',temp);
else
    operation = 0;
    num = temp + 4;
    set(handles.edit1,'string',num);
    temp = num;
end

% --- Executes on button press in btn5.
function btn5_Callback(hObject, eventdata, handles)


% --- Executes on button press in btn6.
function btn6_Callback(hObject, eventdata, handles)


% --- Executes on button press in btn7.
function btn7_Callback(hObject, eventdata, handles)


% --- Executes on button press in btn8.
function btn8_Callback(hObject, eventdata, handles)


% --- Executes on button press in btn9.
function btn9_Callback(hObject, eventdata, handles)

% --- Executes on button press in btnPlus.
function btnPlus_Callback(hObject, eventdata, handles)
global num;
global temp;
global operation;
operation = 1;
temp = num;

% --- Executes on button press in btnSub.
function btnSub_Callback(hObject, eventdata, handles)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)


% --- Executes on button press in btnMul.
function btnMul_Callback(hObject, eventdata, handles)
global num;
global temp;
global operation;

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)


% --- Executes on button press in btnClear.
function btnClear_Callback(hObject, eventdata, handles)
global num;
global temp;
num = 0;
temp = 0;
ClearAll;