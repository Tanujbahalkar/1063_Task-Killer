// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            Setting

public class SeekBarPreference extends DialogPreference
    implements android.widget.SeekBar.OnSeekBarChangeListener
{

    private static final String androidns = "http://schemas.android.com/apk/res/android";
    private Context mContext;
    private int mDefault;
    private String mDialogMessage;
    private int mMax;
    private int mMin;
    private int mOriginalValue;
    private SeekBar mSeekBar;
    private TextView mSplashText;
    private String mSuffix;
    private int mValue;
    private TextView mValueText;

    public SeekBarPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mOriginalValue = 0;
        mMin = 36;
        mContext = context;
        mDialogMessage = attributeset.getAttributeValue("http://schemas.android.com/apk/res/android", "dialogMessage");
        mSuffix = attributeset.getAttributeValue("http://schemas.android.com/apk/res/android", "text");
        mDefault = attributeset.getAttributeIntValue("http://schemas.android.com/apk/res/android", "defaultValue", 0);
        mMax = attributeset.getAttributeIntValue("http://schemas.android.com/apk/res/android", "max", 100);
    }

    private void setValueText(int i)
    {
        String s = String.valueOf(i);
        TextView textview = mValueText;
        String s1;
        if (mSuffix == null)
        {
            s1 = s;
        } else
        {
            s1 = s.concat(mSuffix);
        }
        textview.setText(s1);
    }

    public int getMax()
    {
        return mMax;
    }

    public int getMin()
    {
        return mMin;
    }

    public int getProgress()
    {
        return mValue - mMin;
    }

    protected void onBindDialogView(View view)
    {
        super.onBindDialogView(view);
        mSeekBar.setMax(mMax - mMin);
        mSeekBar.setProgress(mValue - mMin);
    }

    protected View onCreateDialogView()
    {
        LinearLayout linearlayout = new LinearLayout(mContext);
        linearlayout.setOrientation(1);
        linearlayout.setPadding(6, 6, 6, 6);
        mSplashText = new TextView(mContext);
        if (mDialogMessage != null)
        {
            mSplashText.setText(mDialogMessage);
        }
        linearlayout.addView(mSplashText);
        mValueText = new TextView(mContext);
        mValueText.setGravity(1);
        mValueText.setTextSize(32F);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        linearlayout.addView(mValueText, layoutparams);
        mSeekBar = new SeekBar(mContext);
        mSeekBar.setOnSeekBarChangeListener(this);
        linearlayout.addView(mSeekBar, new android.widget.LinearLayout.LayoutParams(-1, -2));
        if (shouldPersist())
        {
            mValue = getPersistedInt(mDefault);
        }
        mSeekBar.setMax(mMax - mMin);
        mSeekBar.setProgress(mValue - mMin);
        setValueText(mValue);
        mOriginalValue = mValue;
        return linearlayout;
    }

    protected void onDialogClosed(boolean flag)
    {
        if (flag)
        {
            Setting.ITEM_HEIGHT = mValue;
        } else
        if (shouldPersist())
        {
            persistInt(mOriginalValue);
            return;
        }
    }

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        setValueText(i + mMin);
        if (shouldPersist())
        {
            mValue = i + mMin;
            persistInt(mValue);
        }
        callChangeListener(new Integer(i));
    }

    protected void onSetInitialValue(boolean flag, Object obj)
    {
        super.onSetInitialValue(flag, obj);
        if (flag)
        {
            int i;
            if (shouldPersist())
            {
                i = getPersistedInt(mDefault);
            } else
            {
                i = 0;
            }
            mValue = i;
            return;
        } else
        {
            mValue = ((Integer)obj).intValue();
            return;
        }
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
    }

    public void setMax(int i)
    {
        mMax = i;
    }

    public void setMin(int i)
    {
        mMin = i;
    }

    public void setProgress(int i)
    {
        mValue = i + mMin;
        if (mSeekBar != null)
        {
            mSeekBar.setProgress(i);
        }
    }
}
