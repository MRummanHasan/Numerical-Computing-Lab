function varargout = guasselimination(varargin)
% GUASSELIMINATION MATLAB code for guasselimination.fig
%      GUASSELIMINATION, by itself, creates a new GUASSELIMINATION or raises the existing
%      singleton*.
%
%      H = GUASSELIMINATION returns the handle to a new GUASSELIMINATION or the handle to
%      the existing singleton*.
%
%      GUASSELIMINATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUASSELIMINATION.M with the given input arguments.
%
%      GUASSELIMINATION('Property','Value',...) creates a new GUASSELIMINATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guasselimination_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guasselimination_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guasselimination

% Last Modified by GUIDE v2.5 21-Jul-2015 16:01:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guasselimination_OpeningFcn, ...
                   'gui_OutputFcn',  @guasselimination_OutputFcn, ...
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


% --- Executes just before guasselimination is made visible.
function guasselimination_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guasselimination (see VARARGIN)

% Choose default command line output for guasselimination
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guasselimination wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guasselimination_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in lb1.
function lb1_Callback(hObject, eventdata, handles)
% hObject    handle to lb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lb1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lb1


% --- Executes during object creation, after setting all properties.
function lb1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lb2.
function lb2_Callback(hObject, eventdata, handles)
% hObject    handle to lb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lb2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lb2


% --- Executes during object creation, after setting all properties.
function lb2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lb3.
function lb3_Callback(hObject, eventdata, handles)
% hObject    handle to lb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lb3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lb3


% --- Executes during object creation, after setting all properties.
function lb3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lb4.
function lb4_Callback(hObject, eventdata, handles)
% hObject    handle to lb4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lb4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lb4


% --- Executes during object creation, after setting all properties.
function lb4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lb5.
function lb5_Callback(hObject, eventdata, handles)
% hObject    handle to lb5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lb5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lb5


% --- Executes during object creation, after setting all properties.
function lb5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
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
b = str2num(get(handles.tb2,'String'));
n = max(size(a));

for j = 2:n
    for i = j:n
        
    m = a(i,j-1) / a(j-1,j-1);
    a(i,:) = a(i,:) - (a(j-1,:) *m);
    b(i) = b(i) - (b(j-1,:) * m);
    
      
        
    end
    
end


x = zeros(n,1);
x(n) = b(n) / a(n,n);

for j = n-1:-1:1
   
    x(j) = (b(j) - (a(j,j+1:n)* x(j+1:n)))/a(j,j);
    
end
 
set(handles.answer,'String',x);


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
