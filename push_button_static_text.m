function varargout = push_button_static_text(varargin)
% PUSH_BUTTON_STATIC_TEXT MATLAB code for push_button_static_text.fig
%      PUSH_BUTTON_STATIC_TEXT, by itself, creates a new PUSH_BUTTON_STATIC_TEXT or raises the existing
%      singleton*.
%
%      H = PUSH_BUTTON_STATIC_TEXT returns the handle to a new PUSH_BUTTON_STATIC_TEXT or the handle to
%      the existing singleton*.
%
%      PUSH_BUTTON_STATIC_TEXT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PUSH_BUTTON_STATIC_TEXT.M with the given input arguments.
%
%      PUSH_BUTTON_STATIC_TEXT('Property','Value',...) creates a new PUSH_BUTTON_STATIC_TEXT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before push_button_static_text_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to push_button_static_text_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help push_button_static_text

% Last Modified by GUIDE v2.5 26-Feb-2022 07:58:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @push_button_static_text_OpeningFcn, ...
                   'gui_OutputFcn',  @push_button_static_text_OutputFcn, ...
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


% --- Executes just before push_button_static_text is made visible.
function push_button_static_text_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to push_button_static_text (see VARARGIN)

% Choose default command line output for push_button_static_text
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes push_button_static_text wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = push_button_static_text_OutputFcn(hObject, eventdata, handles) 
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
persistent count
if isempty(count)
    count = 0;
end
count = count + 1;
str = sprintf("Total tickets: %d", count);
set(handles.text2, 'String', str)
