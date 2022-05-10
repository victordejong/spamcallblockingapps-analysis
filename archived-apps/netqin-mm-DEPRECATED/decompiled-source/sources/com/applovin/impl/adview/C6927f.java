package com.applovin.impl.adview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.applovin.sdk.AppLovinMediationProvider;
/* renamed from: com.applovin.impl.adview.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/f.class */
public class C6927f extends View {

    /* renamed from: w */
    public static final int f21256w = Color.rgb(66, 145, 241);

    /* renamed from: x */
    public static final int f21257x = Color.rgb(66, 145, 241);

    /* renamed from: y */
    public static final int f21258y = Color.rgb(66, 145, 241);

    /* renamed from: a */
    public Paint f21259a;

    /* renamed from: b */
    public Paint f21260b;

    /* renamed from: c */
    public Paint f21261c;

    /* renamed from: d */
    public Paint f21262d;

    /* renamed from: e */
    public RectF f21263e;

    /* renamed from: f */
    public float f21264f;

    /* renamed from: g */
    public int f21265g;

    /* renamed from: h */
    public int f21266h;

    /* renamed from: i */
    public int f21267i;

    /* renamed from: j */
    public int f21268j;

    /* renamed from: k */
    public int f21269k;

    /* renamed from: l */
    public float f21270l;

    /* renamed from: m */
    public int f21271m;

    /* renamed from: n */
    public String f21272n;

    /* renamed from: o */
    public String f21273o;

    /* renamed from: p */
    public float f21274p;

    /* renamed from: q */
    public String f21275q;

    /* renamed from: r */
    public float f21276r;

    /* renamed from: s */
    public final float f21277s;

    /* renamed from: t */
    public final float f21278t;

    /* renamed from: u */
    public final float f21279u;

    /* renamed from: v */
    public final int f21280v;

    /* renamed from: com.applovin.impl.adview.f$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/f$a.class */
    public static class C6928a {
        /* renamed from: c */
        public static float m19332c(Resources resources, float f) {
            return (f * resources.getDisplayMetrics().density) + 0.5f;
        }

        /* renamed from: d */
        public static float m19331d(Resources resources, float f) {
            return f * resources.getDisplayMetrics().scaledDensity;
        }
    }

    public C6927f(Context context) {
        this(context, null);
    }

    public C6927f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C6927f(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f21263e = new RectF();
        this.f21267i = 0;
        this.f21272n = "";
        this.f21273o = "";
        this.f21275q = "";
        this.f21278t = C6928a.m19331d(getResources(), 14.0f);
        this.f21280v = (int) C6928a.m19332c(getResources(), 100.0f);
        this.f21277s = C6928a.m19332c(getResources(), 4.0f);
        this.f21279u = C6928a.m19331d(getResources(), 18.0f);
        m19335b();
        m19337a();
    }

    private float getProgressAngle() {
        return (getProgress() / this.f21268j) * 360.0f;
    }

