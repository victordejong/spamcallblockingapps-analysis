package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.widget.C0241e;
import f.a.j;
import f.a.k.a.a;
import f.h.l.t;
/* renamed from: androidx.appcompat.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m.class */
public class C0118m {

    /* renamed from: a */
    private final ImageView f525a;

    /* renamed from: b */
    private C0133t0 f526b;

    /* renamed from: c */
    private C0133t0 f527c;

    /* renamed from: d */
    private C0133t0 f528d;

    public C0118m(ImageView imageView) {
        this.f525a = imageView;
    }

    /* renamed from: a */
    private boolean m6522a(Drawable drawable) {
        if (this.f528d == null) {
            this.f528d = new C0133t0();
        }
        C0133t0 c0133t0 = this.f528d;
        c0133t0.m6481a();
        ColorStateList m5892a = C0241e.m5892a(this.f525a);
        if (m5892a != null) {
            c0133t0.f583d = true;
            c0133t0.f580a = m5892a;
        }
        PorterDuff.Mode m5891b = C0241e.m5891b(this.f525a);
        if (m5891b != null) {
            c0133t0.f582c = true;
            c0133t0.f581b = m5891b;
        }
        if (c0133t0.f583d || c0133t0.f582c) {
            C0112i.m6556i(drawable, c0133t0, this.f525a.getDrawableState());
            return true;
        }
        return false;
    }

    /* renamed from: j */
    private boolean m6513j() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f526b == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    void m6521b() {
        Drawable drawable = this.f525a.getDrawable();
        if (drawable != null) {
            C0099d0.m6611b(drawable);
        }
        if (drawable != null) {
            if (m6513j() && m6522a(drawable)) {
                return;
            }
            C0133t0 c0133t0 = this.f527c;
            if (c0133t0 != null) {
                C0112i.m6556i(drawable, c0133t0, this.f525a.getDrawableState());
                return;
            }
            C0133t0 c0133t02 = this.f526b;
            if (c0133t02 == null) {
                return;
            }
            C0112i.m6556i(drawable, c0133t02, this.f525a.getDrawableState());
        }
    }

    /* renamed from: c */
    ColorStateList m6520c() {
        C0133t0 c0133t0 = this.f527c;
        return c0133t0 != null ? c0133t0.f580a : null;
    }

    /* renamed from: d */
    PorterDuff.Mode m6519d() {
        C0133t0 c0133t0 = this.f527c;
        return c0133t0 != null ? c0133t0.f581b : null;
    }

    /* renamed from: e */
    boolean m6518e() {
        return Build.VERSION.SDK_INT < 21 || !(this.f525a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: f */
    public void m6517f(AttributeSet attributeSet, int i) {
        Context context = this.f525a.getContext();
        int[] iArr = j.M;
        C0135v0 m6445v = C0135v0.m6445v(context, attributeSet, iArr, i, 0);
        ImageView imageView = this.f525a;
        t.i0(imageView, imageView.getContext(), iArr, attributeSet, m6445v.m6449r(), i, 0);
        try {
            Drawable drawable = this.f525a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int m6453n = m6445v.m6453n(j.N, -1);
                drawable2 = drawable;
                if (m6453n != -1) {
                    Drawable d = a.d(this.f525a.getContext(), m6453n);
                    drawable2 = d;
                    if (d != null) {
                        this.f525a.setImageDrawable(d);
                        drawable2 = d;
                    }
                }
            }
            if (drawable2 != null) {
                C0099d0.m6611b(drawable2);
            }
            int i2 = j.O;
            if (m6445v.m6448s(i2)) {
                C0241e.m5890c(this.f525a, m6445v.m6464c(i2));
            }
            int i3 = j.P;
            if (m6445v.m6448s(i3)) {
                C0241e.m5889d(this.f525a, C0099d0.m6608e(m6445v.m6456k(i3, -1), null));
            }
        } finally {
            m6445v.m6444w();
        }
    }

    /* renamed from: g */
    public void m6516g(int i) {
        if (i != 0) {
            Drawable d = a.d(this.f525a.getContext(), i);
            if (d != null) {
                C0099d0.m6611b(d);
            }
            this.f525a.setImageDrawable(d);
        } else {
            this.f525a.setImageDrawable(null);
        }
        m6521b();
    }

    /* renamed from: h */
    void m6515h(ColorStateList colorStateList) {
        if (this.f527c == null) {
            this.f527c = new C0133t0();
        }
        C0133t0 c0133t0 = this.f527c;
        c0133t0.f580a = colorStateList;
        c0133t0.f583d = true;
        m6521b();
    }

    /* renamed from: i */
    void m6514i(PorterDuff.Mode mode) {
        if (this.f527c == null) {
            this.f527c = new C0133t0();
        }
        C0133t0 c0133t0 = this.f527c;
        c0133t0.f581b = mode;
        c0133t0.f582c = true;
        m6521b();
    }
}
