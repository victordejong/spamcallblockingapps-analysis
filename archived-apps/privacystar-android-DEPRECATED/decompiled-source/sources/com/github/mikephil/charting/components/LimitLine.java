package com.github.mikephil.charting.components;

import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.github.mikephil.charting.utils.Utils;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/LimitLine.class */
public class LimitLine extends ComponentBase {
    private DashPathEffect mDashPathEffect;
    private String mLabel;
    private LimitLabelPosition mLabelPosition;
    private float mLimit;
    private int mLineColor;
    private float mLineWidth;
    private Paint.Style mTextStyle;

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/LimitLine$LimitLabelPosition.class */
    public enum LimitLabelPosition {
        LEFT_TOP,
        LEFT_BOTTOM,
        RIGHT_TOP,
        RIGHT_BOTTOM
    }

    public LimitLine(float f) {
        this.mLimit = 0.0f;
        this.mLineWidth = 2.0f;
        this.mLineColor = Color.rgb(237, 91, 91);
        this.mTextStyle = Paint.Style.FILL_AND_STROKE;
        this.mLabel = "";
        this.mDashPathEffect = null;
        this.mLabelPosition = LimitLabelPosition.RIGHT_TOP;
        this.mLimit = f;
    }

    public LimitLine(float f, String str) {
        this.mLimit = 0.0f;
        this.mLineWidth = 2.0f;
        this.mLineColor = Color.rgb(237, 91, 91);
        this.mTextStyle = Paint.Style.FILL_AND_STROKE;
        this.mLabel = "";
        this.mDashPathEffect = null;
        this.mLabelPosition = LimitLabelPosition.RIGHT_TOP;
        this.mLimit = f;
        this.mLabel = str;
    }

    public void disableDashedLine() {
        this.mDashPathEffect = null;
    }

    public void enableDashedLine(float f, float f2, float f3) {
        this.mDashPathEffect = new DashPathEffect(new float[]{f, f2}, f3);
    }

    public DashPathEffect getDashPathEffect() {
        return this.mDashPathEffect;
    }

    public String getLabel() {
        return this.mLabel;
    }

    public LimitLabelPosition getLabelPosition() {
        return this.mLabelPosition;
    }

    public float getLimit() {
        return this.mLimit;
    }

    public int getLineColor() {
        return this.mLineColor;
    }

    public float getLineWidth() {
        return this.mLineWidth;
    }

    public Paint.Style getTextStyle() {
        return this.mTextStyle;
    }

    public boolean isDashedLineEnabled() {
        return this.mDashPathEffect != null;
    }

    public void setLabel(String str) {
        this.mLabel = str;
    }

    public void setLabelPosition(LimitLabelPosition limitLabelPosition) {
        this.mLabelPosition = limitLabelPosition;
    }

    public void setLineColor(int i) {
        this.mLineColor = i;
    }

    public void setLineWidth(float f) {
        float f2 = f;
        if (f < 0.2f) {
            f2 = 0.2f;
        }
        float f3 = f2;
        if (f2 > 12.0f) {
            f3 = 12.0f;
        }
        this.mLineWidth = Utils.convertDpToPixel(f3);
    }

    public void setTextStyle(Paint.Style style) {
        this.mTextStyle = style;
    }
}
