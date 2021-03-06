function varargout = guiBasic(varargin)
% GUIBASIC MATLAB code for guiBasic.fig
%      GUIBASIC, by itself, creates a new GUIBASIC or raises the existing
%      singleton*.
%
%      H = GUIBASIC returns the handle to a new GUIBASIC or the handle to
%      the existing singleton*.
%
%      GUIBASIC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIBASIC.M with the given input arguments.
%
%      GUIBASIC('Property','Value',...) creates a new GUIBASIC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiBasic_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiBasic_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiBasic

% Last Modified by GUIDE v2.5 17-Feb-2018 11:39:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiBasic_OpeningFcn, ...
                   'gui_OutputFcn',  @guiBasic_OutputFcn, ...
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


% --- Executes just before guiBasic is made visible.
function guiBasic_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiBasic (see VARARGIN)

% Choose default command line output for guiBasic
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiBasic wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiBasic_OutputFcn(hObject, eventdata, handles) 
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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to answerBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of answerBox as text
%        str2double(get(hObject,'String')) returns contents of answerBox as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to answerBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ADD.
function ADD_Callback(hObject, eventdata, handles)
% hObject    handle to ADD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n1 = get(handles.edit1,'string');
n2 = get(handles.edit2,'string');
a = str2double(n1);
b = str2double(n2);
c = ADD(a,b);
set(handles.answerBox,'string',c);


% --- Executes on button press in SUB.
function SUB_Callback(hObject, eventdata, handles)
c = SUB(str2double(get(handles.edit1,'string')),str2double(get(handles.edit2,'string')));
set(handles.answerBox,'string',c);


% --- Executes on button press in MUL.
function MUL_Callback(hObject, eventdata, handles)
c = MUL(str2double(get(handles.edit1,'string')),str2double(get(handles.edit2,'string')));
set(handles.answerBox,'string',c);



% --- Executes on button press in Divide.
function Divide_Callback(hObject, eventdata, handles)
c = DIV(str2double(get(handles.edit1,'string')),str2double(get(handles.edit2,'string')));
set(handles.answerBox,'string',c);


% --- Executes on button press in power.
function power_Callback(hObject, eventdata, handles)
c = str2double(get(handles.edit1,'string')) ^ str2double(get(handles.edit2,'string'));
set(handles.answerBox,'string',c);


% --- Executes on button press in mod.
function mod_Callback(hObject, eventdata, handles)
c = mod(str2double(get(handles.edit2,'string')) , str2double(get(handles.edit1,'string')));
set(handles.answerBox,'string',c);


% --- Executes on button press in LOG.
function LOG_Callback(hObject, eventdata, handles)
% hObject    handle to LOG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in FACT.
function FACT_Callback(hObject, eventdata, handles)
c = factorial(str2double(get(handles.edit1,'string')));
set(handles.answerBox,'string',c);

% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
c = sin(str2double(get(handles.edit1,'string')));
set(handles.answerBox,'string',c);


% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sqrt.
function sqrt_Callback(hObject, eventdata, handles)
c = sqrt(str2double(get(handles.edit1,'string')));
set(handles.answerBox,'string',c);
