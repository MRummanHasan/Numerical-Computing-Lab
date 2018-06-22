function varargout = RunComparision(varargin)
% RUNCOMPARISION MATLAB code for RunComparision.fig
%      RUNCOMPARISION, by itself, creates a new RUNCOMPARISION or raises the existing
%      singleton*.
%
%      H = RUNCOMPARISION returns the handle to a new RUNCOMPARISION or the handle to
%      the existing singleton*.
%
%      RUNCOMPARISION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RUNCOMPARISION.M with the given input arguments.
%
%      RUNCOMPARISION('Property','Value',...) creates a new RUNCOMPARISION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RunComparision_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RunComparision_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RunComparision

% Last Modified by GUIDE v2.5 10-Mar-2018 11:43:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RunComparision_OpeningFcn, ...
                   'gui_OutputFcn',  @RunComparision_OutputFcn, ...
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


% --- Executes just before RunComparision is made visible.
function RunComparision_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RunComparision (see VARARGIN)

% Choose default command line output for RunComparision
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RunComparision wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RunComparision_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
a = [1 3 2];
plot(a);
% Hint: place code in OpeningFcn to populate axes1
