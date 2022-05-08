package com.google.android.material.p064e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.core.content.p033a.C0641f;
import com.google.android.material.C2913a;
/* renamed from: com.google.android.material.e.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/e/b.class */
public final class C2994b {

    /* renamed from: a */
    public final float f18193a;

    /* renamed from: b */
    public final ColorStateList f18194b;

    /* renamed from: c */
    public final ColorStateList f18195c;

    /* renamed from: d */
    public final ColorStateList f18196d;

    /* renamed from: e */
    public final int f18197e;

    /* renamed from: f */
    public final int f18198f;

    /* renamed from: g */
    public final String f18199g;

    /* renamed from: h */
    public final boolean f18200h;

    /* renamed from: i */
    public final ColorStateList f18201i;

    /* renamed from: j */
    public final float f18202j;

    /* renamed from: k */
    public final float f18203k;

    /* renamed from: l */
    public final float f18204l;

    /* renamed from: m */
    private final int f18205m;

    /* renamed from: n */
    private boolean f18206n = false;

    /* renamed from: o */
    private Typeface f18207o;

    public C2994b(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C2913a.C2924k.f17764ds);
        this.f18193a = obtainStyledAttributes.getDimension(C2913a.C2924k.f17765dt, 0.0f);
        this.f18194b = C2993a.m1195a(context, obtainStyledAttributes, C2913a.C2924k.f17768dw);
        this.f18195c = C2993a.m1195a(context, obtainStyledAttributes, C2913a.C2924k.f17769dx);
        this.f18196d = C2993a.m1195a(context, obtainStyledAttributes, C2913a.C2924k.f17770dy);
        this.f18197e = obtainStyledAttributes.getInt(C2913a.C2924k.f17767dv, 0);
        this.f18198f = obtainStyledAttributes.getInt(C2913a.C2924k.f17766du, 1);
        int i2 = C2913a.C2924k.f17724dE;
        i2 = C2913a.C2924k.f17723dD;
        if (!obtainStyledAttributes.hasValue(i2)) {
        }
        this.f18205m = obtainStyledAttributes.getResourceId(i2, 0);
        this.f18199g = obtainStyledAttributes.getString(i2);
        this.f18200h = obtainStyledAttributes.getBoolean(C2913a.C2924k.f17725dF, false);
        this.f18201i = C2993a.m1195a(context, obtainStyledAttributes, C2913a.C2924k.f17771dz);
        this.f18202j = obtainStyledAttributes.getFloat(C2913a.C2924k.f17720dA, 0.0f);
        this.f18203k = obtainStyledAttributes.getFloat(C2913a.C2924k.f17721dB, 0.0f);
        this.f18204l = obtainStyledAttributes.getFloat(C2913a.C2924k.f17722dC, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private Typeface m1192a(Context context) {
        if (this.f18206n) {
            return this.f18207o;
        }
        if (!context.isRestricted()) {
            try {
                this.f18207o = C0641f.m8645a(context, this.f18205m);
                if (this.f18207o != null) {
                    this.f18207o = Typeface.create(this.f18207o, this.f18197e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            } catch (Exception e2) {
                Log.d("TextAppearance", "Error loading font " + this.f18199g, e2);
            }
        }
        m1193a();
        this.f18206n = true;
        return this.f18207o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1193a() {
        if (this.f18207o == null) {
            this.f18207o = Typeface.create(this.f18199g, this.f18197e);
        }
        if (this.f18207o == null) {
            int i = this.f18198f;
            this.f18207o = i != 1 ? i != 2 ? i != 3 ? Typeface.DEFAULT : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF;
            Typeface typeface = this.f18207o;
            if (typeface != null) {
                this.f18207o = Typeface.create(typeface, this.f18197e);
            }
        }
    }

    /* renamed from: c */
    private void m1185c(Context context, TextPaint textPaint, C0641f.AbstractC0642a aVar) {
        if (this.f18206n) {
            m1190a(textPaint, this.f18207o);
            return;
        }
        m1193a();
        if (context.isRestricted()) {
            this.f18206n = true;
            m1190a(textPaint, this.f18207o);
            return;
        }
        try {
            C0641f.m8642a(context, this.f18205m, new C2995c(this, textPaint, aVar));
        } catch (Resources.NotFoundException | UnsupportedOperationException e) {
        } catch (Exception e2) {
            Log.d("TextAppearance", "Error loading font " + this.f18199g, e2);
        }
    }

    /* renamed from: a */
    public final void m1191a(Context context, TextPaint textPaint, C0641f.AbstractC0642a aVar) {
        m1187b(context, textPaint, aVar);
        ColorStateList colorStateList = this.f18194b;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, this.f18194b.getDefaultColor()) : -16777216);
        float f = this.f18204l;
        float f2 = this.f18202j;
        float f3 = this.f18203k;
        ColorStateList colorStateList2 = this.f18201i;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, this.f18201i.getDefaultColor()) : 0);
    }

    /* renamed from: a */
    public final void m1190a(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f18197e;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f18193a);
    }

    /* renamed from: b */
    public final void m1187b(Context context, TextPaint textPaint, C0641f.AbstractC0642a aVar) {
        if (C2996d.m1182a()) {
            m1190a(textPaint, m1192a(context));
            return;
        }
        m1185c(context, textPaint, aVar);
        if (!this.f18206n) {
            m1190a(textPaint, this.f18207o);
        }
    }
}
