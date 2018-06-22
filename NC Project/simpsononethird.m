 function varargout = simpsononethird(varargin)
% SIMPSONONETHIRD MATLAB code for simpsononethird.fig
%      SIMPSONONETHIRD, by itself, creates a new SIMPSONONETHIRD or raises the existing
%      singleton*.
%
%      H = SIMPSONONETHIRD returns the handle to a new SIMPSONONETHIRD or the handle to
%      the existing singleton*.
%
%      SIMPSONONETHIRD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPSONONETHIRD.M with the given input arguments.
%
%      SIMPSONONETHIRD('Property','Value',...) creates a new SIMPSONONETHIRD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before simpsononethird_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to simpsononethird_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help simpsononethird

% Last Modified by GUIDE v2.5 22-Jul-2015 23:36:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @simpsononethird_OpeningFcn, ...
                   'gui_OutputFcn',  @simpsononethird_OutputFcn, ...
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


% --- Executes just before simpsononethird is made visible.
function simpsononethird_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to simpsononethird (see VARARGIN)

% Choose default command line output for simpsononethird
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes simpsononethird wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = simpsononethird_OutputFcn(hObject, eventdata, handles) 
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
h = 0;
h = a(1,2) - a(1,1);
disp(h);
sum = 0;
n = max(size(a));
if mod(n,2) == 0
    set(handles.answeronethird,'String','Not Possible Because nth element is not even');
else
    
for i = 2:n-1
    if mod(i,2) == 0
        sum = sum + (4*(a(2,i)));
  %number is even
    else
        sum = sum + (2*(a(2,i)));
  %number is odd
    end
   
end

area = (h/3)*((a(2,1)+a(2,n))+sum);

set(handles.answeronethird,'String',area);

end
