function varargout = axes_and_dialogue(varargin)
% AXES_AND_DIALOGUE MATLAB code for axes_and_dialogue.fig
%      AXES_AND_DIALOGUE, by itself, creates a new AXES_AND_DIALOGUE or raises the existing
%      singleton*.
%
%      H = AXES_AND_DIALOGUE returns the handle to a new AXES_AND_DIALOGUE or the handle to
%      the existing singleton*.
%
%      AXES_AND_DIALOGUE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AXES_AND_DIALOGUE.M with the given input arguments.
%
%      AXES_AND_DIALOGUE('Property','Value',...) creates a new AXES_AND_DIALOGUE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before axes_and_dialogue_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to axes_and_dialogue_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help axes_and_dialogue

% Last Modified by GUIDE v2.5 28-Feb-2022 06:46:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @axes_and_dialogue_OpeningFcn, ...
                   'gui_OutputFcn',  @axes_and_dialogue_OutputFcn, ...
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


% --- Executes just before axes_and_dialogue is made visible.
function axes_and_dialogue_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to axes_and_dialogue (see VARARGIN)

% Choose default command line output for axes_and_dialogue
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes axes_and_dialogue wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = axes_and_dialogue_OutputFcn(hObject, eventdata, handles) 
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
global amplitude;
amp = inputdlg("Enter a valid amplitude: ", "User Input", 1, "2");
amp = cell2mat(amp);
amplitude = str2num(amp);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global frequency;
fre = inputdlg("Enter a valid amplitude: ", "User Input", 1, "2");
fre = cell2mat(fre)
frequency = str2num(fre);


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global amplitude frequency;

pop_output = get(handles.popupmenu1, "Value");
amplitude


% t = 0:0.01:2*pi*frequency;
t = 0:0.01:1;

if pop_output == 2
    y = amplitude * sin(2*pi*frequency*t);
else
    y = amplitude * cos(2*pi*frequency*t);
end

plot(handles.axes1, t, y)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg

