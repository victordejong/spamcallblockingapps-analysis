package com.github.mikephil.charting.listener;

import com.github.mikephil.charting.data.DataSet;
import com.github.mikephil.charting.data.Entry;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/listener/OnDrawListener.class */
public interface OnDrawListener {
    void onDrawFinished(DataSet<?> dataSet);

    void onEntryAdded(Entry entry);

    void onEntryMoved(Entry entry);
}
