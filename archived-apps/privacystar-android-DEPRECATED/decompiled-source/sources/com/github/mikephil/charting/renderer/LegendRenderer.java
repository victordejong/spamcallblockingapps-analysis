package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Typeface;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.LegendEntry;
import com.github.mikephil.charting.data.ChartData;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.interfaces.datasets.ICandleDataSet;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.github.mikephil.charting.utils.FSize;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/LegendRenderer.class */
public class LegendRenderer extends Renderer {
    protected Legend mLegend;
    protected List<LegendEntry> computedEntries = new ArrayList(16);
    protected Paint.FontMetrics legendFontMetrics = new Paint.FontMetrics();
    private Path mLineFormPath = new Path();
    protected Paint mLegendLabelPaint = new Paint(1);
    protected Paint mLegendFormPaint = new Paint(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.mikephil.charting.renderer.LegendRenderer$1 */
    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/LegendRenderer$1.class */
    public static /* synthetic */ class C12301 {

        /* renamed from: $SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm */
        static final /* synthetic */ int[] f154xfbec3b85 = new int[Legend.LegendForm.values().length];

        /* renamed from: $SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment */
        static final /* synthetic */ int[] f155x2787f53e;

        /* renamed from: $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation */
        static final /* synthetic */ int[] f156x9c9dbef;

        /* renamed from: $SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment */
        static final /* synthetic */ int[] f157xc926f1ec;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00c0 -> B:70:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c4 -> B:54:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c8 -> B:50:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00cc -> B:62:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d0 -> B:58:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d4 -> B:14:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d8 -> B:64:0x0060). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00dc -> B:19:0x006b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e0 -> B:68:0x007f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e4 -> B:52:0x008a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e8 -> B:26:0x0095). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ec -> B:60:0x00a9). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f0 -> B:56:0x00b4). Please submit an issue!!! */
        static {
            try {
                f154xfbec3b85[Legend.LegendForm.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f154xfbec3b85[Legend.LegendForm.EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f154xfbec3b85[Legend.LegendForm.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f154xfbec3b85[Legend.LegendForm.CIRCLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f154xfbec3b85[Legend.LegendForm.SQUARE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f154xfbec3b85[Legend.LegendForm.LINE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            f156x9c9dbef = new int[Legend.LegendOrientation.values().length];
            try {
                f156x9c9dbef[Legend.LegendOrientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f156x9c9dbef[Legend.LegendOrientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            f157xc926f1ec = new int[Legend.LegendVerticalAlignment.values().length];
            try {
                f157xc926f1ec[Legend.LegendVerticalAlignment.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f157xc926f1ec[Legend.LegendVerticalAlignment.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f157xc926f1ec[Legend.LegendVerticalAlignment.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e11) {
            }
            f155x2787f53e = new int[Legend.LegendHorizontalAlignment.values().length];
            try {
                f155x2787f53e[Legend.LegendHorizontalAlignment.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f155x2787f53e[Legend.LegendHorizontalAlignment.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f155x2787f53e[Legend.LegendHorizontalAlignment.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e14) {
            }
        }
    }

    public LegendRenderer(ViewPortHandler viewPortHandler, Legend legend) {
        super(viewPortHandler);
        this.mLegend = legend;
        this.mLegendLabelPaint.setTextSize(Utils.convertDpToPixel(9.0f));
        this.mLegendLabelPaint.setTextAlign(Paint.Align.LEFT);
        this.mLegendFormPaint.setStyle(Paint.Style.FILL);
    }

    public void computeLegend(ChartData<?> chartData) {
        ChartData<?> chartData2 = chartData;
        if (!this.mLegend.isLegendCustom()) {
            this.computedEntries.clear();
            for (int i = 0; i < chartData.getDataSetCount(); i++) {
                IDataSet dataSetByIndex = chartData2.getDataSetByIndex(i);
                List<Integer> colors = dataSetByIndex.getColors();
                int entryCount = dataSetByIndex.getEntryCount();
                if (dataSetByIndex instanceof IBarDataSet) {
                    IBarDataSet iBarDataSet = (IBarDataSet) dataSetByIndex;
                    if (iBarDataSet.isStacked()) {
                        String[] stackLabels = iBarDataSet.getStackLabels();
                        for (int i2 = 0; i2 < colors.size() && i2 < iBarDataSet.getStackSize(); i2++) {
                            this.computedEntries.add(new LegendEntry(stackLabels[i2 % stackLabels.length], dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), colors.get(i2).intValue()));
                        }
                        if (iBarDataSet.getLabel() != null) {
                            this.computedEntries.add(new LegendEntry(dataSetByIndex.getLabel(), Legend.LegendForm.NONE, Float.NaN, Float.NaN, null, ColorTemplate.COLOR_NONE));
                        }
                    }
                }
                if (dataSetByIndex instanceof IPieDataSet) {
                    IPieDataSet iPieDataSet = (IPieDataSet) dataSetByIndex;
                    for (int i3 = 0; i3 < colors.size() && i3 < entryCount; i3++) {
                        this.computedEntries.add(new LegendEntry(iPieDataSet.getEntryForIndex(i3).getLabel(), dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), colors.get(i3).intValue()));
                    }
                    if (iPieDataSet.getLabel() != null) {
                        this.computedEntries.add(new LegendEntry(dataSetByIndex.getLabel(), Legend.LegendForm.NONE, Float.NaN, Float.NaN, null, ColorTemplate.COLOR_NONE));
                    }
                } else {
                    if (dataSetByIndex instanceof ICandleDataSet) {
                        ICandleDataSet iCandleDataSet = (ICandleDataSet) dataSetByIndex;
                        if (iCandleDataSet.getDecreasingColor() != 1122867) {
                            int decreasingColor = iCandleDataSet.getDecreasingColor();
                            int increasingColor = iCandleDataSet.getIncreasingColor();
                            this.computedEntries.add(new LegendEntry(null, dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), decreasingColor));
                            this.computedEntries.add(new LegendEntry(dataSetByIndex.getLabel(), dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), increasingColor));
                        }
                    }
                    int i4 = 0;
                    while (i4 < colors.size() && i4 < entryCount) {
                        this.computedEntries.add(new LegendEntry((i4 >= colors.size() - 1 || i4 >= entryCount - 1) ? chartData.getDataSetByIndex(i).getLabel() : null, dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), colors.get(i4).intValue()));
                        i4++;
                    }
                }
                chartData2 = chartData;
            }
            if (this.mLegend.getExtraEntries() != null) {
                Collections.addAll(this.computedEntries, this.mLegend.getExtraEntries());
            }
            this.mLegend.setEntries(this.computedEntries);
        }
        Typeface typeface = this.mLegend.getTypeface();
        if (typeface != null) {
            this.mLegendLabelPaint.setTypeface(typeface);
        }
        this.mLegendLabelPaint.setTextSize(this.mLegend.getTextSize());
        this.mLegendLabelPaint.setColor(this.mLegend.getTextColor());
        this.mLegend.calculateDimensions(this.mLegendLabelPaint, this.mViewPortHandler);
    }

    protected void drawForm(Canvas canvas, float f, float f2, LegendEntry legendEntry, Legend legend) {
        if (legendEntry.formColor != 1122868 && legendEntry.formColor != 1122867 && legendEntry.formColor != 0) {
            int save = canvas.save();
            Legend.LegendForm legendForm = legendEntry.form;
            Legend.LegendForm legendForm2 = legendForm;
            if (legendForm == Legend.LegendForm.DEFAULT) {
                legendForm2 = legend.getForm();
            }
            this.mLegendFormPaint.setColor(legendEntry.formColor);
            float convertDpToPixel = Utils.convertDpToPixel(Float.isNaN(legendEntry.formSize) ? legend.getFormSize() : legendEntry.formSize);
            float f3 = convertDpToPixel / 2.0f;
            switch (C12301.f154xfbec3b85[legendForm2.ordinal()]) {
                case 3:
                case 4:
                    this.mLegendFormPaint.setStyle(Paint.Style.FILL);
                    canvas.drawCircle(f + f3, f2, f3, this.mLegendFormPaint);
                    break;
                case 5:
                    this.mLegendFormPaint.setStyle(Paint.Style.FILL);
                    canvas.drawRect(f, f2 - f3, f + convertDpToPixel, f2 + f3, this.mLegendFormPaint);
                    break;
                case 6:
                    float convertDpToPixel2 = Utils.convertDpToPixel(Float.isNaN(legendEntry.formLineWidth) ? legend.getFormLineWidth() : legendEntry.formLineWidth);
                    DashPathEffect formLineDashEffect = legendEntry.formLineDashEffect == null ? legend.getFormLineDashEffect() : legendEntry.formLineDashEffect;
                    this.mLegendFormPaint.setStyle(Paint.Style.STROKE);
                    this.mLegendFormPaint.setStrokeWidth(convertDpToPixel2);
                    this.mLegendFormPaint.setPathEffect(formLineDashEffect);
                    this.mLineFormPath.reset();
                    this.mLineFormPath.moveTo(f, f2);
                    this.mLineFormPath.lineTo(f + convertDpToPixel, f2);
                    canvas.drawPath(this.mLineFormPath, this.mLegendFormPaint);
                    break;
            }
            canvas.restoreToCount(save);
        }
    }

    protected void drawLabel(Canvas canvas, float f, float f2, String str) {
        canvas.drawText(str, f, f2, this.mLegendLabelPaint);
    }

    public Paint getFormPaint() {
        return this.mLegendFormPaint;
    }

    public Paint getLabelPaint() {
        return this.mLegendLabelPaint;
    }

    public void renderLegend(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        if (this.mLegend.isEnabled()) {
            Typeface typeface = this.mLegend.getTypeface();
            if (typeface != null) {
                this.mLegendLabelPaint.setTypeface(typeface);
            }
            this.mLegendLabelPaint.setTextSize(this.mLegend.getTextSize());
            this.mLegendLabelPaint.setColor(this.mLegend.getTextColor());
            float lineHeight = Utils.getLineHeight(this.mLegendLabelPaint, this.legendFontMetrics);
            float lineSpacing = Utils.getLineSpacing(this.mLegendLabelPaint, this.legendFontMetrics) + Utils.convertDpToPixel(this.mLegend.getYEntrySpace());
            float calcTextHeight = lineHeight - (Utils.calcTextHeight(this.mLegendLabelPaint, "ABC") / 2.0f);
            LegendEntry[] entries = this.mLegend.getEntries();
            float convertDpToPixel = Utils.convertDpToPixel(this.mLegend.getFormToTextSpace());
            float convertDpToPixel2 = Utils.convertDpToPixel(this.mLegend.getXEntrySpace());
            Legend.LegendOrientation orientation = this.mLegend.getOrientation();
            Legend.LegendHorizontalAlignment horizontalAlignment = this.mLegend.getHorizontalAlignment();
            Legend.LegendVerticalAlignment verticalAlignment = this.mLegend.getVerticalAlignment();
            Legend.LegendDirection direction = this.mLegend.getDirection();
            float convertDpToPixel3 = Utils.convertDpToPixel(this.mLegend.getFormSize());
            float convertDpToPixel4 = Utils.convertDpToPixel(this.mLegend.getStackSpace());
            float yOffset = this.mLegend.getYOffset();
            float xOffset = this.mLegend.getXOffset();
            switch (C12301.f155x2787f53e[horizontalAlignment.ordinal()]) {
                case 1:
                    if (orientation != Legend.LegendOrientation.VERTICAL) {
                        xOffset += this.mViewPortHandler.contentLeft();
                    }
                    f = xOffset;
                    if (direction == Legend.LegendDirection.RIGHT_TO_LEFT) {
                        f = xOffset + this.mLegend.mNeededWidth;
                        break;
                    }
                    break;
                case 2:
                    float chartWidth = orientation == Legend.LegendOrientation.VERTICAL ? this.mViewPortHandler.getChartWidth() - xOffset : this.mViewPortHandler.contentRight() - xOffset;
                    f = chartWidth;
                    if (direction == Legend.LegendDirection.LEFT_TO_RIGHT) {
                        f = chartWidth - this.mLegend.mNeededWidth;
                        break;
                    }
                    break;
                case 3:
                    f = (direction == Legend.LegendDirection.LEFT_TO_RIGHT ? xOffset : -xOffset) + (orientation == Legend.LegendOrientation.VERTICAL ? this.mViewPortHandler.getChartWidth() / 2.0f : this.mViewPortHandler.contentLeft() + (this.mViewPortHandler.contentWidth() / 2.0f));
                    if (orientation == Legend.LegendOrientation.VERTICAL) {
                        f = (float) (f + (direction == Legend.LegendDirection.LEFT_TO_RIGHT ? ((-this.mLegend.mNeededWidth) / 2.0d) + xOffset : (this.mLegend.mNeededWidth / 2.0d) - xOffset));
                        break;
                    }
                    break;
                default:
                    f = 0.0f;
                    break;
            }
            switch (C12301.f156x9c9dbef[orientation.ordinal()]) {
                case 1:
                    List<FSize> calculatedLineSizes = this.mLegend.getCalculatedLineSizes();
                    List<FSize> calculatedLabelSizes = this.mLegend.getCalculatedLabelSizes();
                    List<Boolean> calculatedLabelBreakPoints = this.mLegend.getCalculatedLabelBreakPoints();
                    float f7 = yOffset;
                    switch (C12301.f157xc926f1ec[verticalAlignment.ordinal()]) {
                        case 1:
                            break;
                        case 2:
                            f7 = (this.mViewPortHandler.getChartHeight() - yOffset) - this.mLegend.mNeededHeight;
                            break;
                        case 3:
                            f7 = yOffset + ((this.mViewPortHandler.getChartHeight() - this.mLegend.mNeededHeight) / 2.0f);
                            break;
                        default:
                            f7 = 0.0f;
                            break;
                    }
                    int length = entries.length;
                    float f8 = f;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        LegendEntry legendEntry = entries[i];
                        boolean z = legendEntry.form != Legend.LegendForm.NONE;
                        float convertDpToPixel5 = Float.isNaN(legendEntry.formSize) ? convertDpToPixel3 : Utils.convertDpToPixel(legendEntry.formSize);
                        if (i >= calculatedLabelBreakPoints.size() || !calculatedLabelBreakPoints.get(i).booleanValue()) {
                            f2 = f7;
                        } else {
                            f2 = f7 + lineHeight + lineSpacing;
                            f8 = f;
                        }
                        if (f8 == f && horizontalAlignment == Legend.LegendHorizontalAlignment.CENTER && i2 < calculatedLineSizes.size()) {
                            f8 += (direction == Legend.LegendDirection.RIGHT_TO_LEFT ? calculatedLineSizes.get(i2).width : -calculatedLineSizes.get(i2).width) / 2.0f;
                            i2++;
                        }
                        boolean z2 = legendEntry.label == null;
                        if (z) {
                            float f9 = f8;
                            if (direction == Legend.LegendDirection.RIGHT_TO_LEFT) {
                                f9 = f8 - convertDpToPixel5;
                            }
                            drawForm(canvas, f9, f2 + calcTextHeight, legendEntry, this.mLegend);
                            f8 = f9;
                            if (direction == Legend.LegendDirection.LEFT_TO_RIGHT) {
                                f8 = f9 + convertDpToPixel5;
                            }
                        }
                        if (!z2) {
                            float f10 = f8;
                            if (z) {
                                f10 = f8 + (direction == Legend.LegendDirection.RIGHT_TO_LEFT ? -convertDpToPixel : convertDpToPixel);
                            }
                            float f11 = f10;
                            if (direction == Legend.LegendDirection.RIGHT_TO_LEFT) {
                                f11 = f10 - calculatedLabelSizes.get(i).width;
                            }
                            drawLabel(canvas, f11, f2 + lineHeight, legendEntry.label);
                            f8 = f11;
                            if (direction == Legend.LegendDirection.LEFT_TO_RIGHT) {
                                f8 = f11 + calculatedLabelSizes.get(i).width;
                            }
                            f3 = direction == Legend.LegendDirection.RIGHT_TO_LEFT ? -convertDpToPixel2 : convertDpToPixel2;
                        } else {
                            f3 = direction == Legend.LegendDirection.RIGHT_TO_LEFT ? -convertDpToPixel4 : convertDpToPixel4;
                        }
                        f8 += f3;
                        i++;
                        f7 = f2;
                    }
                    return;
                case 2:
                    switch (C12301.f157xc926f1ec[verticalAlignment.ordinal()]) {
                        case 1:
                            f4 = (horizontalAlignment == Legend.LegendHorizontalAlignment.CENTER ? 0.0f : this.mViewPortHandler.contentTop()) + yOffset;
                            break;
                        case 2:
                            f4 = (horizontalAlignment == Legend.LegendHorizontalAlignment.CENTER ? this.mViewPortHandler.getChartHeight() : this.mViewPortHandler.contentBottom()) - (this.mLegend.mNeededHeight + yOffset);
                            break;
                        case 3:
                            f4 = ((this.mViewPortHandler.getChartHeight() / 2.0f) - (this.mLegend.mNeededHeight / 2.0f)) + this.mLegend.getYOffset();
                            break;
                        default:
                            f4 = 0.0f;
                            break;
                    }
                    int i3 = 0;
                    float f12 = 0.0f;
                    boolean z3 = false;
                    float f13 = convertDpToPixel4;
                    while (i3 < entries.length) {
                        LegendEntry legendEntry2 = entries[i3];
                        boolean z4 = legendEntry2.form != Legend.LegendForm.NONE;
                        float convertDpToPixel6 = Float.isNaN(legendEntry2.formSize) ? convertDpToPixel3 : Utils.convertDpToPixel(legendEntry2.formSize);
                        if (z4) {
                            float f14 = direction == Legend.LegendDirection.LEFT_TO_RIGHT ? f + f12 : f - (convertDpToPixel6 - f12);
                            drawForm(canvas, f14, f4 + calcTextHeight, legendEntry2, this.mLegend);
                            f5 = f14;
                            if (direction == Legend.LegendDirection.LEFT_TO_RIGHT) {
                                f5 = f14 + convertDpToPixel6;
                            }
                        } else {
                            f5 = f;
                        }
                        if (legendEntry2.label != null) {
                            if (!z4 || z3) {
                                f6 = z3 ? f : f5;
                            } else {
                                f6 = f5 + (direction == Legend.LegendDirection.LEFT_TO_RIGHT ? convertDpToPixel : -convertDpToPixel);
                            }
                            float f15 = f6;
                            if (direction == Legend.LegendDirection.RIGHT_TO_LEFT) {
                                f15 = f6 - Utils.calcTextWidth(this.mLegendLabelPaint, legendEntry2.label);
                            }
                            if (!z3) {
                                drawLabel(canvas, f15, f4 + lineHeight, legendEntry2.label);
                            } else {
                                f4 += lineHeight + lineSpacing;
                                drawLabel(canvas, f15, f4 + lineHeight, legendEntry2.label);
                            }
                            f4 += lineHeight + lineSpacing;
                            f12 = 0.0f;
                        } else {
                            f12 += convertDpToPixel6 + f13;
                            z3 = true;
                        }
                        i3++;
                        f13 = f13;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
