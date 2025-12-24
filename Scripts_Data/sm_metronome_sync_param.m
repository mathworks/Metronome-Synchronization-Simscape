% Copyright 2022-2025 The MathWorks, Inc.

metronome.upper_mass     = 0.03/8;
metronome.lower_mass     = 0.09/8;
metronome.stem_length    = 0.12;
metronome.stem_upper     = 2/3;
metronome.b_pivot        = 1e-6*0.5*0.5;
metronome.esc_torque     = 1/10000*0.5;
metronome.pivot_h        = 0.08;
metronome.stem_upper_var = 0;

metronome.initial_angle = [30 5 -5 -10];
metronome.initial_speed = [-5 5  8 -10];

metronome.platform_damping = 1e-1*0.5;

metronome.platform_thickness = 0.01;
metronome.roller_radius      = 0.0325;
metronome.roller_sep         = 0.25;
