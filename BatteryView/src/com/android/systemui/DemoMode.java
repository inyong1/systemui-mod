package com.android.systemui;

import android.os.Bundle;

public interface DemoMode
{
	void dispatchDemoCommand(String command,Bundle args);
	public static final String ACTION_DEMO="com.android.systemui.demo";
	public static final String COMMAND_ENTER="enter";
	public static final String COMMAND_EXIT="exit";
	public static final String COMMAND_CLOCK="clock";
	public static final String COMMAND_BATTERY="battery";
	public static final String COMMAND_NETWORK="network";
	public static final String COMMAND_BARS="bars";
	public static final String COMMAND_STATUS="status";
}
