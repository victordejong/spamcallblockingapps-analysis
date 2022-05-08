package com.mikepenz.fastadapter;

import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.listeners.OnClickListener;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/IClickable.class */
public interface IClickable<Item extends IItem> {
    OnClickListener<Item> getOnItemClickListener();

    OnClickListener<Item> getOnPreItemClickListener();

    Item withOnItemClickListener(OnClickListener<Item> onClickListener);

    Item withOnItemPreClickListener(OnClickListener<Item> onClickListener);
}
