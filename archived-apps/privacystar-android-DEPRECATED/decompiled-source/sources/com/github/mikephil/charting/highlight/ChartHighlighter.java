package com.github.mikephil.charting.highlight;

import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.BarLineScatterCandleBubbleData;
import com.github.mikephil.charting.data.DataSet;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.interfaces.dataprovider.BarLineScatterCandleBubbleDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.utils.MPPointD;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/highlight/ChartHighlighter.class */
public class ChartHighlighter<T extends BarLineScatterCandleBubbleDataProvider> implements IHighlighter {
    protected T mChart;
    protected List<Highlight> mHighlightBuffer = new ArrayList();

    public ChartHighlighter(T t) {
        this.mChart = t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<Highlight> buildHighlights(IDataSet iDataSet, int i, float f, DataSet.Rounding rounding) {
        ArrayList arrayList = new ArrayList();
        List entriesForXValue = iDataSet.getEntriesForXValue(f);
        List<Entry> list = entriesForXValue;
        if (entriesForXValue.size() == 0) {
            Entry entryForXValue = iDataSet.getEntryForXValue(f, Float.NaN, rounding);
            list = entriesForXValue;
            if (entryForXValue != null) {
                list = iDataSet.getEntriesForXValue(entryForXValue.getX());
            }
        }
        if (list.size() == 0) {
            return arrayList;
        }
        for (Entry entry : list) {
            MPPointD pixelForValues = this.mChart.getTransformer(iDataSet.getAxisDependency()).getPixelForValues(entry.getX(), entry.getY());
            arrayList.add(new Highlight(entry.getX(), entry.getY(), (float) pixelForValues.f158x, (float) pixelForValues.f159y, i, iDataSet.getAxisDependency()));
        }
        return arrayList;
    }

    public Highlight getClosestHighlightByPixel(List<Highlight> list, float f, float f2, YAxis.AxisDependency axisDependency, float f3) {
        Highlight highlight = null;
        for (int i = 0; i < list.size(); i++) {
            Highlight highlight2 = list.get(i);
            if (axisDependency != null) {
                highlight = highlight;
                f3 = f3;
                if (highlight2.getAxis() != axisDependency) {
                }
            }
            float distance = getDistance(f, f2, highlight2.getXPx(), highlight2.getYPx());
            highlight = highlight;
            f3 = f3;
            if (distance < f3) {
                highlight = highlight2;
                f3 = distance;
            }
        }
        return highlight;
    }

    protected BarLineScatterCandleBubbleData getData() {
        return this.mChart.getData();
    }

    protected float getDistance(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f - f3, f2 - f4);
    }

    @Override // com.github.mikephil.charting.highlight.IHighlighter
    public Highlight getHighlight(float f, float f2) {
        MPPointD valsForTouch = getValsForTouch(f, f2);
        MPPointD.recycleInstance(valsForTouch);
        return getHighlightForX((float) valsForTouch.f158x, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Highlight getHighlightForX(float f, float f2, float f3) {
        List<Highlight> highlightsAtXValue = getHighlightsAtXValue(f, f2, f3);
        if (highlightsAtXValue.isEmpty()) {
            return null;
        }
        return getClosestHighlightByPixel(highlightsAtXValue, f2, f3, getMinimumDistance(highlightsAtXValue, f3, YAxis.AxisDependency.LEFT) < getMinimumDistance(highlightsAtXValue, f3, YAxis.AxisDependency.RIGHT) ? YAxis.AxisDependency.LEFT : YAxis.AxisDependency.RIGHT, this.mChart.getMaxHighlightDistance());
    }

    protected float getHighlightPos(Highlight highlight) {
        return highlight.getYPx();
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [com.github.mikephil.charting.interfaces.datasets.IDataSet] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.util.List<com.github.mikephil.charting.highlight.Highlight> getHighlightsAtXValue(float r8, float r9, float r10) {
        /*
            r7 = this;
            r0 = r7
            java.util.List<com.github.mikephil.charting.highlight.Highlight> r0 = r0.mHighlightBuffer
            r0.clear()
            r0 = r7
            com.github.mikephil.charting.data.BarLineScatterCandleBubbleData r0 = r0.getData()
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0019
            r0 = r7
            java.util.List<com.github.mikephil.charting.highlight.Highlight> r0 = r0.mHighlightBuffer
            return r0
        L_0x0019:
            r0 = 0
            r12 = r0
            r0 = r11
            int r0 = r0.getDataSetCount()
            r13 = r0
        L_0x0023:
            r0 = r12
            r1 = r13
            if (r0 >= r1) goto L_0x005c
            r0 = r11
            r1 = r12
            com.github.mikephil.charting.interfaces.datasets.IDataSet r0 = r0.getDataSetByIndex(r1)
            r14 = r0
            r0 = r14
            boolean r0 = r0.isHighlightEnabled()
            if (r0 != 0) goto L_0x0040
            goto L_0x0056
        L_0x0040:
            r0 = r7
            java.util.List<com.github.mikephil.charting.highlight.Highlight> r0 = r0.mHighlightBuffer
            r1 = r7
            r2 = r14
            r3 = r12
            r4 = r8
            com.github.mikephil.charting.data.DataSet$Rounding r5 = com.github.mikephil.charting.data.DataSet.Rounding.CLOSEST
            java.util.List r1 = r1.buildHighlights(r2, r3, r4, r5)
            boolean r0 = r0.addAll(r1)
        L_0x0056:
            int r12 = r12 + 1
            goto L_0x0023
        L_0x005c:
            r0 = r7
            java.util.List<com.github.mikephil.charting.highlight.Highlight> r0 = r0.mHighlightBuffer
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.highlight.ChartHighlighter.getHighlightsAtXValue(float, float, float):java.util.List");
    }

    protected float getMinimumDistance(List<Highlight> list, float f, YAxis.AxisDependency axisDependency) {
        float f2 = Float.MAX_VALUE;
        for (int i = 0; i < list.size(); i++) {
            Highlight highlight = list.get(i);
            f2 = f2;
            if (highlight.getAxis() == axisDependency) {
                float abs = Math.abs(getHighlightPos(highlight) - f);
                f2 = f2;
                if (abs < f2) {
                    f2 = abs;
                }
            }
        }
        return f2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MPPointD getValsForTouch(float f, float f2) {
        return this.mChart.getTransformer(YAxis.AxisDependency.LEFT).getValuesByTouchPoint(f, f2);
    }
}
