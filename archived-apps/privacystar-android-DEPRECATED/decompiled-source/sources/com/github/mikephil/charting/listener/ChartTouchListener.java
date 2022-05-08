package com.github.mikephil.charting.listener;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.highlight.Highlight;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/listener/ChartTouchListener.class */
public abstract class ChartTouchListener<T extends Chart<?>> extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener {
    protected static final int DRAG = 1;
    protected static final int NONE = 0;
    protected static final int PINCH_ZOOM = 4;
    protected static final int POST_ZOOM = 5;
    protected static final int ROTATE = 6;
    protected static final int X_ZOOM = 2;
    protected static final int Y_ZOOM = 3;
    protected T mChart;
    protected GestureDetector mGestureDetector;
    protected Highlight mLastHighlighted;
    protected ChartGesture mLastGesture = ChartGesture.NONE;
    protected int mTouchMode = 0;

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/listener/ChartTouchListener$ChartGesture.class */
    public enum ChartGesture {
        NONE,
        DRAG,
        X_ZOOM,
        Y_ZOOM,
        PINCH_ZOOM,
        ROTATE,
        SINGLE_TAP,
        DOUBLE_TAP,
        LONG_PRESS,
        FLING
    }

    public ChartTouchListener(T t) {
        this.mChart = t;
        this.mGestureDetector = new GestureDetector(t.getContext(), this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static float distance(float f, float f2, float f3, float f4) {
        float f5 = f - f2;
        float f6 = f3 - f4;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    public void endAction(MotionEvent motionEvent) {
        OnChartGestureListener onChartGestureListener = this.mChart.getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartGestureEnd(motionEvent, this.mLastGesture);
        }
    }

    public ChartGesture getLastGesture() {
        return this.mLastGesture;
    }

    public int getTouchMode() {
        return this.mTouchMode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void performHighlight(Highlight highlight, MotionEvent motionEvent) {
        if (highlight == null || highlight.equalTo(this.mLastHighlighted)) {
            this.mChart.highlightValue(null, true);
            this.mLastHighlighted = null;
            return;
        }
        this.mChart.highlightValue(highlight, true);
        this.mLastHighlighted = highlight;
    }

    public void setLastHighlighted(Highlight highlight) {
        this.mLastHighlighted = highlight;
    }

    public void startAction(MotionEvent motionEvent) {
        OnChartGestureListener onChartGestureListener = this.mChart.getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartGestureStart(motionEvent, this.mLastGesture);
        }
    }
}
