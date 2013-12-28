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
//            ProcessDetailInfo, Setting

public class TaskListAdapters
{
    public static class ListViewItem
    {

        ProcessDetailInfo detailProcess;
        ImageView icon;
        ImageView iconCheck;
        TextView text_name;

        public ListViewItem()
        {
        }
    }

    public static final class ProcessListAdapter extends BaseAdapter
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
            ListViewItem listviewitem;
label0:
            {
                ProcessDetailInfo processdetailinfo = (ProcessDetailInfo)_List.get(i);
                android.graphics.drawable.Drawable drawable;
                if (view == null)
                {
                    view = _Inflater.inflate(0x7f030005, null);
                    listviewitem = new ListViewItem();
                    listviewitem.icon = (ImageView)view.findViewById(0x7f070013);
                    listviewitem.text_name = (TextView)view.findViewById(0x7f070015);
                    listviewitem.detailProcess = processdetailinfo;
                    view.setTag(listviewitem);
                    if (_IsCheckBoxEnable)
                    {
                        listviewitem.iconCheck = (ImageView)view.findViewById(0x7f070014);
                    }
                } else
                {
                    listviewitem = (ListViewItem)view.getTag();
                    listviewitem.detailProcess = processdetailinfo;
                }
                view.setVisibility(0);
                view.setMinimumHeight(Setting.ITEM_HEIGHT);
                drawable = processdetailinfo.getIcon();
                if (drawable != null)
                {
                    listviewitem.icon.setImageDrawable(drawable);
                } else
                {
                    listviewitem.icon.setImageResource(0x1080041);
                }
                listviewitem.text_name.setText(processdetailinfo.getLabel());
                if (_IsCheckBoxEnable)
                {
                    listviewitem.iconCheck.setVisibility(0);
                    if (listviewitem.detailProcess.Importance <= 300)
                    {
                        listviewitem.text_name.setTextColor(0xff00ff00);
                    } else
                    {
                        listviewitem.text_name.setTextColor(-1);
                    }
                    if (!processdetailinfo.getSelected())
                    {
                        break label0;
                    }
                    listviewitem.iconCheck.setImageResource(0x7f020001);
                }
                return view;
            }
            listviewitem.iconCheck.setImageResource(0x7f020000);
            return view;
        }

        public void setCheckBoxEnable(boolean flag)
        {
            _IsCheckBoxEnable = flag;
        }

        public ProcessListAdapter(Context context, ArrayList arraylist)
        {
            _IsCheckBoxEnable = true;
            _Inflater = LayoutInflater.from(context);
            _List = arraylist;
        }
    }


    public TaskListAdapters()
    {
    }
}