    /* renamed from: a */
    public final int m19336a(int i) {
        int i2;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            i2 = size;
        } else {
            i2 = this.f21280v;
            if (mode == Integer.MIN_VALUE) {
                i2 = Math.min(i2, size);
            }
        }
        return i2;
    }

    /* renamed from: a */
    public void m19337a() {
        TextPaint textPaint = new TextPaint();
        this.f21261c = textPaint;
        textPaint.setColor(this.f21265g);
        this.f21261c.setTextSize(this.f21264f);
        this.f21261c.setAntiAlias(true);
        TextPaint textPaint2 = new TextPaint();
        this.f21262d = textPaint2;
        textPaint2.setColor(this.f21266h);
        this.f21262d.setTextSize(this.f21274p);
        this.f21262d.setAntiAlias(true);
        Paint paint = new Paint();
        this.f21259a = paint;
        paint.setColor(this.f21269k);
        this.f21259a.setStyle(Paint.Style.STROKE);
        this.f21259a.setAntiAlias(true);
        this.f21259a.setStrokeWidth(this.f21270l);
        Paint paint2 = new Paint();
        this.f21260b = paint2;
        paint2.setColor(this.f21271m);
        this.f21260b.setAntiAlias(true);
    }

    /* renamed from: b */
    public void m19335b() {
        this.f21269k = f21256w;
        this.f21265g = f21257x;
        this.f21264f = this.f21278t;
        setMax(100);
        setProgress(0);
        this.f21270l = this.f21277s;
        this.f21271m = 0;
        this.f21274p = this.f21279u;
        this.f21266h = f21258y;
    }

    public int getFinishedStrokeColor() {
        return this.f21269k;
    }

    public float getFinishedStrokeWidth() {
        return this.f21270l;
    }

    public int getInnerBackgroundColor() {
        return this.f21271m;
    }

    public String getInnerBottomText() {
        return this.f21275q;
    }

    public int getInnerBottomTextColor() {
        return this.f21266h;
    }

    public float getInnerBottomTextSize() {
        return this.f21274p;
    }

    public int getMax() {
        return this.f21268j;
    }

    public String getPrefixText() {
        return this.f21272n;
    }

    public int getProgress() {
        return this.f21267i;
    }

    public String getSuffixText() {
        return this.f21273o;
    }

    public int getTextColor() {
        return this.f21265g;
    }

    public float getTextSize() {
        return this.f21264f;
    }

    @Override // android.view.View
    public void invalidate() {
        m19337a();
        super.invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.f21270l;
        this.f21263e.set(f, f, getWidth() - f, getHeight() - f);
        float width = getWidth();
        float f2 = this.f21270l;
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, ((width - f2) + f2) / 2.0f, this.f21260b);
        canvas.drawArc(this.f21263e, 270.0f, -getProgressAngle(), false, this.f21259a);
        String str = this.f21272n + this.f21267i + this.f21273o;
        if (!TextUtils.isEmpty(str)) {
            canvas.drawText(str, (getWidth() - this.f21261c.measureText(str)) / 2.0f, (getWidth() - (this.f21261c.descent() + this.f21261c.ascent())) / 2.0f, this.f21261c);
        }
        if (!TextUtils.isEmpty(getInnerBottomText())) {
            this.f21262d.setTextSize(this.f21274p);
            canvas.drawText(getInnerBottomText(), (getWidth() - this.f21262d.measureText(getInnerBottomText())) / 2.0f, (getHeight() - this.f21276r) - ((this.f21261c.descent() + this.f21261c.ascent()) / 2.0f), this.f21262d);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(m19336a(i), m19336a(i2));
        this.f21276r = getHeight() - ((getHeight() * 3) / 4);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f21265g = bundle.getInt("text_color");
            this.f21264f = bundle.getFloat("text_size");
            this.f21274p = bundle.getFloat("inner_bottom_text_size");
            this.f21275q = bundle.getString("inner_bottom_text");
            this.f21266h = bundle.getInt("inner_bottom_text_color");
            this.f21269k = bundle.getInt("finished_stroke_color");
            this.f21270l = bundle.getFloat("finished_stroke_width");
            this.f21271m = bundle.getInt("inner_background_color");
            m19337a();
            setMax(bundle.getInt(AppLovinMediationProvider.MAX));
            setProgress(bundle.getInt("progress"));
            this.f21272n = bundle.getString("prefix");
            this.f21273o = bundle.getString("suffix");
            super.onRestoreInstanceState(bundle.getParcelable("saved_instance"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("saved_instance", super.onSaveInstanceState());
        bundle.putInt("text_color", getTextColor());
        bundle.putFloat("text_size", getTextSize());
        bundle.putFloat("inner_bottom_text_size", getInnerBottomTextSize());
        bundle.putFloat("inner_bottom_text_color", getInnerBottomTextColor());
        bundle.putString("inner_bottom_text", getInnerBottomText());
        bundle.putInt("inner_bottom_text_color", getInnerBottomTextColor());
        bundle.putInt("finished_stroke_color", getFinishedStrokeColor());
        bundle.putInt(AppLovinMediationProvider.MAX, getMax());
        bundle.putInt("progress", getProgress());
        bundle.putString("suffix", getSuffixText());
        bundle.putString("prefix", getPrefixText());
        bundle.putFloat("finished_stroke_width", getFinishedStrokeWidth());
        bundle.putInt("inner_background_color", getInnerBackgroundColor());
        return bundle;
    }

    public void setFinishedStrokeColor(int i) {
        this.f21269k = i;
        invalidate();
    }

    public void setFinishedStrokeWidth(float f) {
        this.f21270l = f;
        invalidate();
    }

    public void setInnerBackgroundColor(int i) {
        this.f21271m = i;
        invalidate();
    }

    public void setInnerBottomText(String str) {
        this.f21275q = str;
        invalidate();
    }

    public void setInnerBottomTextColor(int i) {
        this.f21266h = i;
        invalidate();
    }

    public void setInnerBottomTextSize(float f) {
        this.f21274p = f;
        invalidate();
    }

    public void setMax(int i) {
        if (i > 0) {
            this.f21268j = i;
            invalidate();
        }
    }

    public void setPrefixText(String str) {
        this.f21272n = str;
        invalidate();
    }

    public void setProgress(int i) {
        this.f21267i = i;
        if (i > getMax()) {
            this.f21267i %= getMax();
        }
        invalidate();
    }

    public void setSuffixText(String str) {
        this.f21273o = str;
        invalidate();
    }

    public void setTextColor(int i) {
        this.f21265g = i;
        invalidate();
    }

    public void setTextSize(float f) {
        this.f21264f = f;
        invalidate();
    }
}
