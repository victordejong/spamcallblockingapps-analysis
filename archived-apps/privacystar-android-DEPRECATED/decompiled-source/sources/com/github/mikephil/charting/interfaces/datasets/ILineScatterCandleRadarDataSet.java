package com.github.mikephil.charting.interfaces.datasets;

import android.graphics.DashPathEffect;
import com.github.mikephil.charting.data.Entry;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet.class */
public interface ILineScatterCandleRadarDataSet<T extends Entry> extends IBarLineScatterCandleBubbleDataSet<T> {
    DashPathEffect getDashPathEffectHighlight();

    float getHighlightLineWidth();

    boolean isHorizontalHighlightIndicatorEnabled();

    boolean isVerticalHighlightIndicatorEnabled();
}
