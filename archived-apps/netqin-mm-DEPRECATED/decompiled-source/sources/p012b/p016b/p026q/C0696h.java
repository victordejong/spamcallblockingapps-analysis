package p012b.p016b.p026q;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import p012b.p016b.C0583j;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p056q.C1028e;
/* renamed from: b.b.q.h */
/* loaded from: classes-dex2jar.jar:b/b/q/h.class */
public class C0696h {

    /* renamed from: a */
    public final ImageView f3436a;

    /* renamed from: b */
    public C0686d0 f3437b;

    /* renamed from: c */
    public C0686d0 f3438c;

    /* renamed from: d */
    public C0686d0 f3439d;

    public C0696h(ImageView imageView) {
        this.f3436a = imageView;
    }

    /* renamed from: a */
    public void m36386a() {
        Drawable drawable = this.f3436a.getDrawable();
        if (drawable != null) {
            C0716p.m36250b(drawable);
        }
        if (drawable == null) {
            return;
        }
        if (!m36377e() || !m36382a(drawable)) {
            C0686d0 d0Var = this.f3438c;
            if (d0Var != null) {
                C0689f.m36433a(drawable, d0Var, this.f3436a.getDrawableState());
                return;
            }
            C0686d0 d0Var2 = this.f3437b;
            if (d0Var2 != null) {
                C0689f.m36433a(drawable, d0Var2, this.f3436a.getDrawableState());
            }
        }
    }

    /* renamed from: a */
    public void m36385a(int i) {
        if (i != 0) {
            Drawable c = C0601a.m36777c(this.f3436a.getContext(), i);
            if (c != null) {
                C0716p.m36250b(c);
            }
            this.f3436a.setImageDrawable(c);
        } else {
            this.f3436a.setImageDrawable(null);
        }
        m36386a();
    }

    /* renamed from: a */
    public void m36384a(ColorStateList colorStateList) {
        if (this.f3438c == null) {
            this.f3438c = new C0686d0();
        }
        C0686d0 d0Var = this.f3438c;
        d0Var.f3391a = colorStateList;
        d0Var.f3394d = true;
        m36386a();
    }

    /* renamed from: a */
    public void m36383a(PorterDuff.Mode mode) {
        if (this.f3438c == null) {
            this.f3438c = new C0686d0();
        }
        C0686d0 d0Var = this.f3438c;
        d0Var.f3392b = mode;
        d0Var.f3393c = true;
        m36386a();
    }

    /* renamed from: a */
    public void m36381a(AttributeSet attributeSet, int i) {
        C0691f0 a = C0691f0.m36414a(this.f3436a.getContext(), attributeSet, C0583j.AppCompatImageView, i, 0);
        ImageView imageView = this.f3436a;
        C1002u.m35244a(imageView, imageView.getContext(), C0583j.AppCompatImageView, attributeSet, a.m36422a(), i, 0);
        try {
            Drawable drawable = this.f3436a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int g = a.m36401g(C0583j.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (g != -1) {
                    Drawable c = C0601a.m36777c(this.f3436a.getContext(), g);
                    drawable2 = c;
                    if (c != null) {
                        this.f3436a.setImageDrawable(c);
                        drawable2 = c;
                    }
                }
            }
            if (drawable2 != null) {
                C0716p.m36250b(drawable2);
            }
            if (a.m36402g(C0583j.AppCompatImageView_tint)) {
                C1028e.m35114a(this.f3436a, a.m36421a(C0583j.AppCompatImageView_tint));
            }
            if (a.m36402g(C0583j.AppCompatImageView_tintMode)) {
                C1028e.m35113a(this.f3436a, C0716p.m36252a(a.m36407d(C0583j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            a.m36413b();
        }
    }

    /* renamed from: a */
    public final boolean m36382a(Drawable drawable) {
        if (this.f3439d == null) {
            this.f3439d = new C0686d0();
        }
        C0686d0 d0Var = this.f3439d;
        d0Var.m36447a();
        ColorStateList a = C1028e.m35115a(this.f3436a);
        if (a != null) {
            d0Var.f3394d = true;
            d0Var.f3391a = a;
        }
        PorterDuff.Mode b = C1028e.m35112b(this.f3436a);
        if (b != null) {
            d0Var.f3393c = true;
            d0Var.f3392b = b;
        }
        if (!d0Var.f3394d && !d0Var.f3393c) {
            return false;
        }
        C0689f.m36433a(drawable, d0Var, this.f3436a.getDrawableState());
        return true;
    }

    /* renamed from: b */
    public ColorStateList m36380b() {
        C0686d0 d0Var = this.f3438c;
        return d0Var != null ? d0Var.f3391a : null;
    }

    /* renamed from: c */
    public PorterDuff.Mode m36379c() {
        C0686d0 d0Var = this.f3438c;
        return d0Var != null ? d0Var.f3392b : null;
    }

    /* renamed from: d */
    public boolean m36378d() {
        return Build.VERSION.SDK_INT < 21 || !(this.f3436a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: e */
    public final boolean m36377e() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f3437b == null) {
            z = false;
        }
        return z;
    }
}
