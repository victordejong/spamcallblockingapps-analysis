package com.github.mikephil.charting.highlight;

import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.charts.PieRadarChartBase;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/highlight/PieRadarHighlighter.class */
public abstract class PieRadarHighlighter<T extends PieRadarChartBase> implements IHighlighter {
    protected T mChart;
    protected List<Highlight> mHighlightBuffer = new ArrayList();

    public PieRadarHighlighter(T t) {
        this.mChart = t;
    }

    protected abstract Highlight getClosestHighlight(int i, float f, float f2);

    @Override // com.github.mikephil.charting.highlight.IHighlighter
    public Highlight getHighlight(float f, float f2) {
        if (this.mChart.distanceToCenter(f, f2) > this.mChart.getRadius()) {
            return null;
        }
        float angleForPoint = this.mChart.getAngleForPoint(f, f2);
        float f3 = angleForPoint;
        if (this.mChart instanceof PieChart) {
            f3 = angleForPoint / this.mChart.getAnimator().getPhaseY();
        }
        int indexForAngle = this.mChart.getIndexForAngle(f3);
        if (indexForAngle < 0 || indexForAngle >= this.mChart.getData().getMaxEntryCountSet().getEntryCount()) {
            return null;
        }
        return getClosestHighlight(indexForAngle, f, f2);
    }
}
