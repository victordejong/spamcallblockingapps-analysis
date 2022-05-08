package com.mikepenz.iconics.utils;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/utils/IconicsTypefaceSpan.class */
public class IconicsTypefaceSpan extends TypefaceSpan {
    private final Typeface newType;

    public IconicsTypefaceSpan(String str, Typeface typeface) {
        super(str);
        this.newType = typeface;
    }

    private static void applyCustomTypeFace(Paint paint, Typeface typeface) {
        Typeface typeface2 = paint.getTypeface();
        int style = (typeface2 == null ? 0 : typeface2.getStyle()) & (typeface.getStyle() ^ (-1));
        if ((style & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((style & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTypeface(typeface);
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        applyCustomTypeFace(textPaint, this.newType);
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        applyCustomTypeFace(textPaint, this.newType);
    }
}
