package com.mikepenz.fastadapter.listeners;

import android.view.View;
import com.mikepenz.fastadapter.IAdapter;
import com.mikepenz.fastadapter.IItem;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/listeners/OnClickListener.class */
public interface OnClickListener<Item extends IItem> {
    boolean onClick(View view, IAdapter<Item> iAdapter, Item item, int i);
}
