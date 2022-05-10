package p012b.p016b.p026q;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import p012b.p016b.C0583j;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.b.q.d */
/* loaded from: classes-dex2jar.jar:b/b/q/d.class */
public class C0685d {

    /* renamed from: a */
    public final View f3385a;

    /* renamed from: d */
    public C0686d0 f3388d;

    /* renamed from: e */
    public C0686d0 f3389e;

    /* renamed from: f */
    public C0686d0 f3390f;

    /* renamed from: c */
    public int f3387c = -1;

    /* renamed from: b */
    public final C0689f f3386b = C0689f.m36432b();

    public C0685d(View view) {
        this.f3385a = view;
    }

    /* renamed from: a */
    public void m36458a() {
        Drawable background = this.f3385a.getBackground();
        if (background == null) {
            return;
        }
        if (!m36448d() || !m36454a(background)) {
            C0686d0 d0Var = this.f3389e;
            if (d0Var != null) {
                C0689f.m36433a(background, d0Var, this.f3385a.getDrawableState());
                return;
            }
            C0686d0 d0Var2 = this.f3388d;
            if (d0Var2 != null) {
                C0689f.m36433a(background, d0Var2, this.f3385a.getDrawableState());
            }
        }
    }

    /* renamed from: a */
    public void m36457a(int i) {
        this.f3387c = i;
        C0689f fVar = this.f3386b;
        m36456a(fVar != null ? fVar.m36431b(this.f3385a.getContext(), i) : null);
        m36458a();
    }

    /* renamed from: a */
    public void m36456a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f3388d == null) {
                this.f3388d = new C0686d0();
            }
            C0686d0 d0Var = this.f3388d;
            d0Var.f3391a = colorStateList;
            d0Var.f3394d = true;
        } else {
            this.f3388d = null;
        }
        m36458a();
    }

    /* renamed from: a */
    public void m36455a(PorterDuff.Mode mode) {
        if (this.f3389e == null) {
            this.f3389e = new C0686d0();
        }
        C0686d0 d0Var = this.f3389e;
        d0Var.f3392b = mode;
        d0Var.f3393c = true;
        m36458a();
    }

    /* renamed from: a */
    public void m36453a(AttributeSet attributeSet, int i) {
        C0691f0 a = C0691f0.m36414a(this.f3385a.getContext(), attributeSet, C0583j.ViewBackgroundHelper, i, 0);
        View view = this.f3385a;
        C1002u.m35244a(view, view.getContext(), C0583j.ViewBackgroundHelper, attributeSet, a.m36422a(), i, 0);
        try {
            if (a.m36402g(C0583j.ViewBackgroundHelper_android_background)) {
                this.f3387c = a.m36401g(C0583j.ViewBackgroundHelper_android_background, -1);
                ColorStateList b = this.f3386b.m36431b(this.f3385a.getContext(), this.f3387c);
                if (b != null) {
                    m36456a(b);
                }
            }
            if (a.m36402g(C0583j.ViewBackgroundHelper_backgroundTint)) {
                C1002u.m35243a(this.f3385a, a.m36421a(C0583j.ViewBackgroundHelper_backgroundTint));
            }
            if (a.m36402g(C0583j.ViewBackgroundHelper_backgroundTintMode)) {
                C1002u.m35241a(this.f3385a, C0716p.m36252a(a.m36407d(C0583j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            a.m36413b();
        }
    }

    /* renamed from: a */
    public final boolean m36454a(Drawable drawable) {
        if (this.f3390f == null) {
            this.f3390f = new C0686d0();
        }
        C0686d0 d0Var = this.f3390f;
        d0Var.m36447a();
        ColorStateList g = C1002u.m35216g(this.f3385a);
        if (g != null) {
            d0Var.f3394d = true;
            d0Var.f3391a = g;
        }
        PorterDuff.Mode h = C1002u.m35214h(this.f3385a);
        if (h != null) {
            d0Var.f3393c = true;
            d0Var.f3392b = h;
        }
        if (!d0Var.f3394d && !d0Var.f3393c) {
            return false;
        }
        C0689f.m36433a(drawable, d0Var, this.f3385a.getDrawableState());
        return true;
    }

    /* renamed from: b */
    public ColorStateList m36452b() {
        C0686d0 d0Var = this.f3389e;
        return d0Var != null ? d0Var.f3391a : null;
    }

    /* renamed from: b */
    public void m36451b(ColorStateList colorStateList) {
        if (this.f3389e == null) {
            this.f3389e = new C0686d0();
        }
        C0686d0 d0Var = this.f3389e;
        d0Var.f3391a = colorStateList;
        d0Var.f3394d = true;
        m36458a();
    }

    /* renamed from: b */
    public void m36450b(Drawable drawable) {
        this.f3387c = -1;
        m36456a((ColorStateList) null);
        m36458a();
    }

    /* renamed from: c */
    public PorterDuff.Mode m36449c() {
        C0686d0 d0Var = this.f3389e;
        return d0Var != null ? d0Var.f3392b : null;
    }

    /* renamed from: d */
    public final boolean m36448d() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f3388d == null) {
            z = false;
        }
        return z;
    }
}
