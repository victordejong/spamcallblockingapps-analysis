package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.C0247a;
import androidx.appcompat.widget.C0484bm;
import androidx.core.p035e.C0671e;
import androidx.core.p037g.C0741t;
import com.google.android.material.p060a.C2925a;
/* renamed from: com.google.android.material.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/d.class */
public final class C3027d {

    /* renamed from: a */
    private static final boolean f18405a;

    /* renamed from: b */
    private static final Paint f18406b;

    /* renamed from: A */
    private boolean f18407A;

    /* renamed from: B */
    private Bitmap f18408B;

    /* renamed from: C */
    private Paint f18409C;

    /* renamed from: D */
    private float f18410D;

    /* renamed from: E */
    private float f18411E;

    /* renamed from: F */
    private float f18412F;

    /* renamed from: G */
    private float f18413G;

    /* renamed from: H */
    private int[] f18414H;

    /* renamed from: I */
    private boolean f18415I;

    /* renamed from: L */
    private TimeInterpolator f18418L;

    /* renamed from: M */
    private TimeInterpolator f18419M;

    /* renamed from: N */
    private float f18420N;

    /* renamed from: O */
    private float f18421O;

    /* renamed from: P */
    private float f18422P;

    /* renamed from: Q */
    private int f18423Q;

    /* renamed from: R */
    private float f18424R;

    /* renamed from: S */
    private float f18425S;

    /* renamed from: T */
    private float f18426T;

    /* renamed from: U */
    private int f18427U;

    /* renamed from: c */
    private final View f18428c;

    /* renamed from: d */
    private boolean f18429d;

    /* renamed from: e */
    private float f18430e;

    /* renamed from: m */
    private ColorStateList f18438m;

    /* renamed from: n */
    private ColorStateList f18439n;

    /* renamed from: o */
    private float f18440o;

    /* renamed from: p */
    private float f18441p;

    /* renamed from: q */
    private float f18442q;

    /* renamed from: r */
    private float f18443r;

    /* renamed from: s */
    private float f18444s;

    /* renamed from: t */
    private float f18445t;

    /* renamed from: u */
    private Typeface f18446u;

    /* renamed from: v */
    private Typeface f18447v;

    /* renamed from: w */
    private Typeface f18448w;

    /* renamed from: x */
    private CharSequence f18449x;

    /* renamed from: y */
    private CharSequence f18450y;

    /* renamed from: z */
    private boolean f18451z;

    /* renamed from: i */
    private int f18434i = 16;

    /* renamed from: j */
    private int f18435j = 16;

    /* renamed from: k */
    private float f18436k = 15.0f;

    /* renamed from: l */
    private float f18437l = 15.0f;

    /* renamed from: J */
    private final TextPaint f18416J = new TextPaint(129);

    /* renamed from: K */
    private final TextPaint f18417K = new TextPaint(this.f18416J);

    /* renamed from: g */
    private final Rect f18432g = new Rect();

    /* renamed from: f */
    private final Rect f18431f = new Rect();

    /* renamed from: h */
    private final RectF f18433h = new RectF();

    static {
        f18405a = Build.VERSION.SDK_INT < 18;
        f18406b = null;
    }

    public C3027d(View view) {
        this.f18428c = view;
    }

