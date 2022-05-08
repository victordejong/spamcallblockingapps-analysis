package com.mikepenz.fastadapter;

import com.mikepenz.fastadapter.IItem;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/ITypeInstanceCache.class */
public interface ITypeInstanceCache<Item extends IItem> {
    void clear();

    Item get(int i);

    boolean register(Item item);
}
