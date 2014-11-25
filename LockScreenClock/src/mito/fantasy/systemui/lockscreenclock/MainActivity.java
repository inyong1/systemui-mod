package mito.fantasy.systemui.lockscreenclock;

import android.app.*;
import android.os.*;
import android.preference.*;
import mito.fantasy.systemui.lockscreenclock.*;

public class MainActivity extends Activity
{
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
	{
        super.onCreate(savedInstanceState);
       setContentView(R.layout.main);
        getFragmentManager().beginTransaction().replace(android.R.id.content,new JamPreference()).commit();
      PreferenceManager.setDefaultValues(this, R.xml.preferences, false);
    }
}
