package mito.fantasy.systemui.appshortcut;

import android.app.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import android.preference.*;
import android.content.res.*;
import android.widget.CompoundButton.*;
import android.content.*;

public class MainActivity extends Activity
{
    private SharedPreferences preference;
    private final String namaPref="prefTips",namaPrefTipsCheckbox="prefTipsCheckbox";

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
		{
        super.onCreate(savedInstanceState);


        setContentView(R.layout.main);
        getFragmentManager().beginTransaction().replace(android.R.id.content, new ShortCutPreference()).commit();
        PreferenceManager.setDefaultValues(this, R.xml.preferences, false);
        //==========
        preference = getSharedPreferences(namaPref, MODE_PRIVATE);
        new Handler().postDelayed(new Runnable(){

                @Override
                public void run()
                {
                    if(!preference.getBoolean(namaPrefTipsCheckbox,false)){
                    tampilkanTips();
                    }
                }
            }, 500);

    }

    private void tampilkanTips()
    {
        Resources res=getResources();

        AlertDialog.Builder tips=new AlertDialog.Builder(this);

        tips.setTitle(res.getString(R.string.dialog_tips_judul));
        tips.setMessage(res.getString(R.string.dialog_tips_pesan));
        View view=getLayoutInflater().inflate(R.layout.tips, null);
        CheckBox cekbok=(CheckBox)view.findViewById(R.id.tipsCheckBox);
        cekbok.setOnCheckedChangeListener(detekChek());
        tips.setView(view);
        tips.setPositiveButton("OK", new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int p2)
                {
                    // TODO: Implement this method
                    p1.dismiss();
                }
            });
        tips.show();
    }

    private CompoundButton.OnCheckedChangeListener detekChek()
    { return new CompoundButton.OnCheckedChangeListener(){

            @Override
            public void onCheckedChanged(CompoundButton p1, boolean checked)
            {
                SharedPreferences.Editor editor=preference.edit();
                if (checked)
                {

                    editor.putBoolean(namaPrefTipsCheckbox, true);
                }
                else
                {
                    editor.putBoolean(namaPrefTipsCheckbox, false);
                }
                editor.commit();
            }
        };
    }
}
