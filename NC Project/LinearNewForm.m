function varargout = LinearNewForm(varargin)
% LINEARNEWFORM MATLAB code for LinearNewForm.fig
%      LINEARNEWFORM, by itself, creates a new LINEARNEWFORM or raises the existing
%      singleton*.
%
%      H = LINEARNEWFORM returns the handle to a new LINEARNEWFORM or the handle to
%      the existing singleton*.
%
%      LINEARNEWFORM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LINEARNEWFORM.M with the given input arguments.
%
%      LINEARNEWFORM('Property','Value',...) creates a new LINEARNEWFORM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LinearNewForm_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LinearNewForm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LinearNewForm

% Last Modified by GUIDE v2.5 23-Jul-2015 13:36:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LinearNewForm_OpeningFcn, ...
                   'gui_OutputFcn',  @LinearNewForm_OutputFcn, ...
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


% --- Executes just before LinearNewForm is made visible.
function LinearNewForm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LinearNewForm (see VARARGIN)

% Choose default command line output for LinearNewForm
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LinearNewForm wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LinearNewForm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guasselimination;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guassjordan;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
campareeandj;
