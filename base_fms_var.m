
%% Constant Variable (for internal use)
FMS_CONST.dt = 0.004;

%% Exported Value 
FMS_EXPORT_VALUE.period = uint32(FMS_CONST.dt*1e3);
FMS_EXPORT_VALUE.model_info = int8(['Base FMS', 0]); % 0 for end of string

FMS_EXPORT = Simulink.Parameter(FMS_EXPORT_VALUE);
FMS_EXPORT.CoderInfo.StorageClass = 'ExportedGlobal';

%% Paramaters
FMS_PARAM_VALUE.THROTTLE_DZ = single(0.15);
FMS_PARAM_VALUE.YAW_DZ = single(0.15);
FMS_PARAM_VALUE.ROLL_DZ = single(0.1);
FMS_PARAM_VALUE.PITCH_DZ = single(0.1);
FMS_PARAM_VALUE.XY_P = single(0.95);
FMS_PARAM_VALUE.Z_P = single(1);
FMS_PARAM_VALUE.VEL_XY_LIM = single(5);
FMS_PARAM_VALUE.VEL_Z_LIM = single(2.5);
FMS_PARAM_VALUE.YAW_P = single(2.5);
FMS_PARAM_VALUE.YAW_RATE_LIM = single(pi/3);
FMS_PARAM_VALUE.ROLL_PITCH_LIM = single(pi/6);

FMS_PARAM = Simulink.Parameter(FMS_PARAM_VALUE);
FMS_PARAM.CoderInfo.StorageClass = 'ExportedGlobal';