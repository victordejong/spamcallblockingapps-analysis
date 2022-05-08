package com.github.mikephil.charting.utils;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.github.mikephil.charting.data.CandleEntry;
import com.github.mikephil.charting.interfaces.datasets.ICandleDataSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/utils/Transformer.class */
public class Transformer {
    protected ViewPortHandler mViewPortHandler;
    protected Matrix mMatrixValueToPx = new Matrix();
    protected Matrix mMatrixOffset = new Matrix();
    protected float[] valuePointsForGenerateTransformedValuesScatter = new float[1];
    protected float[] valuePointsForGenerateTransformedValuesBubble = new float[1];
    protected float[] valuePointsForGenerateTransformedValuesLine = new float[1];
    protected float[] valuePointsForGenerateTransformedValuesCandle = new float[1];
    protected Matrix mPixelToValueMatrixBuffer = new Matrix();
    float[] ptsBuffer = new float[2];
    private Matrix mMBuffer1 = new Matrix();
    private Matrix mMBuffer2 = new Matrix();

    public Transformer(ViewPortHandler viewPortHandler) {
        this.mViewPortHandler = viewPortHandler;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float[] generateTransformedValuesBubble(com.github.mikephil.charting.interfaces.datasets.IBubbleDataSet r6, float r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 1
            int r0 = r0 + r1
            r1 = 2
            int r0 = r0 * r1
            r10 = r0
            r0 = r5
            float[] r0 = r0.valuePointsForGenerateTransformedValuesBubble
            int r0 = r0.length
            r1 = r10
            if (r0 == r1) goto L_0x001c
            r0 = r5
            r1 = r10
            float[] r1 = new float[r1]
            r0.valuePointsForGenerateTransformedValuesBubble = r1
        L_0x001c:
            r0 = r5
            float[] r0 = r0.valuePointsForGenerateTransformedValuesBubble
            r11 = r0
            r0 = 0
            r9 = r0
        L_0x0025:
            r0 = r9
            r1 = r10
            if (r0 >= r1) goto L_0x006e
            r0 = r6
            r1 = r9
            r2 = 2
            int r1 = r1 / r2
            r2 = r8
            int r1 = r1 + r2
            com.github.mikephil.charting.data.Entry r0 = r0.getEntryForIndex(r1)
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x005a
            r0 = r11
            r1 = r9
            r2 = r12
            float r2 = r2.getX()
            r0[r1] = r2
            r0 = r11
            r1 = r9
            r2 = 1
            int r1 = r1 + r2
            r2 = r12
            float r2 = r2.getY()
            r3 = r7
            float r2 = r2 * r3
            r0[r1] = r2
            goto L_0x0068
        L_0x005a:
            r0 = r11
            r1 = r9
            r2 = 0
            r0[r1] = r2
            r0 = r11
            r1 = r9
            r2 = 1
            int r1 = r1 + r2
            r2 = 0
            r0[r1] = r2
        L_0x0068:
            int r9 = r9 + 2
            goto L_0x0025
        L_0x006e:
            r0 = r5
            android.graphics.Matrix r0 = r0.getValueToPixelMatrix()
            r1 = r11
            r0.mapPoints(r1)
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.utils.Transformer.generateTransformedValuesBubble(com.github.mikephil.charting.interfaces.datasets.IBubbleDataSet, float, int, int):float[]");
    }

    public float[] generateTransformedValuesCandle(ICandleDataSet iCandleDataSet, float f, float f2, int i, int i2) {
        int i3 = ((int) (((i2 - i) * f) + 1.0f)) * 2;
        if (this.valuePointsForGenerateTransformedValuesCandle.length != i3) {
            this.valuePointsForGenerateTransformedValuesCandle = new float[i3];
        }
        float[] fArr = this.valuePointsForGenerateTransformedValuesCandle;
        for (int i4 = 0; i4 < i3; i4 += 2) {
            CandleEntry candleEntry = (CandleEntry) iCandleDataSet.getEntryForIndex((i4 / 2) + i);
            if (candleEntry != null) {
                fArr[i4] = candleEntry.getX();
                fArr[i4 + 1] = candleEntry.getHigh() * f2;
            } else {
                fArr[i4] = 0.0f;
                fArr[i4 + 1] = 0.0f;
            }
        }
        getValueToPixelMatrix().mapPoints(fArr);
        return fArr;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float[] generateTransformedValuesLine(com.github.mikephil.charting.interfaces.datasets.ILineDataSet r6, float r7, float r8, int r9, int r10) {
        /*
            r5 = this;
            r0 = r10
            r1 = r9
            int r0 = r0 - r1
            float r0 = (float) r0
            r1 = r7
            float r0 = r0 * r1
            int r0 = (int) r0
            r1 = 1
            int r0 = r0 + r1
            r1 = 2
            int r0 = r0 * r1
            r11 = r0
            r0 = r5
            float[] r0 = r0.valuePointsForGenerateTransformedValuesLine
            int r0 = r0.length
            r1 = r11
            if (r0 == r1) goto L_0x0021
            r0 = r5
            r1 = r11
            float[] r1 = new float[r1]
            r0.valuePointsForGenerateTransformedValuesLine = r1
        L_0x0021:
            r0 = r5
            float[] r0 = r0.valuePointsForGenerateTransformedValuesLine
            r12 = r0
            r0 = 0
            r10 = r0
        L_0x002a:
            r0 = r10
            r1 = r11
            if (r0 >= r1) goto L_0x0074
            r0 = r6
            r1 = r10
            r2 = 2
            int r1 = r1 / r2
            r2 = r9
            int r1 = r1 + r2
            com.github.mikephil.charting.data.Entry r0 = r0.getEntryForIndex(r1)
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0060
            r0 = r12
            r1 = r10
            r2 = r13
            float r2 = r2.getX()
            r0[r1] = r2
            r0 = r12
            r1 = r10
            r2 = 1
            int r1 = r1 + r2
            r2 = r13
            float r2 = r2.getY()
            r3 = r8
            float r2 = r2 * r3
            r0[r1] = r2
            goto L_0x006e
        L_0x0060:
            r0 = r12
            r1 = r10
            r2 = 0
            r0[r1] = r2
            r0 = r12
            r1 = r10
            r2 = 1
            int r1 = r1 + r2
            r2 = 0
            r0[r1] = r2
        L_0x006e:
            int r10 = r10 + 2
            goto L_0x002a
        L_0x0074:
            r0 = r5
            android.graphics.Matrix r0 = r0.getValueToPixelMatrix()
            r1 = r12
            r0.mapPoints(r1)
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.utils.Transformer.generateTransformedValuesLine(com.github.mikephil.charting.interfaces.datasets.ILineDataSet, float, float, int, int):float[]");
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float[] generateTransformedValuesScatter(com.github.mikephil.charting.interfaces.datasets.IScatterDataSet r6, float r7, float r8, int r9, int r10) {
        /*
            r5 = this;
            r0 = r10
            r1 = r9
            int r0 = r0 - r1
            float r0 = (float) r0
            r1 = r7
            float r0 = r0 * r1
            r1 = 1065353216(0x3f800000, float:1.0)
            float r0 = r0 + r1
            int r0 = (int) r0
            r1 = 2
            int r0 = r0 * r1
            r11 = r0
            r0 = r5
            float[] r0 = r0.valuePointsForGenerateTransformedValuesScatter
            int r0 = r0.length
            r1 = r11
            if (r0 == r1) goto L_0x0021
            r0 = r5
            r1 = r11
            float[] r1 = new float[r1]
            r0.valuePointsForGenerateTransformedValuesScatter = r1
        L_0x0021:
            r0 = r5
            float[] r0 = r0.valuePointsForGenerateTransformedValuesScatter
            r12 = r0
            r0 = 0
            r10 = r0
        L_0x002a:
            r0 = r10
            r1 = r11
            if (r0 >= r1) goto L_0x0074
            r0 = r6
            r1 = r10
            r2 = 2
            int r1 = r1 / r2
            r2 = r9
            int r1 = r1 + r2
            com.github.mikephil.charting.data.Entry r0 = r0.getEntryForIndex(r1)
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0060
            r0 = r12
            r1 = r10
            r2 = r13
            float r2 = r2.getX()
            r0[r1] = r2
            r0 = r12
            r1 = r10
            r2 = 1
            int r1 = r1 + r2
            r2 = r13
            float r2 = r2.getY()
            r3 = r8
            float r2 = r2 * r3
            r0[r1] = r2
            goto L_0x006e
        L_0x0060:
            r0 = r12
            r1 = r10
            r2 = 0
            r0[r1] = r2
            r0 = r12
            r1 = r10
            r2 = 1
            int r1 = r1 + r2
            r2 = 0
            r0[r1] = r2
        L_0x006e:
            int r10 = r10 + 2
            goto L_0x002a
        L_0x0074:
            r0 = r5
            android.graphics.Matrix r0 = r0.getValueToPixelMatrix()
            r1 = r12
            r0.mapPoints(r1)
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.utils.Transformer.generateTransformedValuesScatter(com.github.mikephil.charting.interfaces.datasets.IScatterDataSet, float, float, int, int):float[]");
    }

    public Matrix getOffsetMatrix() {
        return this.mMatrixOffset;
    }

    public MPPointD getPixelForValues(float f, float f2) {
        this.ptsBuffer[0] = f;
        this.ptsBuffer[1] = f2;
        pointValuesToPixel(this.ptsBuffer);
        return MPPointD.getInstance(this.ptsBuffer[0], this.ptsBuffer[1]);
    }

    public Matrix getPixelToValueMatrix() {
        getValueToPixelMatrix().invert(this.mMBuffer2);
        return this.mMBuffer2;
    }

    public Matrix getValueMatrix() {
        return this.mMatrixValueToPx;
    }

    public Matrix getValueToPixelMatrix() {
        this.mMBuffer1.set(this.mMatrixValueToPx);
        this.mMBuffer1.postConcat(this.mViewPortHandler.mMatrixTouch);
        this.mMBuffer1.postConcat(this.mMatrixOffset);
        return this.mMBuffer1;
    }

    public MPPointD getValuesByTouchPoint(float f, float f2) {
        MPPointD instance = MPPointD.getInstance(0.0d, 0.0d);
        getValuesByTouchPoint(f, f2, instance);
        return instance;
    }

    public void getValuesByTouchPoint(float f, float f2, MPPointD mPPointD) {
        this.ptsBuffer[0] = f;
        this.ptsBuffer[1] = f2;
        pixelsToValue(this.ptsBuffer);
        mPPointD.f158x = this.ptsBuffer[0];
        mPPointD.f159y = this.ptsBuffer[1];
    }

    public void pathValueToPixel(Path path) {
        path.transform(this.mMatrixValueToPx);
        path.transform(this.mViewPortHandler.getMatrixTouch());
        path.transform(this.mMatrixOffset);
    }

    public void pathValuesToPixel(List<Path> list) {
        for (int i = 0; i < list.size(); i++) {
            pathValueToPixel(list.get(i));
        }
    }

    public void pixelsToValue(float[] fArr) {
        Matrix matrix = this.mPixelToValueMatrixBuffer;
        matrix.reset();
        this.mMatrixOffset.invert(matrix);
        matrix.mapPoints(fArr);
        this.mViewPortHandler.getMatrixTouch().invert(matrix);
        matrix.mapPoints(fArr);
        this.mMatrixValueToPx.invert(matrix);
        matrix.mapPoints(fArr);
    }

    public void pointValuesToPixel(float[] fArr) {
        this.mMatrixValueToPx.mapPoints(fArr);
        this.mViewPortHandler.getMatrixTouch().mapPoints(fArr);
        this.mMatrixOffset.mapPoints(fArr);
    }

    public void prepareMatrixOffset(boolean z) {
        this.mMatrixOffset.reset();
        if (!z) {
            this.mMatrixOffset.postTranslate(this.mViewPortHandler.offsetLeft(), this.mViewPortHandler.getChartHeight() - this.mViewPortHandler.offsetBottom());
            return;
        }
        this.mMatrixOffset.setTranslate(this.mViewPortHandler.offsetLeft(), -this.mViewPortHandler.offsetTop());
        this.mMatrixOffset.postScale(1.0f, -1.0f);
    }

    public void prepareMatrixValuePx(float f, float f2, float f3, float f4) {
        float contentWidth = this.mViewPortHandler.contentWidth() / f2;
        float contentHeight = this.mViewPortHandler.contentHeight() / f3;
        float f5 = contentWidth;
        if (Float.isInfinite(contentWidth)) {
            f5 = 0.0f;
        }
        float f6 = contentHeight;
        if (Float.isInfinite(contentHeight)) {
            f6 = 0.0f;
        }
        this.mMatrixValueToPx.reset();
        this.mMatrixValueToPx.postTranslate(-f, -f4);
        this.mMatrixValueToPx.postScale(f5, -f6);
    }

    public void rectToPixelPhase(RectF rectF, float f) {
        rectF.top *= f;
        rectF.bottom *= f;
        this.mMatrixValueToPx.mapRect(rectF);
        this.mViewPortHandler.getMatrixTouch().mapRect(rectF);
        this.mMatrixOffset.mapRect(rectF);
    }

    public void rectToPixelPhaseHorizontal(RectF rectF, float f) {
        rectF.left *= f;
        rectF.right *= f;
        this.mMatrixValueToPx.mapRect(rectF);
        this.mViewPortHandler.getMatrixTouch().mapRect(rectF);
        this.mMatrixOffset.mapRect(rectF);
    }

    public void rectValueToPixel(RectF rectF) {
        this.mMatrixValueToPx.mapRect(rectF);
        this.mViewPortHandler.getMatrixTouch().mapRect(rectF);
        this.mMatrixOffset.mapRect(rectF);
    }

    public void rectValueToPixelHorizontal(RectF rectF) {
        this.mMatrixValueToPx.mapRect(rectF);
        this.mViewPortHandler.getMatrixTouch().mapRect(rectF);
        this.mMatrixOffset.mapRect(rectF);
    }

    public void rectValueToPixelHorizontal(RectF rectF, float f) {
        rectF.left *= f;
        rectF.right *= f;
        this.mMatrixValueToPx.mapRect(rectF);
        this.mViewPortHandler.getMatrixTouch().mapRect(rectF);
        this.mMatrixOffset.mapRect(rectF);
    }

    public void rectValuesToPixel(List<RectF> list) {
        Matrix valueToPixelMatrix = getValueToPixelMatrix();
        for (int i = 0; i < list.size(); i++) {
            valueToPixelMatrix.mapRect(list.get(i));
        }
    }
}
