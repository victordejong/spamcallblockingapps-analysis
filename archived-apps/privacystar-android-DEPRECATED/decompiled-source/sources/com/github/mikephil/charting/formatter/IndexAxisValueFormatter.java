package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.components.AxisBase;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/formatter/IndexAxisValueFormatter.class */
public class IndexAxisValueFormatter implements IAxisValueFormatter {
    private int mValueCount;
    private String[] mValues;

    public IndexAxisValueFormatter() {
        this.mValues = new String[0];
        this.mValueCount = 0;
    }

    public IndexAxisValueFormatter(Collection<String> collection) {
        this.mValues = new String[0];
        this.mValueCount = 0;
        if (collection != null) {
            setValues((String[]) collection.toArray(new String[collection.size()]));
        }
    }

    public IndexAxisValueFormatter(String[] strArr) {
        this.mValues = new String[0];
        this.mValueCount = 0;
        if (strArr != null) {
            setValues(strArr);
        }
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        int round = Math.round(f);
        return (round < 0 || round >= this.mValueCount || round != ((int) f)) ? "" : this.mValues[round];
    }

    public String[] getValues() {
        return this.mValues;
    }

    public void setValues(String[] strArr) {
        String[] strArr2 = strArr;
        if (strArr == null) {
            strArr2 = new String[0];
        }
        this.mValues = strArr2;
        this.mValueCount = strArr2.length;
    }
}
