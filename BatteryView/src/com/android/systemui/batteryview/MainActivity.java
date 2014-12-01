package com.android.systemui.batteryview;

import android.app.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import android.preference.*;

public class MainActivity extends Activity
{
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
	{
        super.onCreate(savedInstanceState);
      //  setContentView(R.layout.main);
		getFragmentManager().beginTransaction().replace(android.R.id.content,new BatteryPreference()).commit();
		PreferenceManager.setDefaultValues(this, R.xml.preferences, false);
		
    }
}
