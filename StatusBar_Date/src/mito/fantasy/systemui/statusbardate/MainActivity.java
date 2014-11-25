package mito.fantasy.systemui.statusbardate;

import android.app.*;
import android.os.*;
import android.view.*;
import android.view.View.*;
import android.widget.*;
import android.content.*;
import android.provider.*;
import android.preference.*;

public class MainActivity extends Activity
{
	//	ContentResolver resolver;
	//	EditText editTextPrefName, editTextPrefValue;
	//	Button buttonOK;
	//	Intent intent;
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
		{
        super.onCreate(savedInstanceState);
			setContentView(R.layout.main);
				getFragmentManager().beginTransaction().replace(android.R.id.content, new StatusbarDatePreferency()).commit();
				PreferenceManager.setDefaultValues(this, R.xml.preferences, false);

    }



}
