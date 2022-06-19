package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import androidx.core.widget.AbstractC0238b;
import f.a.j;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.x */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/x.class */
class C0137x {

    /* renamed from: a */
    private final TextView f599a;

    /* renamed from: b */
    private C0133t0 f600b;

    /* renamed from: c */
    private C0133t0 f601c;

    /* renamed from: d */
    private C0133t0 f602d;

    /* renamed from: e */
    private C0133t0 f603e;

    /* renamed from: f */
    private C0133t0 f604f;

    /* renamed from: g */
    private C0133t0 f605g;

    /* renamed from: h */
    private C0133t0 f606h;

    /* renamed from: i */
    private final C0142z f607i;

    /* renamed from: j */
    private int f608j = 0;

    /* renamed from: k */
    private int f609k = -1;

    /* renamed from: l */
    private Typeface f610l;

    /* renamed from: m */
    private boolean f611m;

    public C0137x(TextView textView) {
        this.f599a = textView;
        this.f607i = new C0142z(textView);
    }

    /* renamed from: A */
    private void m6441A(int i, float f) {
        this.f607i.m6375y(i, f);
    }

    /* renamed from: B */
    private void m6440B(Context context, C0135v0 c0135v0) {
        String m6452o;
        this.f608j = c0135v0.m6456k(j.M2, this.f608j);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            int m6456k = c0135v0.m6456k(j.R2, -1);
            this.f609k = m6456k;
            if (m6456k != -1) {
                this.f608j = (this.f608j & 2) | 0;
            }
        }
        int i2 = j.Q2;
        if (!c0135v0.m6448s(i2) && !c0135v0.m6448s(j.S2)) {
            int i3 = j.L2;
            if (!c0135v0.m6448s(i3)) {
                return;
            }
            this.f611m = false;
            int m6456k2 = c0135v0.m6456k(i3, 1);
            if (m6456k2 == 1) {
                this.f610l = Typeface.SANS_SERIF;
                return;
            } else if (m6456k2 == 2) {
                this.f610l = Typeface.SERIF;
                return;
            } else if (m6456k2 != 3) {
                return;
            } else {
                this.f610l = Typeface.MONOSPACE;
                return;
            }
        }
        this.f610l = null;
        int i4 = j.S2;
        if (c0135v0.m6448s(i4)) {
            i2 = i4;
        }
        int i5 = this.f609k;
        int i6 = this.f608j;
        if (!context.isRestricted()) {
            try {
                Typeface m6457j = c0135v0.m6457j(i2, this.f608j, new a(this, i5, i6, new WeakReference(this.f599a)));
                if (m6457j != null) {
                    if (i < 28 || this.f609k == -1) {
                        this.f610l = m6457j;
                    } else {
                        this.f610l = Typeface.create(Typeface.create(m6457j, 0), this.f609k, (this.f608j & 2) != 0);
                    }
                }
                this.f611m = this.f610l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            }
        }
        if (this.f610l != null || (m6452o = c0135v0.m6452o(i2)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f609k == -1) {
            this.f610l = Typeface.create(m6452o, this.f608j);
            return;
        }
        Typeface create = Typeface.create(m6452o, 0);
        int i7 = this.f609k;
        boolean z = false;
        if ((this.f608j & 2) != 0) {
            z = true;
        }
        this.f610l = Typeface.create(create, i7, z);
    }

    /* renamed from: a */
    private void m6439a(Drawable drawable, C0133t0 c0133t0) {
        if (drawable == null || c0133t0 == null) {
            return;
        }
        C0112i.m6556i(drawable, c0133t0, this.f599a.getDrawableState());
    }

    /* renamed from: d */
    private static C0133t0 m6436d(Context context, C0112i c0112i, int i) {
        ColorStateList m6559f = c0112i.m6559f(context, i);
        if (m6559f != null) {
            C0133t0 c0133t0 = new C0133t0();
            c0133t0.f583d = true;
            c0133t0.f580a = m6559f;
            return c0133t0;
        }
        return null;
    }

