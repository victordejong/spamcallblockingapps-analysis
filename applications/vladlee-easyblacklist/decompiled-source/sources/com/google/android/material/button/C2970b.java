package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0741t;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3053s;
import com.google.android.material.p064e.C2993a;
import com.google.android.material.p065f.C2997a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.button.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/b.class */
public final class C2970b {

    /* renamed from: a */
    private static final boolean f18050a;

    /* renamed from: b */
    private final MaterialButton f18051b;

    /* renamed from: c */
    private int f18052c;

    /* renamed from: d */
    private int f18053d;

    /* renamed from: e */
    private int f18054e;

    /* renamed from: f */
    private int f18055f;

    /* renamed from: g */
    private int f18056g;

    /* renamed from: h */
    private int f18057h;

    /* renamed from: i */
    private PorterDuff.Mode f18058i;

    /* renamed from: j */
    private ColorStateList f18059j;

    /* renamed from: k */
    private ColorStateList f18060k;

    /* renamed from: l */
    private ColorStateList f18061l;

    /* renamed from: p */
    private GradientDrawable f18065p;

    /* renamed from: q */
    private Drawable f18066q;

    /* renamed from: r */
    private GradientDrawable f18067r;

    /* renamed from: s */
    private Drawable f18068s;

    /* renamed from: t */
    private GradientDrawable f18069t;

    /* renamed from: u */
    private GradientDrawable f18070u;

    /* renamed from: v */
    private GradientDrawable f18071v;

    /* renamed from: m */
    private final Paint f18062m = new Paint(1);

    /* renamed from: n */
    private final Rect f18063n = new Rect();

    /* renamed from: o */
    private final RectF f18064o = new RectF();

    /* renamed from: w */
    private boolean f18072w = false;

    static {
        f18050a = Build.VERSION.SDK_INT >= 21;
    }

    public C2970b(MaterialButton materialButton) {
        this.f18051b = materialButton;
    }

    /* renamed from: a */
    private InsetDrawable m1326a(Drawable drawable) {
        return new InsetDrawable(drawable, this.f18052c, this.f18054e, this.f18053d, this.f18055f);
    }

