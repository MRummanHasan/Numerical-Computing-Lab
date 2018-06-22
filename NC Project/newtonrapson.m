function varargout = newtonrapson(varargin)
global mainans;

% NEWTONRAPSON MATLAB code for newtonrapson.fig
%      NEWTONRAPSON, by itself, creates a new NEWTONRAPSON or raises the existing
%      singleton*.
%
%      H = NEWTONRAPSON returns the handle to a new NEWTONRAPSON or the handle to
%      the existing singleton*.
%
%      NEWTONRAPSON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWTONRAPSON.M with the given input arguments.
%
%      NEWTONRAPSON('Property','Value',...) creates a new NEWTONRAPSON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newtonrapson_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newtonrapson_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newtonrapson

% Last Modified by GUIDE v2.5 21-Jul-2015 11:02:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newtonrapson_OpeningFcn, ...
                   'gui_OutputFcn',  @newtonrapson_OutputFcn, ...
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


% --- Executes just before newtonrapson is made visible.
function newtonrapson_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newtonrapson (see VARARGIN)

% Choose default command line output for newtonrapson
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newtonrapson wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newtonrapson_OutputFcn(hObject, eventdata, handles) 
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



function tb3_Callback(hObject, eventdata, handles)
% hObject    handle to tb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tb3 as text
%        str2double(get(hObject,'String')) returns contents of tb3 as a double


% --- Executes during object creation, after setting all properties.
function tb3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tb4_Callback(hObject, eventdata, handles)
% hObject    handle to tb4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tb4 as text
%        str2double(get(hObject,'String')) returns contents of tb4 as a double


% --- Executes during object creation, after setting all properties.
function tb4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tb4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tb5_Callback(hObject, eventdata, handles)
% hObject    handle to tb5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tb5 as text
%        str2double(get(hObject,'String')) returns contents of tb5 as a double


% --- Executes during object creation, after setting all properties.
function tb5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tb5 (see GCBO)
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
fx = get(handles.tb1,'String');
tol = str2num(get(handles.tb3,'String'));

n = str2num(get(handles.tb4,'String'));
 
a = str2num(get(handles.tb2,'String'));

dfx = diff(sym(fx));
tic
%t = cputime;
for i=1:n
    x = a;
     
    fa = eval (fx);
    dfa = eval(dfx);
    
    b = (a) - (fa/dfa);
    x = b;
    fb = eval(fx);
    if abs(fb) < tol
       
         set(handles.tb5,'String',b);
        set(handles.tb6,'string',i);
    break;
    else 
        a = b;
    end
end
e = toc;
 mainans = e;
        disp(mainans);
num2str(e);
set(handles.tb6,'String',e);

function tb6_Callback(hObject, eventdata, handles)
% hObject    handle to tb6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tb6 as text
%        str2double(get(hObject,'String')) returns contents of tb6 as a double


% --- Executes during object creation, after setting all properties.
function tb6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tb6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


clc
fx = get(handles.tb1,'String');
tol = str2num(get(handles.tb3,'String'));
n = str2num(get(handles.tb4,'String'));

 while(1);  
          
   for i = 1:1;
 a = str2num(get(handles.tb2,'String'));
 b = str2num(get(handles.b,'String'));
   end
   
    x = a; fa = eval(fx);
    
    x = b; fb = eval(fx);
    if (fa*fb) < 0
        set(handles.retry,'String','Root Lies ');
        break;
  
    end
    
    set(handles.retry,'String','Retry Please');

end
x=a; fa = eval(fx);
x=b; fb = eval(fx);
%t = cputime;
tic
for i=1:n
    p = (a+b)/2;
    x=p; fp=eval(fx);
    
    if abs(fp)<tol
       
        disp('Compare Bisection Done');
        
        set(handles.root1,'String',p);

        
        break;
    end
    if (fp*fa) < 0
        b=p;
    else
        a=p;
    end
end

%e = cputime-t;
e = toc;
num2str(e);
set(handles.tbbisection,'String',e);






% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
fx = get(handles.tb1,'String');
tol = str2num(get(handles.tb3,'String'));
n = str2num(get(handles.tb4,'String'));
  
    a = str2num(get(handles.tb2,'String'));
    
    b = str2num(get(handles.b,'String'));
    tic  
    for i=1:n
   
    x = a;
    fa = eval(fx);
    x = b;
    fb = eval(fx);
    c = b - (fb*((a-b)/(fa-fb)));
    x = c;
    fc = eval(fx);
      
    if abs(fc) < tol
        disp('Secant Done');
        
        set(handles.root2,'String',c);

        break
    end
    if abs(fa) < abs(fb) 
        b = c;
    else
        a = b;
        b = c;
    end
end
e = toc;
num2str(e);
set(handles.tbsecant,'String',e);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


clc

fx = get(handles.tb1,'String');
tol = str2num(get(handles.tb3,'String'));
n = str2num(get(handles.tb4,'String'));

while(1);
    
    a = str2num(get(handles.tb2,'String'));
    
    b = str2num(get(handles.b,'String'));
    
    x = a; fa = eval(fx);
    x = b; fb = eval(fx);
    if (fa*fb) < 0
        set(handles.retry,'String','Root Lies ');
        break;
  
    end
   
end
%t = cputime;
tic
for i=1:n
    x = a;
    fa = eval(fx);
    x = b;
    fb = eval(fx);
    
    c = b - (fb*((a-b)/(fa-fb)));
    x = c;
    fc = eval(fx);
    
    if abs(fc) < tol
        disp('Regular False Done');
        
        set(handles.root3,'String',c);

        break
    end
    if (fa*fc) < 0
        b = c;
    else
        a = b;
        b = c;
    end
end
%e = cputime-t;
e = toc;
num2str(e);
set(handles.tbrf,'String',e);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clc
fx = get(handles.tb1,'String');
tol = str2num(get(handles.tb3,'String'));
n = str2num(get(handles.tb4,'String'));

while(1);
    
    x1 = str2num(get(handles.tb2,'String'));
    
    x2 = str2num(get(handles.b,'String'));
    
    if x1 > x2
        set(handles.retry,'String','OK....... ');
        break;
  
    end
    set(handles.tbmullar,'String','Not Possibl with these inputs ');
end
x0 = (x1+x2)/2;
%time = clock;
tic
for i=1:n
    h1 = x1-x0;
    h2 = x0-x2;
   
    r = h2/h1;
 
    x = x0;
    fa = eval(fx);
    c = fa;
    x = x1;
    fb = eval(fx);
    x = x2;
    fc = eval(fx);
     
    
    
    a = ((r*fb)-(fa*(1+r))+fc)/(r*(h1^2)*(1+r));
    b = ((fb) - (fa) - (a*(h1^2)))/(h1);
    if b > 0
        x3 = x0-((2*c)/(b+sqrt((b^2)+(4*a*c))));
    else
        x3 = x0-((2*c)/(b-sqrt((b^2)-(4*a*c))));
        
    end 
    x = x3;
    fd = eval(fx);
   
    if abs(fd) < tol
       disp('Mullar Done');
       
        set(handles.root4,'String',x3);

        break
    end
    if x3 < x0
        x1 = x0;
        x0 = x3;
    else
        x2 = x0;
        x0 = x3;
    end
end

e = toc;
num2str(e);
set(handles.tbmullar,'String',e);



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