    /* renamed from: x */
    private void m6416x(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f599a.getCompoundDrawablesRelative();
            TextView textView = this.f599a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        } else if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
        } else {
            if (i >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f599a.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                    TextView textView2 = this.f599a;
                    Drawable drawable7 = compoundDrawablesRelative2[0];
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative2[1];
                    }
                    Drawable drawable8 = compoundDrawablesRelative2[2];
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative2[3];
                    }
                    textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                    return;
                }
            }
            Drawable[] compoundDrawables = this.f599a.getCompoundDrawables();
            TextView textView3 = this.f599a;
            if (drawable == null) {
                drawable = compoundDrawables[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawables[1];
            }
            if (drawable3 == null) {
                drawable3 = compoundDrawables[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawables[3];
            }
            textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }

    /* renamed from: y */
    private void m6415y() {
        C0133t0 c0133t0 = this.f606h;
        this.f600b = c0133t0;
        this.f601c = c0133t0;
        this.f602d = c0133t0;
        this.f603e = c0133t0;
        this.f604f = c0133t0;
        this.f605g = c0133t0;
    }

    /* renamed from: b */
    public void m6438b() {
        if (this.f600b != null || this.f601c != null || this.f602d != null || this.f603e != null) {
            Drawable[] compoundDrawables = this.f599a.getCompoundDrawables();
            m6439a(compoundDrawables[0], this.f600b);
            m6439a(compoundDrawables[1], this.f601c);
            m6439a(compoundDrawables[2], this.f602d);
            m6439a(compoundDrawables[3], this.f603e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f604f == null && this.f605g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f599a.getCompoundDrawablesRelative();
            m6439a(compoundDrawablesRelative[0], this.f604f);
            m6439a(compoundDrawablesRelative[2], this.f605g);
        }
    }

    /* renamed from: c */
    void m6437c() {
        this.f607i.m6398b();
    }

    /* renamed from: e */
    int m6435e() {
        return this.f607i.m6390j();
    }

    /* renamed from: f */
    int m6434f() {
        return this.f607i.m6389k();
    }

    /* renamed from: g */
    int m6433g() {
        return this.f607i.m6388l();
    }

    /* renamed from: h */
    int[] m6432h() {
        return this.f607i.m6387m();
    }

    /* renamed from: i */
    int m6431i() {
        return this.f607i.m6386n();
    }

    /* renamed from: j */
    ColorStateList m6430j() {
        C0133t0 c0133t0 = this.f606h;
        return c0133t0 != null ? c0133t0.f580a : null;
    }

    /* renamed from: k */
    PorterDuff.Mode m6429k() {
        C0133t0 c0133t0 = this.f606h;
        return c0133t0 != null ? c0133t0.f581b : null;
    }

    /* renamed from: l */
    boolean m6428l() {
        return this.f607i.m6381s();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0502  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x052c  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:170:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0381  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6427m(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 1487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0137x.m6427m(android.util.AttributeSet, int):void");
    }

    /* renamed from: n */
    void m6426n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f611m) {
            this.f610l = typeface;
            TextView textView = weakReference.get();
            if (textView == null) {
                return;
            }
            textView.setTypeface(typeface, this.f608j);
        }
    }

    /* renamed from: o */
    void m6425o(boolean z, int i, int i2, int i3, int i4) {
        if (!AbstractC0238b.f1375a) {
            m6437c();
        }
    }

    /* renamed from: p */
    void m6424p() {
        m6438b();
    }

    /* renamed from: q */
    public void m6423q(Context context, int i) {
        String m6452o;
        ColorStateList m6464c;
        C0135v0 m6447t = C0135v0.m6447t(context, i, j.J2);
        int i2 = j.U2;
        if (m6447t.m6448s(i2)) {
            m6422r(m6447t.m6466a(i2, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23) {
            int i4 = j.N2;
            if (m6447t.m6448s(i4) && (m6464c = m6447t.m6464c(i4)) != null) {
                this.f599a.setTextColor(m6464c);
            }
        }
        int i5 = j.K2;
        if (m6447t.m6448s(i5) && m6447t.m6461f(i5, -1) == 0) {
            this.f599a.setTextSize(0, 0.0f);
        }
        m6440B(context, m6447t);
        if (i3 >= 26) {
            int i6 = j.T2;
            if (m6447t.m6448s(i6) && (m6452o = m6447t.m6452o(i6)) != null) {
                this.f599a.setFontVariationSettings(m6452o);
            }
        }
        m6447t.m6444w();
        Typeface typeface = this.f610l;
        if (typeface != null) {
            this.f599a.setTypeface(typeface, this.f608j);
        }
    }

    /* renamed from: r */
    void m6422r(boolean z) {
        this.f599a.setAllCaps(z);
    }

    /* renamed from: s */
    void m6421s(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        this.f607i.m6379u(i, i2, i3, i4);
    }

    /* renamed from: t */
    void m6420t(int[] iArr, int i) throws IllegalArgumentException {
        this.f607i.m6378v(iArr, i);
    }

    /* renamed from: u */
    void m6419u(int i) {
        this.f607i.m6377w(i);
    }

    /* renamed from: v */
    void m6418v(ColorStateList colorStateList) {
        if (this.f606h == null) {
            this.f606h = new C0133t0();
        }
        C0133t0 c0133t0 = this.f606h;
        c0133t0.f580a = colorStateList;
        c0133t0.f583d = colorStateList != null;
        m6415y();
    }

    /* renamed from: w */
    void m6417w(PorterDuff.Mode mode) {
        if (this.f606h == null) {
            this.f606h = new C0133t0();
        }
        C0133t0 c0133t0 = this.f606h;
        c0133t0.f581b = mode;
        c0133t0.f582c = mode != null;
        m6415y();
    }

    /* renamed from: z */
    void m6414z(int i, float f) {
        if (AbstractC0238b.f1375a || m6428l()) {
            return;
        }
        m6441A(i, f);
    }
}
