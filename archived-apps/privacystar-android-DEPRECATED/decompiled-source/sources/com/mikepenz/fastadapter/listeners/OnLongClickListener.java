package com.mikepenz.fastadapter.listeners;

import android.view.View;
import com.mikepenz.fastadapter.IAdapter;
import com.mikepenz.fastadapter.IItem;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/listeners/OnLongClickListener.class */
public interface OnLongClickListener<Item extends IItem> {
    boolean onLongClick(View view, IAdapter<Item> iAdapter, Item item, int i);
}
