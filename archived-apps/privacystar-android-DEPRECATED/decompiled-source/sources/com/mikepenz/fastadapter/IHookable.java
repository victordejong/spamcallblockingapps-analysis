package com.mikepenz.fastadapter;

import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.listeners.EventHook;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/IHookable.class */
public interface IHookable<Item extends IItem> {
    List<EventHook<Item>> getEventHooks();
}
