package com.github.mikephil.charting.data;

import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/LineData.class */
public class LineData extends BarLineScatterCandleBubbleData<ILineDataSet> {
    public LineData() {
    }

    public LineData(List<ILineDataSet> list) {
        super(list);
    }

    public LineData(ILineDataSet... iLineDataSetArr) {
        super(iLineDataSetArr);
    }
}
