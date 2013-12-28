// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.rechild.advancedtaskkiller;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

// Referenced classes of package com.rechild.advancedtaskkiller:
//            ProcessDetailInfo, Setting, TaskListAdapters

public static final class _List extends BaseAdapter
{

    private LayoutInflater _Inflater;
    private boolean _IsCheckBoxEnable;
    private ArrayList _List;

    public boolean getCheckBoxEnable()
    {
        return _IsCheckBoxEnable;
    }

    public int getCount()
    {
        return _List.size();
    }

    public Object getItem(int i)
    {
        return _List.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        _List _llist;
label0:
        {
            ProcessDetailInfo processdetailinfo = (ProcessDetailInfo)_List.get(i);
            android.graphics.drawable.Drawable drawable;
            if (view == null)
            {
                view = _Inflater.inflate(0x7f030005, null);
                _llist = new ();
                _llist. = (ImageView)view.findViewById(0x7f070013);
                _llist.ame = (TextView)view.findViewById(0x7f070015);
                _llist.Process = processdetailinfo;
                view.setTag(_llist);
                if (_IsCheckBoxEnable)
                {
                    _llist.eck = (ImageView)view.findViewById(0x7f070014);
                }
            } else
            {
                _llist = (eck)view.getTag();
                _llist.Process = processdetailinfo;
            }
            view.setVisibility(0);
            view.setMinimumHeight(Setting.ITEM_HEIGHT);
            drawable = processdetailinfo.getIcon();
            if (drawable != null)
            {
                _llist.Process.setImageDrawable(drawable);
            } else
            {
                _llist.Process.setImageResource(0x1080041);
            }
            _llist.ame.setText(processdetailinfo.getLabel());
            if (_IsCheckBoxEnable)
            {
                _llist.eck.setVisibility(0);
                if (_llist.Process.Importance <= 300)
                {
                    _llist.ame.setTextColor(0xff00ff00);
                } else
                {
                    _llist.ame.setTextColor(-1);
                }
                if (!processdetailinfo.getSelected())
                {
                    break label0;
                }
                _llist.eck.setImageResource(0x7f020001);
            }
            return view;
        }
        _llist.eck.setImageResource(0x7f020000);
        return view;
    }

    public void setCheckBoxEnable(boolean flag)
    {
        _IsCheckBoxEnable = flag;
    }

    public (Context context, ArrayList arraylist)
    {
        _IsCheckBoxEnable = true;
        _Inflater = LayoutInflater.from(context);
        _List = arraylist;
    }
}
