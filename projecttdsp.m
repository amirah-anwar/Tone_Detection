function varargout = projecttdsp(varargin)
% PROJECTTDSP MATLAB code for projecttdsp.fig
%      PROJECTTDSP, by itself, creates a new PROJECTTDSP or raises the existing
%      singleton*.
%
%      H = PROJECTTDSP returns the handle to a new PROJECTTDSP or the handle to
%      the existing singleton*.
%
%      PROJECTTDSP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECTTDSP.M with the given input arguments.
%
%      PROJECTTDSP('Property','Value',...) creates a new PROJECTTDSP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projecttdsp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projecttdsp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projecttdsp

% Last Modified by GUIDE v2.5 25-Dec-2013 19:27:48

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projecttdsp_OpeningFcn, ...
                   'gui_OutputFcn',  @projecttdsp_OutputFcn, ...
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

% --- Executes just before projecttdsp is made visible.

function projecttdsp_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to projecttdsp (see VARARGIN)

% Choose default command line output for projecttdsp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projecttdsp wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = projecttdsp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in a.
function a_Callback(hObject, eventdata, handles)
[t,n]=heartone(697,1209);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)

function plot_graph(handles)
if ~isfield(handles, 'graph_type')
    handles.graph_type = 't';
end

if handles.graph_type == 't'
    stem(handles.axes1,handles.n,handles.t);
else
    calfft(handles.t);
end



% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in b.
function b_Callback(hObject, eventdata, handles)
[t,n]=heartone(697,1336);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)


% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in c.
function c_Callback(hObject, eventdata, handles)
[t,n]=heartone(697,1477);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)


% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in d.
function d_Callback(hObject, eventdata, handles)
[t,n]=heartone(770,1209);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)


% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in e.
function e_Callback(hObject, eventdata, handles)
[t,n]=heartone(770,1336);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)


% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in f.
function f_Callback(hObject, eventdata, handles)
[t,n]=heartone(770,1477);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)


% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in g.
function g_Callback(hObject, eventdata, handles)
[t,n]=heartone(852,1209);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)


% hObject    handle to g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in h.
function h_Callback(hObject, eventdata, handles)
[t,n]=heartone(852,1336);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)


% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in i.
function i_Callback(hObject, eventdata, handles)
[t,n]=heartone(852,1477);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)


% hObject    handle to i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in j.
function j_Callback(hObject, eventdata, handles)
[t,n]=heartone(941,1209);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)



% hObject    handle to j (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in k.
function k_Callback(hObject, eventdata, handles)

[t,n]=heartone(941,1336);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)


% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in l.
function l_Callback(hObject, eventdata, handles)
[t,n]=heartone(941,1477);
handles.t=t;
handles.n=n;
guidata(hObject,handles)
plot_graph(handles)
y=number(t);
set(handles.see,'string',y)




% hObject    handle to l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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



function nopr_Callback(hObject, eventdata, handles)
% hObject    handle to nopr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nopr as text
%        str2double(get(hObject,'String')) returns contents of nopr as a double


% --- Executes during object creation, after setting all properties.
function nopr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nopr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in f_radiobutton1.
function f_radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to f_radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of f_radiobutton1



% --- Executes on button press in t_radiobutton2.
function t_radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to t_radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of t_radiobutton2


% --- Executes when selected object is changed in uipanel1.
function uipanel1_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel1 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
newButton=get(eventdata.NewValue,'Tag');

switch newButton
     case 'f_radiobutton1'
         handles.graph_type = 'f';
     case 't_radiobutton2'
         handles.graph_type = 't';
end
guidata(hObject,handles)

plot_graph(handles);
    


% --- Executes on button press in x_pushbutton.
function x_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to x_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1);
