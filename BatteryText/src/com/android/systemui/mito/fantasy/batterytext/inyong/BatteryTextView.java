package com.android.systemui.mito.fantasy.batterytext.inyong;
import android.content.*;
import android.widget.*;
import android.util.*;
import android.view.*;

public class BatteryTextView extends TextView
{
    private Context context;
    public BatteryTextView(Context context)
    {
        super(context);
        this.context = context;
        persiapan();
    }
    public BatteryTextView(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        this.context = context;
        persiapan();
    }
    public BatteryTextView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        this.context = context;
        persiapan();
    }
//-------
    private void persiapan()
    {
        setGravity(Gravity.CENTER);
    }

//-------
    private final BroadcastReceiver broadcastReceiver=new BroadcastReceiver(){

        @Override
        public void onReceive(Context context, Intent intent)
        {
            detekSetting();
            updateText();
        }
    };
//-------
    private void detekSetting()
    {

    }
//-------
    private void updateText()
    {

    }
    
    //-----
    private boolean terdaftar=false;
    private IntentFilter intentFilter=new IntentFilter("inyong.batterytext");
    @Override
    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if(!terdaftar){
            terdaftar=true;
            
            context.registerReceiver(broadcastReceiver,intentFilter);
        }
    }
//------
    @Override
    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if(terdaftar){
            terdaftar=false;
            context.unregisterReceiver(broadcastReceiver);
        }
    }
    //-------
    
}
