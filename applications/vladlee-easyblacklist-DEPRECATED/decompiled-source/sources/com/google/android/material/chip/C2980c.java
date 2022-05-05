package com.google.android.material.chip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.core.content.p033a.C0641f;
import androidx.core.graphics.C0752a;
import androidx.core.graphics.drawable.AbstractC0759b;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p035e.C0663a;
import com.google.android.material.p060a.C2932h;
import com.google.android.material.p061b.C2947a;
import com.google.android.material.p064e.C2994b;
import com.google.android.material.p065f.C2997a;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* renamed from: com.google.android.material.chip.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/c.class */
public final class C2980c extends Drawable implements Drawable.Callback, AbstractC0759b {

    /* renamed from: a */
    private static final int[] f18108a = {16842910};

    /* renamed from: A */
    private float f18109A;

    /* renamed from: B */
    private float f18110B;

    /* renamed from: C */
    private float f18111C;

    /* renamed from: D */
    private float f18112D;

    /* renamed from: E */
    private float f18113E;

    /* renamed from: F */
    private float f18114F;

    /* renamed from: G */
    private float f18115G;

    /* renamed from: H */
    private final Context f18116H;

    /* renamed from: O */
    private int f18123O;

    /* renamed from: P */
    private int f18124P;

    /* renamed from: Q */
    private int f18125Q;

    /* renamed from: R */
    private int f18126R;

    /* renamed from: S */
    private boolean f18127S;

    /* renamed from: T */
    private int f18128T;

    /* renamed from: V */
    private ColorFilter f18130V;

    /* renamed from: W */
    private PorterDuffColorFilter f18131W;

    /* renamed from: X */
    private ColorStateList f18132X;

    /* renamed from: Z */
    private int[] f18134Z;

    /* renamed from: aa */
    private boolean f18135aa;

    /* renamed from: ab */
    private ColorStateList f18136ab;

    /* renamed from: ae */
    private float f18139ae;

    /* renamed from: af */
    private TextUtils.TruncateAt f18140af;

    /* renamed from: ag */
    private boolean f18141ag;

    /* renamed from: ah */
    private int f18142ah;

    /* renamed from: b */
    private ColorStateList f18143b;

    /* renamed from: c */
    private float f18144c;

    /* renamed from: d */
    private float f18145d;

    /* renamed from: e */
    private ColorStateList f18146e;

    /* renamed from: f */
    private float f18147f;

    /* renamed from: g */
    private ColorStateList f18148g;

    /* renamed from: i */
    private CharSequence f18150i;

    /* renamed from: j */
    private C2994b f18151j;

    /* renamed from: l */
    private boolean f18153l;

    /* renamed from: m */
    private Drawable f18154m;

    /* renamed from: n */
    private ColorStateList f18155n;

    /* renamed from: o */
    private float f18156o;

    /* renamed from: p */
    private boolean f18157p;

    /* renamed from: q */
    private Drawable f18158q;

    /* renamed from: r */
    private ColorStateList f18159r;

    /* renamed from: s */
    private float f18160s;

    /* renamed from: t */
    private CharSequence f18161t;

    /* renamed from: u */
    private boolean f18162u;

    /* renamed from: v */
    private boolean f18163v;

    /* renamed from: w */
    private Drawable f18164w;

    /* renamed from: x */
    private C2932h f18165x;

    /* renamed from: y */
    private C2932h f18166y;

    /* renamed from: z */
    private float f18167z;

    /* renamed from: k */
    private final C0641f.AbstractC0642a f18152k = new C2982d(this);

    /* renamed from: I */
    private final TextPaint f18117I = new TextPaint(1);

    /* renamed from: J */
    private final Paint f18118J = new Paint(1);

    /* renamed from: L */
    private final Paint.FontMetrics f18120L = new Paint.FontMetrics();

    /* renamed from: M */
    private final RectF f18121M = new RectF();

    /* renamed from: N */
    private final PointF f18122N = new PointF();

    /* renamed from: U */
    private int f18129U = 255;

    /* renamed from: Y */
    private PorterDuff.Mode f18133Y = PorterDuff.Mode.SRC_IN;

    /* renamed from: ac */
    private WeakReference<AbstractC2981a> f18137ac = new WeakReference<>(null);