    /* renamed from: e */
    private void m1322e() {
        GradientDrawable gradientDrawable = this.f18069t;
        if (gradientDrawable != null) {
            C0758a.m8251a(gradientDrawable, this.f18059j);
            PorterDuff.Mode mode = this.f18058i;
            if (mode != null) {
                C0758a.m8248a(this.f18069t, mode);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1333a() {
        this.f18072w = true;
        this.f18051b.mo1175a(this.f18059j);
        this.f18051b.mo1174a(this.f18058i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1332a(int i) {
        GradientDrawable gradientDrawable;
        GradientDrawable gradientDrawable2;
        if (f18050a && (gradientDrawable2 = this.f18069t) != null) {
            gradientDrawable2.setColor(i);
        } else if (!f18050a && (gradientDrawable = this.f18065p) != null) {
            gradientDrawable.setColor(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1331a(int i, int i2) {
        GradientDrawable gradientDrawable = this.f18071v;
        if (gradientDrawable != null) {
            gradientDrawable.setBounds(this.f18052c, this.f18054e, i2 - this.f18053d, i - this.f18055f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1330a(ColorStateList colorStateList) {
        if (this.f18059j != colorStateList) {
            this.f18059j = colorStateList;
            if (f18050a) {
                m1322e();
                return;
            }
            Drawable drawable = this.f18066q;
            if (drawable != null) {
                C0758a.m8251a(drawable, this.f18059j);
            }
        }
    }

    /* renamed from: a */
    public final void m1329a(TypedArray typedArray) {
        Drawable drawable;
        this.f18052c = typedArray.getDimensionPixelOffset(C2913a.C2924k.f17628bO, 0);
        this.f18053d = typedArray.getDimensionPixelOffset(C2913a.C2924k.f17629bP, 0);
        this.f18054e = typedArray.getDimensionPixelOffset(C2913a.C2924k.f17630bQ, 0);
        this.f18055f = typedArray.getDimensionPixelOffset(C2913a.C2924k.f17631bR, 0);
        this.f18056g = typedArray.getDimensionPixelSize(C2913a.C2924k.f17634bU, 0);
        this.f18057h = typedArray.getDimensionPixelSize(C2913a.C2924k.f17696cd, 0);
        this.f18058i = C3053s.m954a(typedArray.getInt(C2913a.C2924k.f17633bT, -1), PorterDuff.Mode.SRC_IN);
        this.f18059j = C2993a.m1195a(this.f18051b.getContext(), typedArray, C2913a.C2924k.f17632bS);
        this.f18060k = C2993a.m1195a(this.f18051b.getContext(), typedArray, C2913a.C2924k.f17695cc);
        this.f18061l = C2993a.m1195a(this.f18051b.getContext(), typedArray, C2913a.C2924k.f17694cb);
        this.f18062m.setStyle(Paint.Style.STROKE);
        this.f18062m.setStrokeWidth(this.f18057h);
        Paint paint = this.f18062m;
        ColorStateList colorStateList = this.f18060k;
        paint.setColor(colorStateList != null ? colorStateList.getColorForState(this.f18051b.getDrawableState(), 0) : 0);
        int j = C0741t.m8321j(this.f18051b);
        int paddingTop = this.f18051b.getPaddingTop();
        int k = C0741t.m8320k(this.f18051b);
        int paddingBottom = this.f18051b.getPaddingBottom();
        MaterialButton materialButton = this.f18051b;
        if (f18050a) {
            this.f18069t = new GradientDrawable();
            this.f18069t.setCornerRadius(this.f18056g + 1.0E-5f);
            this.f18069t.setColor(-1);
            m1322e();
            this.f18070u = new GradientDrawable();
            this.f18070u.setCornerRadius(this.f18056g + 1.0E-5f);
            this.f18070u.setColor(0);
            this.f18070u.setStroke(this.f18057h, this.f18060k);
            InsetDrawable a = m1326a(new LayerDrawable(new Drawable[]{this.f18069t, this.f18070u}));
            this.f18071v = new GradientDrawable();
            this.f18071v.setCornerRadius(this.f18056g + 1.0E-5f);
            this.f18071v.setColor(-1);
            drawable = new C2969a(C2997a.m1180a(this.f18061l), a, this.f18071v);
        } else {
            this.f18065p = new GradientDrawable();
            this.f18065p.setCornerRadius(this.f18056g + 1.0E-5f);
            this.f18065p.setColor(-1);
            this.f18066q = C0758a.m8241f(this.f18065p);
            C0758a.m8251a(this.f18066q, this.f18059j);
            PorterDuff.Mode mode = this.f18058i;
            if (mode != null) {
                C0758a.m8248a(this.f18066q, mode);
            }
            this.f18067r = new GradientDrawable();
            this.f18067r.setCornerRadius(this.f18056g + 1.0E-5f);
            this.f18067r.setColor(-1);
            this.f18068s = C0758a.m8241f(this.f18067r);
            C0758a.m8251a(this.f18068s, this.f18061l);
            drawable = m1326a(new LayerDrawable(new Drawable[]{this.f18066q, this.f18068s}));
        }
        materialButton.m1336a(drawable);
        C0741t.m8337b(this.f18051b, j + this.f18052c, paddingTop + this.f18054e, k + this.f18053d, paddingBottom + this.f18055f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1328a(Canvas canvas) {
        if (canvas != null && this.f18060k != null && this.f18057h > 0) {
            this.f18063n.set(this.f18051b.getBackground().getBounds());
            this.f18064o.set(this.f18063n.left + (this.f18057h / 2.0f) + this.f18052c, this.f18063n.top + (this.f18057h / 2.0f) + this.f18054e, (this.f18063n.right - (this.f18057h / 2.0f)) - this.f18053d, (this.f18063n.bottom - (this.f18057h / 2.0f)) - this.f18055f);
            float f = this.f18056g - (this.f18057h / 2.0f);
            canvas.drawRoundRect(this.f18064o, f, f, this.f18062m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1327a(PorterDuff.Mode mode) {
        PorterDuff.Mode mode2;
        if (this.f18058i != mode) {
            this.f18058i = mode;
            if (f18050a) {
                m1322e();
                return;
            }
            Drawable drawable = this.f18066q;
            if (drawable != null && (mode2 = this.f18058i) != null) {
                C0758a.m8248a(drawable, mode2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m1325b() {
        return this.f18072w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final ColorStateList m1324c() {
        return this.f18059j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final PorterDuff.Mode m1323d() {
        return this.f18058i;
    }
}
