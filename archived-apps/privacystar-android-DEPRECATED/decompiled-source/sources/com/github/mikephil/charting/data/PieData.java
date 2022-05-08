package com.github.mikephil.charting.data;

import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/PieData.class */
public class PieData extends ChartData<IPieDataSet> {
    public PieData() {
    }

    public PieData(IPieDataSet iPieDataSet) {
        super(iPieDataSet);
    }

    public IPieDataSet getDataSet() {
        return (IPieDataSet) this.mDataSets.get(0);
    }

    @Override // com.github.mikephil.charting.data.ChartData
    public IPieDataSet getDataSetByIndex(int i) {
        return i == 0 ? getDataSet() : null;
    }

    @Override // com.github.mikephil.charting.data.ChartData
    public IPieDataSet getDataSetByLabel(String str, boolean z) {
        IPieDataSet iPieDataSet = null;
        if (z) {
            if (str.equalsIgnoreCase(((IPieDataSet) this.mDataSets.get(0)).getLabel())) {
                iPieDataSet = (IPieDataSet) this.mDataSets.get(0);
            }
        } else if (str.equals(((IPieDataSet) this.mDataSets.get(0)).getLabel())) {
            iPieDataSet = (IPieDataSet) this.mDataSets.get(0);
        }
        return iPieDataSet;
    }

    @Override // com.github.mikephil.charting.data.ChartData
    public Entry getEntryForHighlight(Highlight highlight) {
        return getDataSet().getEntryForIndex((int) highlight.getX());
    }

    public float getYValueSum() {
        float f = 0.0f;
        for (int i = 0; i < getDataSet().getEntryCount(); i++) {
            f += getDataSet().getEntryForIndex(i).getY();
        }
        return f;
    }

    public void setDataSet(IPieDataSet iPieDataSet) {
        this.mDataSets.clear();
        this.mDataSets.add(iPieDataSet);
        notifyDataChanged();
    }
}
