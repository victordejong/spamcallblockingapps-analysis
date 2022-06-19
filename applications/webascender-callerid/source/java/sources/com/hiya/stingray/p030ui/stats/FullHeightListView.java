package com.hiya.stingray.p030ui.stats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
/* renamed from: com.hiya.stingray.ui.stats.FullHeightListView */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/FullHeightListView.class */
public class FullHeightListView extends ListView {
    public FullHeightListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(134217727, Integer.MIN_VALUE));
    }
}