    /* renamed from: ad */
    private boolean f18138ad = true;

    /* renamed from: h */
    private CharSequence f18149h = "";

    /* renamed from: K */
    private final Paint f18119K = null;

    /* renamed from: com.google.android.material.chip.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/c$a.class */
    public interface AbstractC2981a {
        /* renamed from: c */
        void mo1224c();
    }

    private C2980c(Context context) {
        this.f18116H = context;
        this.f18117I.density = context.getResources().getDisplayMetrics().density;
        Paint paint = this.f18119K;
        if (paint != null) {
            paint.setStyle(Paint.Style.STROKE);
        }
        setState(f18108a);
        m1261a(f18108a);
        this.f18141ag = true;
    }

    /* renamed from: B */
    private boolean m1281B() {
        return this.f18153l && this.f18154m != null;
    }

    /* renamed from: C */
    private boolean m1280C() {
        return this.f18163v && this.f18164w != null && this.f18127S;
    }

    /* renamed from: D */
    private boolean m1279D() {
        return this.f18157p && this.f18158q != null;
    }

    /* renamed from: E */
    private float m1278E() {
        if (!this.f18138ad) {
            return this.f18139ae;
        }
        this.f18139ae = m1255b(this.f18150i);
        this.f18138ad = false;
        return this.f18139ae;
    }

    /* renamed from: F */
    private float m1277F() {
        if (m1279D()) {
            return this.f18113E + this.f18160s + this.f18114F;
        }
        return 0.0f;
    }

    /* renamed from: G */
    private ColorFilter m1276G() {
        ColorFilter colorFilter = this.f18130V;
        return colorFilter != null ? colorFilter : this.f18131W;
    }

    /* renamed from: H */
    private void m1275H() {
        this.f18136ab = this.f18135aa ? C2997a.m1180a(this.f18148g) : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0533  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0570  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x05ed  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x061c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03ce  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.material.chip.C2980c m1272a(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 1605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.C2980c.m1272a(android.content.Context, android.util.AttributeSet, int, int):com.google.android.material.chip.c");
    }

    /* renamed from: a */
    private void m1270a(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m1281B() || m1280C()) {
            float f = this.f18167z + this.f18109A;
            if (C0758a.m8239h(this) == 0) {
                rectF.left = rect.left + f;
                rectF.right = rectF.left + this.f18156o;
            } else {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - this.f18156o;
            }
            rectF.top = rect.exactCenterY() - (this.f18156o / 2.0f);
            rectF.bottom = rectF.top + this.f18156o;
        }
    }

    /* renamed from: a */
    private void m1264a(C2994b bVar) {
        if (this.f18151j != bVar) {
            this.f18151j = bVar;
            if (bVar != null) {
                bVar.m1187b(this.f18116H, this.f18117I, this.f18152k);
                this.f18138ad = true;
            }
            onStateChange(getState());
            m1274a();
        }
    }

