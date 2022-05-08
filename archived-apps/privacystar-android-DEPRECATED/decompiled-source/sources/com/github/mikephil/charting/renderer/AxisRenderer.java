package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.p001v4.view.ViewCompat;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.utils.MPPointD;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.ViewPortHandler;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/AxisRenderer.class */
public abstract class AxisRenderer extends Renderer {
    protected AxisBase mAxis;
    protected Paint mAxisLabelPaint;
    protected Paint mAxisLinePaint;
    protected Paint mGridPaint;
    protected Paint mLimitLinePaint;
    protected Transformer mTrans;

    public AxisRenderer(ViewPortHandler viewPortHandler, Transformer transformer, AxisBase axisBase) {
        super(viewPortHandler);
        this.mTrans = transformer;
        this.mAxis = axisBase;
        if (this.mViewPortHandler != null) {
            this.mAxisLabelPaint = new Paint(1);
            this.mGridPaint = new Paint();
            this.mGridPaint.setColor(-7829368);
            this.mGridPaint.setStrokeWidth(1.0f);
            this.mGridPaint.setStyle(Paint.Style.STROKE);
            this.mGridPaint.setAlpha(90);
            this.mAxisLinePaint = new Paint();
            this.mAxisLinePaint.setColor(ViewCompat.MEASURED_STATE_MASK);
            this.mAxisLinePaint.setStrokeWidth(1.0f);
            this.mAxisLinePaint.setStyle(Paint.Style.STROKE);
            this.mLimitLinePaint = new Paint(1);
            this.mLimitLinePaint.setStyle(Paint.Style.STROKE);
        }
    }

    public void computeAxis(float f, float f2, boolean z) {
        float f3 = f;
        float f4 = f2;
        if (this.mViewPortHandler != null) {
            f3 = f;
            f4 = f2;
            if (this.mViewPortHandler.contentWidth() > 10.0f) {
                f3 = f;
                f4 = f2;
                if (!this.mViewPortHandler.isFullyZoomedOutY()) {
                    MPPointD valuesByTouchPoint = this.mTrans.getValuesByTouchPoint(this.mViewPortHandler.contentLeft(), this.mViewPortHandler.contentTop());
                    MPPointD valuesByTouchPoint2 = this.mTrans.getValuesByTouchPoint(this.mViewPortHandler.contentLeft(), this.mViewPortHandler.contentBottom());
                    if (!z) {
                        f3 = (float) valuesByTouchPoint2.f159y;
                        f4 = (float) valuesByTouchPoint.f159y;
                    } else {
                        f3 = (float) valuesByTouchPoint.f159y;
                        f4 = (float) valuesByTouchPoint2.f159y;
                    }
                    MPPointD.recycleInstance(valuesByTouchPoint);
                    MPPointD.recycleInstance(valuesByTouchPoint2);
                }
            }
        }
        computeAxisValues(f3, f4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v120, types: [double] */
    /* JADX WARN: Type inference failed for: r0v149 */
    /* JADX WARN: Type inference failed for: r0v21, types: [double] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v4, types: [double] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v2, types: [double] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [double] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void computeAxisValues(float r6, float r7) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.AxisRenderer.computeAxisValues(float, float):void");
    }

    public Paint getPaintAxisLabels() {
        return this.mAxisLabelPaint;
    }

    public Paint getPaintAxisLine() {
        return this.mAxisLinePaint;
    }

    public Paint getPaintGrid() {
        return this.mGridPaint;
    }

    public Transformer getTransformer() {
        return this.mTrans;
    }

    public abstract void renderAxisLabels(Canvas canvas);

    public abstract void renderAxisLine(Canvas canvas);

    public abstract void renderGridLines(Canvas canvas);

    public abstract void renderLimitLines(Canvas canvas);
}
