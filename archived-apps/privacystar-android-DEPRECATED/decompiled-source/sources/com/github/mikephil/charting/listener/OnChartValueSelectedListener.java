package com.github.mikephil.charting.listener;

import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/listener/OnChartValueSelectedListener.class */
public interface OnChartValueSelectedListener {
    void onNothingSelected();

    void onValueSelected(Entry entry, Highlight highlight);
}
