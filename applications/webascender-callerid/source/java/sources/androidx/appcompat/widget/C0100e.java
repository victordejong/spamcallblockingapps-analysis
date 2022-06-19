package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import f.a.j;
import f.h.l.t;
/* renamed from: androidx.appcompat.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e.class */
class C0100e {

    /* renamed from: a */
    private final View f464a;

    /* renamed from: d */
    private C0133t0 f467d;

    /* renamed from: e */
    private C0133t0 f468e;

    /* renamed from: f */
    private C0133t0 f469f;

    /* renamed from: c */
    private int f466c = -1;

    /* renamed from: b */
    private final C0112i f465b = C0112i.m6563b();

    C0100e(View view) {
        this.f464a = view;
    }

    /* renamed from: a */
    private boolean m6607a(Drawable drawable) {
        if (this.f469f == null) {
            this.f469f = new C0133t0();
        }
        C0133t0 c0133t0 = this.f469f;
        c0133t0.m6481a();
        ColorStateList s = t.s(this.f464a);
        if (s != null) {
            c0133t0.f583d = true;
            c0133t0.f580a = s;
        }
        PorterDuff.Mode t = t.t(this.f464a);
        if (t != null) {
            c0133t0.f582c = true;
            c0133t0.f581b = t;
        }
        if (c0133t0.f583d || c0133t0.f582c) {
            C0112i.m6556i(drawable, c0133t0, this.f464a.getDrawableState());
            return true;
        }
        return false;
    }

    /* renamed from: k */
    private boolean m6597k() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f467d == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    void m6606b() {
        Drawable background = this.f464a.getBackground();
        if (background != null) {
            if (m6597k() && m6607a(background)) {
                return;
            }
            C0133t0 c0133t0 = this.f468e;
            if (c0133t0 != null) {
                C0112i.m6556i(background, c0133t0, this.f464a.getDrawableState());
                return;
            }
            C0133t0 c0133t02 = this.f467d;
            if (c0133t02 == null) {
                return;
            }
            C0112i.m6556i(background, c0133t02, this.f464a.getDrawableState());
        }
    }

    /* renamed from: c */
    ColorStateList m6605c() {
        C0133t0 c0133t0 = this.f468e;
        return c0133t0 != null ? c0133t0.f580a : null;
    }

    /* renamed from: d */
    PorterDuff.Mode m6604d() {
        C0133t0 c0133t0 = this.f468e;
        return c0133t0 != null ? c0133t0.f581b : null;
    }

    /* renamed from: e */
    void m6603e(AttributeSet attributeSet, int i) {
        Context context = this.f464a.getContext();
        int[] iArr = j.D3;
        C0135v0 m6445v = C0135v0.m6445v(context, attributeSet, iArr, i, 0);
        View view = this.f464a;
        t.i0(view, view.getContext(), iArr, attributeSet, m6445v.m6449r(), i, 0);
        try {
            int i2 = j.E3;
            if (m6445v.m6448s(i2)) {
                this.f466c = m6445v.m6453n(i2, -1);
                ColorStateList m6559f = this.f465b.m6559f(this.f464a.getContext(), this.f466c);
                if (m6559f != null) {
                    m6600h(m6559f);
                }
            }
            int i3 = j.F3;
            if (m6445v.m6448s(i3)) {
                t.o0(this.f464a, m6445v.m6464c(i3));
            }
            int i4 = j.G3;
            if (m6445v.m6448s(i4)) {
                t.p0(this.f464a, C0099d0.m6608e(m6445v.m6456k(i4, -1), null));
            }
        } finally {
            m6445v.m6444w();
        }
    }

    /* renamed from: f */
    void m6602f(Drawable drawable) {
        this.f466c = -1;
        m6600h(null);
        m6606b();
    }

    /* renamed from: g */
    void m6601g(int i) {
        this.f466c = i;
        C0112i c0112i = this.f465b;
        m6600h(c0112i != null ? c0112i.m6559f(this.f464a.getContext(), i) : null);
        m6606b();
    }

    /* renamed from: h */
    void m6600h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f467d == null) {
                this.f467d = new C0133t0();
            }
            C0133t0 c0133t0 = this.f467d;
            c0133t0.f580a = colorStateList;
            c0133t0.f583d = true;
        } else {
            this.f467d = null;
        }
        m6606b();
    }

    /* renamed from: i */
    void m6599i(ColorStateList colorStateList) {
        if (this.f468e == null) {
            this.f468e = new C0133t0();
        }
        C0133t0 c0133t0 = this.f468e;
        c0133t0.f580a = colorStateList;
        c0133t0.f583d = true;
        m6606b();
    }

    /* renamed from: j */
    void m6598j(PorterDuff.Mode mode) {
        if (this.f468e == null) {
            this.f468e = new C0133t0();
        }
        C0133t0 c0133t0 = this.f468e;
        c0133t0.f581b = mode;
        c0133t0.f582c = true;
        m6606b();
    }
}
