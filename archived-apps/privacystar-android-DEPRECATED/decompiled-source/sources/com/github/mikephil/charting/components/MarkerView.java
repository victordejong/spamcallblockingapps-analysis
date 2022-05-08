package com.github.mikephil.charting.components;

import android.content.Context;
import android.graphics.Canvas;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.utils.MPPointF;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/MarkerView.class */
public class MarkerView extends RelativeLayout implements IMarker {
    private MPPointF mOffset = new MPPointF();
    private MPPointF mOffset2 = new MPPointF();
    private WeakReference<Chart> mWeakChart;

    public MarkerView(Context context, int i) {
        super(context);
        setupLayoutResource(i);
    }

    private void setupLayoutResource(int i) {
        View inflate = LayoutInflater.from(getContext()).inflate(i, this);
        inflate.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        inflate.layout(0, 0, inflate.getMeasuredWidth(), inflate.getMeasuredHeight());
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void draw(Canvas canvas, float f, float f2) {
        MPPointF offsetForDrawingAtPoint = getOffsetForDrawingAtPoint(f, f2);
        int save = canvas.save();
        canvas.translate(f + offsetForDrawingAtPoint.f160x, f2 + offsetForDrawingAtPoint.f161y);
        draw(canvas);
        canvas.restoreToCount(save);
    }

    public Chart getChartView() {
        return this.mWeakChart == null ? null : this.mWeakChart.get();
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffset() {
        return this.mOffset;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffsetForDrawingAtPoint(float f, float f2) {
        MPPointF offset = getOffset();
        this.mOffset2.f160x = offset.f160x;
        this.mOffset2.f161y = offset.f161y;
        Chart chartView = getChartView();
        float width = getWidth();
        float height = getHeight();
        if (this.mOffset2.f160x + f < 0.0f) {
            this.mOffset2.f160x = -f;
        } else if (chartView != null && f + width + this.mOffset2.f160x > chartView.getWidth()) {
            this.mOffset2.f160x = (chartView.getWidth() - f) - width;
        }
        if (this.mOffset2.f161y + f2 < 0.0f) {
            this.mOffset2.f161y = -f2;
        } else if (chartView != null && f2 + height + this.mOffset2.f161y > chartView.getHeight()) {
            this.mOffset2.f161y = (chartView.getHeight() - f2) - height;
        }
        return this.mOffset2;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void refreshContent(Entry entry, Highlight highlight) {
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        layout(0, 0, getMeasuredWidth(), getMeasuredHeight());
    }

    public void setChartView(Chart chart) {
        this.mWeakChart = new WeakReference<>(chart);
    }

    public void setOffset(float f, float f2) {
        this.mOffset.f160x = f;
        this.mOffset.f161y = f2;
    }

    public void setOffset(MPPointF mPPointF) {
        this.mOffset = mPPointF;
        if (this.mOffset == null) {
            this.mOffset = new MPPointF();
        }
    }
}