    /* renamed from: a */
    private static float m1052a(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        float f4 = f3;
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f3);
        }
        return C2925a.m1549a(f, f2, f4);
    }

    /* renamed from: a */
    private static int m1050a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    /* renamed from: a */
    private void m1042a(TextPaint textPaint) {
        textPaint.setTextSize(this.f18437l);
        textPaint.setTypeface(this.f18446u);
    }

    /* renamed from: a */
    private static boolean m1053a(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* renamed from: a */
    private static boolean m1045a(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* renamed from: b */
    private boolean m1033b(CharSequence charSequence) {
        boolean z = true;
        if (C0741t.m8325g(this.f18428c) != 1) {
            z = false;
        }
        return (z ? C0671e.f2994d : C0671e.f2993c).mo8559a(charSequence, charSequence.length());
    }

    /* renamed from: c */
    private void m1031c(float f) {
        int i;
        TextPaint textPaint;
        m1028d(f);
        this.f18444s = m1052a(this.f18442q, this.f18443r, f, this.f18418L);
        this.f18445t = m1052a(this.f18440o, this.f18441p, f, this.f18418L);
        m1025e(m1052a(this.f18436k, this.f18437l, f, this.f18419M));
        if (this.f18439n != this.f18438m) {
            textPaint = this.f18416J;
            i = m1050a(m1019i(), m1018j(), f);
        } else {
            textPaint = this.f18416J;
            i = m1018j();
        }
        textPaint.setColor(i);
        this.f18416J.setShadowLayer(m1052a(this.f18424R, this.f18420N, f, (TimeInterpolator) null), m1052a(this.f18425S, this.f18421O, f, (TimeInterpolator) null), m1052a(this.f18426T, this.f18422P, f, (TimeInterpolator) null), m1050a(this.f18427U, this.f18423Q, f));
        C0741t.m8329e(this.f18428c);
    }

    /* renamed from: d */
    private void m1028d(float f) {
        this.f18433h.left = m1052a(this.f18431f.left, this.f18432g.left, f, this.f18418L);
        this.f18433h.top = m1052a(this.f18440o, this.f18441p, f, this.f18418L);
        this.f18433h.right = m1052a(this.f18431f.right, this.f18432g.right, f, this.f18418L);
        this.f18433h.bottom = m1052a(this.f18431f.bottom, this.f18432g.bottom, f, this.f18418L);
    }

    /* renamed from: e */
    private Typeface m1024e(int i) {
        TypedArray obtainStyledAttributes = this.f18428c.getContext().obtainStyledAttributes(i, new int[]{16843692});
        try {
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            obtainStyledAttributes.recycle();
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: e */
    private void m1025e(float f) {
        m1022f(f);
        this.f18407A = f18405a && this.f18412F != 1.0f;
        if (this.f18407A) {
            m1016l();
        }
        C0741t.m8329e(this.f18428c);
    }

    /* renamed from: f */
    private float m1023f() {
        if (this.f18449x == null) {
            return 0.0f;
        }
        m1042a(this.f18417K);
        TextPaint textPaint = this.f18417K;
        CharSequence charSequence = this.f18449x;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: f */
    private void m1022f(float f) {
        boolean z;
        float f2;
        float f3;
        if (this.f18449x != null) {
            float width = this.f18432g.width();
            float width2 = this.f18431f.width();
            boolean z2 = true;
            if (m1053a(f, this.f18437l)) {
                f2 = this.f18437l;
                this.f18412F = 1.0f;
                Typeface typeface = this.f18448w;
                Typeface typeface2 = this.f18446u;
                if (typeface != typeface2) {
                    this.f18448w = typeface2;
                    z = true;
                } else {
                    z = false;
                }
                f3 = width;
            } else {
                f2 = this.f18436k;
                Typeface typeface3 = this.f18448w;
                Typeface typeface4 = this.f18447v;
                if (typeface3 != typeface4) {
                    this.f18448w = typeface4;
                    z = true;
                } else {
                    z = false;
                }
                if (m1053a(f, this.f18436k)) {
                    this.f18412F = 1.0f;
                } else {
                    this.f18412F = f / this.f18436k;
                }
                float f4 = this.f18437l / this.f18436k;
                f3 = width2 * f4 > width ? Math.min(width / f4, width2) : width2;
            }
            boolean z3 = z;
            if (f3 > 0.0f) {
                z3 = this.f18413G != f2 || this.f18415I || z;
                this.f18413G = f2;
                this.f18415I = false;
            }
            if (this.f18450y == null || z3) {
                this.f18416J.setTextSize(this.f18413G);
                this.f18416J.setTypeface(this.f18448w);
                TextPaint textPaint = this.f18416J;
                if (this.f18412F == 1.0f) {
                    z2 = false;
                }
                textPaint.setLinearText(z2);
                CharSequence ellipsize = TextUtils.ellipsize(this.f18449x, this.f18416J, f3, TextUtils.TruncateAt.END);
                if (!TextUtils.equals(ellipsize, this.f18450y)) {
                    this.f18450y = ellipsize;
                    this.f18451z = m1033b(this.f18450y);
                }
            }
        }
    }

    /* renamed from: g */
    private void m1021g() {
        this.f18429d = this.f18432g.width() > 0 && this.f18432g.height() > 0 && this.f18431f.width() > 0 && this.f18431f.height() > 0;
    }

    /* renamed from: h */
    private void m1020h() {
        m1031c(this.f18430e);
    }

    /* renamed from: i */
    private int m1019i() {
        int[] iArr = this.f18414H;
        ColorStateList colorStateList = this.f18438m;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* renamed from: j */
    private int m1018j() {
        int[] iArr = this.f18414H;
        ColorStateList colorStateList = this.f18439n;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01cb  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m1017k() {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.internal.C3027d.m1017k():void");
    }

    /* renamed from: l */
    private void m1016l() {
        if (this.f18408B == null && !this.f18431f.isEmpty() && !TextUtils.isEmpty(this.f18450y)) {
            m1031c(0.0f);
            this.f18410D = this.f18416J.ascent();
            this.f18411E = this.f18416J.descent();
            TextPaint textPaint = this.f18416J;
            CharSequence charSequence = this.f18450y;
            int round = Math.round(textPaint.measureText(charSequence, 0, charSequence.length()));
            int round2 = Math.round(this.f18411E - this.f18410D);
            if (round > 0 && round2 > 0) {
                this.f18408B = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.f18408B);
                CharSequence charSequence2 = this.f18450y;
                canvas.drawText(charSequence2, 0, charSequence2.length(), 0.0f, round2 - this.f18416J.descent(), this.f18416J);
                if (this.f18409C == null) {
                    this.f18409C = new Paint(3);
                }
            }
        }
    }

    /* renamed from: m */
    private void m1015m() {
        Bitmap bitmap = this.f18408B;
        if (bitmap != null) {
            bitmap.recycle();
            this.f18408B = null;
        }
    }

    /* renamed from: a */
    public final float m1055a() {
        m1042a(this.f18417K);
        return -this.f18417K.ascent();
    }

    /* renamed from: a */
    public final void m1054a(float f) {
        if (this.f18436k != f) {
            this.f18436k = f;
            m1032c();
        }
    }

    /* renamed from: a */
    public final void m1051a(int i) {
        if (this.f18434i != i) {
            this.f18434i = i;
            m1032c();
        }
    }

    /* renamed from: a */
    public final void m1049a(int i, int i2, int i3, int i4) {
        if (!m1045a(this.f18431f, i, i2, i3, i4)) {
            this.f18431f.set(i, i2, i3, i4);
            this.f18415I = true;
            m1021g();
        }
    }

    /* renamed from: a */
    public final void m1048a(TimeInterpolator timeInterpolator) {
        this.f18419M = timeInterpolator;
        m1032c();
    }

    /* renamed from: a */
    public final void m1047a(ColorStateList colorStateList) {
        if (this.f18439n != colorStateList) {
            this.f18439n = colorStateList;
            m1032c();
        }
    }

    /* renamed from: a */
    public final void m1046a(Canvas canvas) {
        float f;
        int save = canvas.save();
        if (this.f18450y != null && this.f18429d) {
            float f2 = this.f18444s;
            float f3 = this.f18445t;
            boolean z = this.f18407A && this.f18408B != null;
            if (z) {
                f = this.f18410D * this.f18412F;
            } else {
                this.f18416J.ascent();
                f = 0.0f;
                this.f18416J.descent();
            }
            float f4 = f3;
            if (z) {
                f4 = f3 + f;
            }
            float f5 = this.f18412F;
            if (f5 != 1.0f) {
                canvas.scale(f5, f5, f2, f4);
            }
            if (z) {
                canvas.drawBitmap(this.f18408B, f2, f4, this.f18409C);
            } else {
                CharSequence charSequence = this.f18450y;
                canvas.drawText(charSequence, 0, charSequence.length(), f2, f4, this.f18416J);
            }
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: a */
    public final void m1044a(RectF rectF) {
        boolean b = m1033b(this.f18449x);
        Rect rect = this.f18432g;
        rectF.left = !b ? rect.left : rect.right - m1023f();
        rectF.top = this.f18432g.top;
        rectF.right = !b ? rectF.left + m1023f() : this.f18432g.right;
        rectF.bottom = this.f18432g.top + m1055a();
    }

    /* renamed from: a */
    public final void m1043a(Typeface typeface) {
        this.f18447v = typeface;
        this.f18446u = typeface;
        m1032c();
    }

    /* renamed from: a */
    public final void m1041a(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.f18449x)) {
            this.f18449x = charSequence;
            this.f18450y = null;
            m1015m();
            m1032c();
        }
    }

    /* renamed from: a */
    public final boolean m1040a(int[] iArr) {
        ColorStateList colorStateList;
        this.f18414H = iArr;
        ColorStateList colorStateList2 = this.f18439n;
        if (!((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f18438m) != null && colorStateList.isStateful()))) {
            return false;
        }
        m1032c();
        return true;
    }

    /* renamed from: b */
    public final float m1039b() {
        return this.f18430e;
    }

    /* renamed from: b */
    public final void m1038b(float f) {
        float f2;
        if (f < 0.0f) {
            f2 = 0.0f;
        } else {
            f2 = f;
            if (f > 1.0f) {
                f2 = 1.0f;
            }
        }
        if (f2 != this.f18430e) {
            this.f18430e = f2;
            m1020h();
        }
    }

    /* renamed from: b */
    public final void m1037b(int i) {
        if (this.f18435j != i) {
            this.f18435j = i;
            m1032c();
        }
    }

    /* renamed from: b */
    public final void m1036b(int i, int i2, int i3, int i4) {
        if (!m1045a(this.f18432g, i, i2, i3, i4)) {
            this.f18432g.set(i, i2, i3, i4);
            this.f18415I = true;
            m1021g();
        }
    }

    /* renamed from: b */
    public final void m1035b(TimeInterpolator timeInterpolator) {
        this.f18418L = timeInterpolator;
        m1032c();
    }

    /* renamed from: b */
    public final void m1034b(ColorStateList colorStateList) {
        if (this.f18438m != colorStateList) {
            this.f18438m = colorStateList;
            m1032c();
        }
    }

    /* renamed from: c */
    public final void m1032c() {
        if (this.f18428c.getHeight() > 0 && this.f18428c.getWidth() > 0) {
            m1017k();
            m1020h();
        }
    }

    /* renamed from: c */
    public final void m1030c(int i) {
        C0484bm a = C0484bm.m9094a(this.f18428c.getContext(), i, C0247a.C0257j.f959dh);
        if (a.m9079i(C0247a.C0257j.f963dl)) {
            this.f18439n = a.m9083f(C0247a.C0257j.f963dl);
        }
        if (a.m9079i(C0247a.C0257j.f960di)) {
            this.f18437l = a.m9086d(C0247a.C0257j.f960di, (int) this.f18437l);
        }
        this.f18423Q = a.m9097a(C0247a.C0257j.f966do, 0);
        this.f18421O = a.m9098a(C0247a.C0257j.f967dp, 0.0f);
        this.f18422P = a.m9098a(C0247a.C0257j.f968dq, 0.0f);
        this.f18420N = a.m9098a(C0247a.C0257j.f969dr, 0.0f);
        a.m9100a();
        if (Build.VERSION.SDK_INT >= 16) {
            this.f18446u = m1024e(i);
        }
        m1032c();
    }

    /* renamed from: d */
    public final CharSequence m1029d() {
        return this.f18449x;
    }

    /* renamed from: d */
    public final void m1027d(int i) {
        C0484bm a = C0484bm.m9094a(this.f18428c.getContext(), i, C0247a.C0257j.f959dh);
        if (a.m9079i(C0247a.C0257j.f963dl)) {
            this.f18438m = a.m9083f(C0247a.C0257j.f963dl);
        }
        if (a.m9079i(C0247a.C0257j.f960di)) {
            this.f18436k = a.m9086d(C0247a.C0257j.f960di, (int) this.f18436k);
        }
        this.f18427U = a.m9097a(C0247a.C0257j.f966do, 0);
        this.f18425S = a.m9098a(C0247a.C0257j.f967dp, 0.0f);
        this.f18426T = a.m9098a(C0247a.C0257j.f968dq, 0.0f);
        this.f18424R = a.m9098a(C0247a.C0257j.f969dr, 0.0f);
        a.m9100a();
        if (Build.VERSION.SDK_INT >= 16) {
            this.f18447v = m1024e(i);
        }
        m1032c();
    }

    /* renamed from: e */
    public final ColorStateList m1026e() {
        return this.f18439n;
    }
}