    /* renamed from: a */
    private static boolean m1271a(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* renamed from: a */
    private static boolean m1268a(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: a */
    private boolean m1260a(int[] iArr, int[] iArr2) {
        boolean z;
        boolean onStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.f18143b;
        int i = 0;
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, this.f18123O) : 0;
        if (this.f18123O != colorForState) {
            this.f18123O = colorForState;
            onStateChange = true;
        }
        ColorStateList colorStateList2 = this.f18146e;
        int colorForState2 = colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f18124P) : 0;
        if (this.f18124P != colorForState2) {
            this.f18124P = colorForState2;
            onStateChange = true;
        }
        ColorStateList colorStateList3 = this.f18136ab;
        int colorForState3 = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f18125Q) : 0;
        boolean z2 = onStateChange;
        if (this.f18125Q != colorForState3) {
            this.f18125Q = colorForState3;
            z2 = onStateChange;
            if (this.f18135aa) {
                z2 = true;
            }
        }
        C2994b bVar = this.f18151j;
        int colorForState4 = (bVar == null || bVar.f18194b == null) ? 0 : this.f18151j.f18194b.getColorForState(iArr, this.f18126R);
        if (this.f18126R != colorForState4) {
            this.f18126R = colorForState4;
            z2 = true;
        }
        boolean z3 = m1253b(getState()) && this.f18162u;
        if (this.f18127S == z3 || this.f18164w == null) {
            z = false;
        } else {
            float b = m1259b();
            this.f18127S = z3;
            if (b != m1259b()) {
                z2 = true;
                z = true;
            } else {
                z = false;
                z2 = true;
            }
        }
        ColorStateList colorStateList4 = this.f18132X;
        if (colorStateList4 != null) {
            i = colorStateList4.getColorForState(iArr, this.f18128T);
        }
        if (this.f18128T != i) {
            this.f18128T = i;
            this.f18131W = C2947a.m1447a(this, this.f18132X, this.f18133Y);
            z2 = true;
        }
        boolean z4 = z2;
        if (m1268a(this.f18154m)) {
            z4 = z2 | this.f18154m.setState(iArr);
        }
        boolean z5 = z4;
        if (m1268a(this.f18164w)) {
            z5 = z4 | this.f18164w.setState(iArr);
        }
        boolean z6 = z5;
        if (m1268a(this.f18158q)) {
            z6 = z5 | this.f18158q.setState(iArr2);
        }
        if (z6) {
            invalidateSelf();
        }
        if (z) {
            m1274a();
        }
        return z6;
    }

    /* renamed from: b */
    private float m1255b(CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f18117I.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: b */
    private void m1257b(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m1279D()) {
            float f = this.f18115G + this.f18114F;
            if (C0758a.m8239h(this) == 0) {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - this.f18160s;
            } else {
                rectF.left = rect.left + f;
                rectF.right = rectF.left + this.f18160s;
            }
            rectF.top = rect.exactCenterY() - (this.f18160s / 2.0f);
            rectF.bottom = rectF.top + this.f18160s;
        }
    }

    /* renamed from: b */
    private static void m1256b(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* renamed from: b */
    private void m1254b(boolean z) {
        if (this.f18153l != z) {
            boolean B = m1281B();
            this.f18153l = z;
            boolean B2 = m1281B();
            if (B != B2) {
                if (B2) {
                    m1250c(this.f18154m);
                } else {
                    m1256b(this.f18154m);
                }
                invalidateSelf();
                m1274a();
            }
        }
    }

    /* renamed from: b */
    private static boolean m1253b(int[] iArr) {
        if (iArr == null) {
            return false;
        }
        for (int i : iArr) {
            if (i == 16842912) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private void m1251c(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m1279D()) {
            float f = this.f18115G + this.f18114F + this.f18160s + this.f18113E + this.f18112D;
            if (C0758a.m8239h(this) == 0) {
                rectF.right = rect.right;
                rectF.left = rectF.right - f;
            } else {
                rectF.left = rect.left;
                rectF.right = rect.left + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: c */
    private void m1250c(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            C0758a.m8245b(drawable, C0758a.m8239h(this));
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.f18158q) {
                if (drawable.isStateful()) {
                    drawable.setState(this.f18134Z);
                }
                C0758a.m8251a(drawable, this.f18159r);
            } else if (drawable.isStateful()) {
                drawable.setState(getState());
            }
        }
    }

    /* renamed from: c */
    private void m1249c(boolean z) {
        if (this.f18157p != z) {
            boolean D = m1279D();
            this.f18157p = z;
            boolean D2 = m1279D();
            if (D != D2) {
                if (D2) {
                    m1250c(this.f18158q);
                } else {
                    m1256b(this.f18158q);
                }
                invalidateSelf();
                m1274a();
            }
        }
    }

    /* renamed from: d */
    private void m1247d(boolean z) {
        if (this.f18163v != z) {
            boolean C = m1280C();
            this.f18163v = z;
            boolean C2 = m1280C();
            if (C != C2) {
                if (C2) {
                    m1250c(this.f18164w);
                } else {
                    m1256b(this.f18164w);
                }
                invalidateSelf();
                m1274a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public final void m1282A() {
        this.f18141ag = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1274a() {
        AbstractC2981a aVar = this.f18137ac.get();
        if (aVar != null) {
            aVar.mo1224c();
        }
    }

    /* renamed from: a */
    public final void m1273a(int i) {
        m1264a(new C2994b(this.f18116H, i));
    }

    /* renamed from: a */
    public final void m1269a(RectF rectF) {
        m1251c(getBounds(), rectF);
    }

    /* renamed from: a */
    public final void m1267a(TextUtils.TruncateAt truncateAt) {
        this.f18140af = truncateAt;
    }

    /* renamed from: a */
    public final void m1266a(AbstractC2981a aVar) {
        this.f18137ac = new WeakReference<>(aVar);
    }

    /* renamed from: a */
    public final void m1263a(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        if (this.f18149h != charSequence2) {
            this.f18149h = charSequence2;
            this.f18150i = C0663a.m8583a().m8582a(charSequence2);
            this.f18138ad = true;
            invalidateSelf();
            m1274a();
        }
    }

    /* renamed from: a */
    public final void m1262a(boolean z) {
        if (this.f18135aa != z) {
            this.f18135aa = z;
            m1275H();
            onStateChange(getState());
        }
    }

    /* renamed from: a */
    public final boolean m1261a(int[] iArr) {
        if (Arrays.equals(this.f18134Z, iArr)) {
            return false;
        }
        this.f18134Z = iArr;
        if (m1279D()) {
            return m1260a(getState(), iArr);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final float m1259b() {
        if (m1281B() || m1280C()) {
            return this.f18109A + this.f18156o + this.f18110B;
        }
        return 0.0f;
    }

    /* renamed from: b */
    public final void m1258b(int i) {
        this.f18142ah = i;
    }

    /* renamed from: c */
    public final boolean m1252c() {
        return m1268a(this.f18158q);
    }

    /* renamed from: d */
    public final ColorStateList m1248d() {
        return this.f18148g;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && getAlpha() != 0) {
            if (this.f18129U < 255) {
                float f = bounds.left;
                float f2 = bounds.top;
                float f3 = bounds.right;
                float f4 = bounds.bottom;
                int i3 = this.f18129U;
                i = Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i3) : canvas.saveLayerAlpha(f, f2, f3, f4, i3, 31);
            } else {
                i = 0;
            }
            this.f18118J.setColor(this.f18123O);
            this.f18118J.setStyle(Paint.Style.FILL);
            this.f18118J.setColorFilter(m1276G());
            this.f18121M.set(bounds);
            RectF rectF = this.f18121M;
            float f5 = this.f18145d;
            canvas.drawRoundRect(rectF, f5, f5, this.f18118J);
            if (this.f18147f > 0.0f) {
                this.f18118J.setColor(this.f18124P);
                this.f18118J.setStyle(Paint.Style.STROKE);
                this.f18118J.setColorFilter(m1276G());
                this.f18121M.set(bounds.left + (this.f18147f / 2.0f), bounds.top + (this.f18147f / 2.0f), bounds.right - (this.f18147f / 2.0f), bounds.bottom - (this.f18147f / 2.0f));
                float f6 = this.f18145d - (this.f18147f / 2.0f);
                canvas.drawRoundRect(this.f18121M, f6, f6, this.f18118J);
            }
            this.f18118J.setColor(this.f18125Q);
            this.f18118J.setStyle(Paint.Style.FILL);
            this.f18121M.set(bounds);
            RectF rectF2 = this.f18121M;
            float f7 = this.f18145d;
            canvas.drawRoundRect(rectF2, f7, f7, this.f18118J);
            if (m1281B()) {
                m1270a(bounds, this.f18121M);
                float f8 = this.f18121M.left;
                float f9 = this.f18121M.top;
                canvas.translate(f8, f9);
                this.f18154m.setBounds(0, 0, (int) this.f18121M.width(), (int) this.f18121M.height());
                this.f18154m.draw(canvas);
                canvas.translate(-f8, -f9);
            }
            if (m1280C()) {
                m1270a(bounds, this.f18121M);
                float f10 = this.f18121M.left;
                float f11 = this.f18121M.top;
                canvas.translate(f10, f11);
                this.f18164w.setBounds(0, 0, (int) this.f18121M.width(), (int) this.f18121M.height());
                this.f18164w.draw(canvas);
                canvas.translate(-f10, -f11);
            }
            if (this.f18141ag && this.f18150i != null) {
                PointF pointF = this.f18122N;
                pointF.set(0.0f, 0.0f);
                Paint.Align align = Paint.Align.LEFT;
                if (this.f18150i != null) {
                    float b = this.f18167z + m1259b() + this.f18111C;
                    if (C0758a.m8239h(this) == 0) {
                        pointF.x = bounds.left + b;
                        align = Paint.Align.LEFT;
                    } else {
                        pointF.x = bounds.right - b;
                        align = Paint.Align.RIGHT;
                    }
                    float centerY = bounds.centerY();
                    this.f18117I.getFontMetrics(this.f18120L);
                    pointF.y = centerY - ((this.f18120L.descent + this.f18120L.ascent) / 2.0f);
                }
                RectF rectF3 = this.f18121M;
                rectF3.setEmpty();
                if (this.f18150i != null) {
                    float b2 = this.f18167z + m1259b() + this.f18111C;
                    float F = this.f18115G + m1277F() + this.f18112D;
                    if (C0758a.m8239h(this) == 0) {
                        rectF3.left = bounds.left + b2;
                        rectF3.right = bounds.right - F;
                    } else {
                        rectF3.left = bounds.left + F;
                        rectF3.right = bounds.right - b2;
                    }
                    rectF3.top = bounds.top;
                    rectF3.bottom = bounds.bottom;
                }
                if (this.f18151j != null) {
                    this.f18117I.drawableState = getState();
                    this.f18151j.m1191a(this.f18116H, this.f18117I, this.f18152k);
                }
                this.f18117I.setTextAlign(align);
                boolean z = Math.round(m1278E()) > Math.round(this.f18121M.width());
                if (z) {
                    i2 = canvas.save();
                    canvas.clipRect(this.f18121M);
                } else {
                    i2 = 0;
                }
                CharSequence charSequence = this.f18150i;
                CharSequence charSequence2 = charSequence;
                if (z) {
                    charSequence2 = charSequence;
                    if (this.f18140af != null) {
                        charSequence2 = TextUtils.ellipsize(charSequence, this.f18117I, this.f18121M.width(), this.f18140af);
                    }
                }
                canvas.drawText(charSequence2, 0, charSequence2.length(), this.f18122N.x, this.f18122N.y, this.f18117I);
                if (z) {
                    canvas.restoreToCount(i2);
                }
            }
            if (m1279D()) {
                m1257b(bounds, this.f18121M);
                float f12 = this.f18121M.left;
                float f13 = this.f18121M.top;
                canvas.translate(f12, f13);
                this.f18158q.setBounds(0, 0, (int) this.f18121M.width(), (int) this.f18121M.height());
                this.f18158q.draw(canvas);
                canvas.translate(-f12, -f13);
            }
            Paint paint = this.f18119K;
            if (paint != null) {
                paint.setColor(C0752a.m8281b(-16777216, 127));
                canvas.drawRect(bounds, this.f18119K);
                if (m1281B() || m1280C()) {
                    m1270a(bounds, this.f18121M);
                    canvas.drawRect(this.f18121M, this.f18119K);
                }
                if (this.f18150i != null) {
                    canvas.drawLine(bounds.left, bounds.exactCenterY(), bounds.right, bounds.exactCenterY(), this.f18119K);
                }
                if (m1279D()) {
                    m1257b(bounds, this.f18121M);
                    canvas.drawRect(this.f18121M, this.f18119K);
                }
                this.f18119K.setColor(C0752a.m8281b(-65536, 127));
                RectF rectF4 = this.f18121M;
                rectF4.set(bounds);
                if (m1279D()) {
                    float f14 = this.f18115G + this.f18114F + this.f18160s + this.f18113E + this.f18112D;
                    if (C0758a.m8239h(this) == 0) {
                        rectF4.right = bounds.right - f14;
                    } else {
                        rectF4.left = bounds.left + f14;
                    }
                }
                canvas.drawRect(this.f18121M, this.f18119K);
                this.f18119K.setColor(C0752a.m8281b(-16711936, 127));
                m1251c(bounds, this.f18121M);
                canvas.drawRect(this.f18121M, this.f18119K);
            }
            if (this.f18129U < 255) {
                canvas.restoreToCount(i);
            }
        }
    }

    /* renamed from: e */
    public final CharSequence m1246e() {
        return this.f18149h;
    }

    /* renamed from: f */
    public final C2994b m1245f() {
        return this.f18151j;
    }

    /* renamed from: g */
    public final TextUtils.TruncateAt m1244g() {
        return this.f18140af;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f18129U;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f18130V;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f18144c;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(this.f18167z + m1259b() + this.f18111C + m1278E() + this.f18112D + m1277F() + this.f18115G), this.f18142ah);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.f18145d);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f18145d);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    /* renamed from: h */
    public final boolean m1243h() {
        return this.f18153l;
    }

    /* renamed from: i */
    public final Drawable m1242i() {
        Drawable drawable = this.f18154m;
        if (drawable != null) {
            return C0758a.m8240g(drawable);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        if (m1271a(this.f18143b) || m1271a(this.f18146e)) {
            return true;
        }
        if (this.f18135aa && m1271a(this.f18136ab)) {
            return true;
        }
        C2994b bVar = this.f18151j;
        if ((bVar == null || bVar.f18194b == null || !bVar.f18194b.isStateful()) ? false : true) {
            return true;
        }
        return (this.f18163v && this.f18164w != null && this.f18162u) || m1268a(this.f18154m) || m1268a(this.f18164w) || m1271a(this.f18132X);
    }

    /* renamed from: j */
    public final float m1241j() {
        return this.f18156o;
    }

    /* renamed from: k */
    public final boolean m1240k() {
        return this.f18157p;
    }

    /* renamed from: l */
    public final Drawable m1239l() {
        Drawable drawable = this.f18158q;
        if (drawable != null) {
            return C0758a.m8240g(drawable);
        }
        return null;
    }

    /* renamed from: m */
    public final float m1238m() {
        return this.f18160s;
    }

    /* renamed from: n */
    public final CharSequence m1237n() {
        return this.f18161t;
    }

    /* renamed from: o */
    public final boolean m1236o() {
        return this.f18162u;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        boolean z = onLayoutDirectionChanged;
        if (m1281B()) {
            z = onLayoutDirectionChanged | this.f18154m.setLayoutDirection(i);
        }
        boolean z2 = z;
        if (m1280C()) {
            z2 = z | this.f18164w.setLayoutDirection(i);
        }
        boolean z3 = z2;
        if (m1279D()) {
            z3 = z2 | this.f18158q.setLayoutDirection(i);
        }
        if (!z3) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        boolean z = onLevelChange;
        if (m1281B()) {
            z = onLevelChange | this.f18154m.setLevel(i);
        }
        boolean z2 = z;
        if (m1280C()) {
            z2 = z | this.f18164w.setLevel(i);
        }
        boolean z3 = z2;
        if (m1279D()) {
            z3 = z2 | this.f18158q.setLevel(i);
        }
        if (z3) {
            invalidateSelf();
        }
        return z3;
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        return m1260a(iArr, this.f18134Z);
    }

    /* renamed from: p */
    public final boolean m1235p() {
        return this.f18163v;
    }

    /* renamed from: q */
    public final Drawable m1234q() {
        return this.f18164w;
    }

    /* renamed from: r */
    public final float m1233r() {
        return this.f18167z;
    }

    /* renamed from: s */
    public final float m1232s() {
        return this.f18109A;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f18129U != i) {
            this.f18129U = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f18130V != colorFilter) {
            this.f18130V = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f18132X != colorStateList) {
            this.f18132X = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f18133Y != mode) {
            this.f18133Y = mode;
            this.f18131W = C2947a.m1447a(this, this.f18132X, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        boolean z3 = visible;
        if (m1281B()) {
            z3 = visible | this.f18154m.setVisible(z, z2);
        }
        boolean z4 = z3;
        if (m1280C()) {
            z4 = z3 | this.f18164w.setVisible(z, z2);
        }
        boolean z5 = z4;
        if (m1279D()) {
            z5 = z4 | this.f18158q.setVisible(z, z2);
        }
        if (z5) {
            invalidateSelf();
        }
        return z5;
    }

    /* renamed from: t */
    public final float m1231t() {
        return this.f18110B;
    }

    /* renamed from: u */
    public final float m1230u() {
        return this.f18111C;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: v */
    public final float m1229v() {
        return this.f18112D;
    }

    /* renamed from: w */
    public final float m1228w() {
        return this.f18113E;
    }

    /* renamed from: x */
    public final float m1227x() {
        return this.f18114F;
    }

    /* renamed from: y */
    public final float m1226y() {
        return this.f18115G;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public final boolean m1225z() {
        return this.f18141ag;
    }
}
