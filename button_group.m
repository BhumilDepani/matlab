function varargout = button_group(varargin)
% BUTTON_GROUP MATLAB code for button_group.fig
%      BUTTON_GROUP, by itself, creates a new BUTTON_GROUP or raises the existing
%      singleton*.
%
%      H = BUTTON_GROUP returns the handle to a new BUTTON_GROUP or the handle to
%      the existing singleton*.
%
%      BUTTON_GROUP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BUTTON_GROUP.M with the given input arguments.
%
%      BUTTON_GROUP('Property','Value',...) creates a new BUTTON_GROUP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before button_group_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to button_group_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help button_group

% Last Modified by GUIDE v2.5 27-Feb-2022 12:25:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @button_group_OpeningFcn, ...
                   'gui_OutputFcn',  @button_group_OutputFcn, ...
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


% --- Executes just before button_group is made visible.
function button_group_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to button_group (see VARARGIN)

% Choose default command line output for button_group
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes button_group wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = button_group_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value = get(handles.radiobutton1, "Value");

if value == 1
    set(handles.text1, "String", "Choice 1")
end

value = get(handles.radiobutton2, "Value");

if value == 1
    set(handles.text1, "String", "Choice 2")
end

value = get(handles.radiobutton3, "Value");

if value == 1
    set(handles.text1, "String", "Choice 3")
end

