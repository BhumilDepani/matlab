function varargout = radio_box(varargin)
% RADIO_BOX MATLAB code for radio_box.fig
%      RADIO_BOX, by itself, creates a new RADIO_BOX or raises the existing
%      singleton*.
%
%      H = RADIO_BOX returns the handle to a new RADIO_BOX or the handle to
%      the existing singleton*.
%
%      RADIO_BOX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RADIO_BOX.M with the given input arguments.
%
%      RADIO_BOX('Property','Value',...) creates a new RADIO_BOX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before radio_box_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to radio_box_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help radio_box

% Last Modified by GUIDE v2.5 27-Feb-2022 09:45:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @radio_box_OpeningFcn, ...
                   'gui_OutputFcn',  @radio_box_OutputFcn, ...
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


% --- Executes just before radio_box is made visible.
function radio_box_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to radio_box (see VARARGIN)

% Choose default command line output for radio_box
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes radio_box wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = radio_box_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
status = get(handles.radiobutton1, "Value");

if status == 1
    set(handles.text1, "String", "Choice 1");
    set(handles.radiobutton2, "Value", 0);
    set(handles.radiobutton3, "Value", 0);
end


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2

status = get(handles.radiobutton2, "Value");
if status == 1
    set(handles.text1, "String", "Choice 2");
    set(handles.radiobutton1, "Value", 0);
    set(handles.radiobutton3, "Value", 0);
end


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
status = get(handles.radiobutton3, "Value");
if status == 1
    set(handles.text1, "String", "Choice 3");
    set(handles.radiobutton1, "Value", 0);
    set(handles.radiobutton2, "Value", 0);
end

% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
