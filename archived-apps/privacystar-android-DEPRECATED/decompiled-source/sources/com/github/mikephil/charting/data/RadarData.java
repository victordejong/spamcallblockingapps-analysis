package com.github.mikephil.charting.data;

import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IRadarDataSet;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/RadarData.class */
public class RadarData extends ChartData<IRadarDataSet> {
    private List<String> mLabels;

    public RadarData() {
    }

    public RadarData(List<IRadarDataSet> list) {
        super(list);
    }

    public RadarData(IRadarDataSet... iRadarDataSetArr) {
        super(iRadarDataSetArr);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.github.mikephil.charting.data.Entry] */
    @Override // com.github.mikephil.charting.data.ChartData
    public Entry getEntryForHighlight(Highlight highlight) {
        return getDataSetByIndex(highlight.getDataSetIndex()).getEntryForIndex((int) highlight.getX());
    }

    public List<String> getLabels() {
        return this.mLabels;
    }

    public void setLabels(List<String> list) {
        this.mLabels = list;
    }

    public void setLabels(String... strArr) {
        this.mLabels = Arrays.asList(strArr);
    }
}
