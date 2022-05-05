package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.C0247a;
import androidx.core.p037g.C0741t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o.class */
public final class C0517o {

    /* renamed from: a */
    private final View f2421a;

    /* renamed from: d */
    private C0482bk f2424d;

    /* renamed from: e */
    private C0482bk f2425e;

    /* renamed from: f */
    private C0482bk f2426f;

    /* renamed from: c */
    private int f2423c = -1;

    /* renamed from: b */
    private final C0519q f2422b = C0519q.m8987b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0517o(View view) {
        this.f2421a = view;
    }

    /* renamed from: a */
    private boolean m9005a(Drawable drawable) {
        if (this.f2426f == null) {
            this.f2426f = new C0482bk();
        }
        C0482bk bkVar = this.f2426f;
        bkVar.m9101a();
        ColorStateList w = C0741t.m8308w(this.f2421a);
        if (w != null) {
            bkVar.f2334d = true;
            bkVar.f2331a = w;
        }
        PorterDuff.Mode x = C0741t.m8307x(this.f2421a);
        if (x != null) {
            bkVar.f2333c = true;
            bkVar.f2332b = x;
        }
        if (!bkVar.f2334d && !bkVar.f2333c) {
            return false;
        }
        C0519q.m8988a(drawable, bkVar, this.f2421a.getDrawableState());
        return true;
    }

    /* renamed from: b */
    private void m9002b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f2424d == null) {
                this.f2424d = new C0482bk();
            }
            C0482bk bkVar = this.f2424d;
            bkVar.f2331a = colorStateList;
            bkVar.f2334d = true;
        } else {
            this.f2424d = null;
        }
        m9000d();
    }

    /* renamed from: e */
    private boolean m8999e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f2424d != null : i == 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9009a() {
        this.f2423c = -1;
        m9002b(null);
        m9000d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9008a(int i) {
        this.f2423c = i;
        C0519q qVar = this.f2422b;
        m9002b(qVar != null ? qVar.m8984c(this.f2421a.getContext(), i) : null);
        m9000d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9007a(ColorStateList colorStateList) {
        if (this.f2425e == null) {
            this.f2425e = new C0482bk();
        }
        C0482bk bkVar = this.f2425e;
        bkVar.f2331a = colorStateList;
        bkVar.f2334d = true;
        m9000d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9006a(PorterDuff.Mode mode) {
        if (this.f2425e == null) {
            this.f2425e = new C0482bk();
        }
        C0482bk bkVar = this.f2425e;
        bkVar.f2332b = mode;
        bkVar.f2333c = true;
        m9000d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9004a(AttributeSet attributeSet, int i) {
        C0484bm a = C0484bm.m9092a(this.f2421a.getContext(), attributeSet, C0247a.C0257j.f984ef, i, 0);
        try {
            if (a.m9079i(C0247a.C0257j.f985eg)) {
                this.f2423c = a.m9082f(C0247a.C0257j.f985eg, -1);
                ColorStateList c = this.f2422b.m8984c(this.f2421a.getContext(), this.f2423c);
                if (c != null) {
                    m9002b(c);
                }
            }
            if (a.m9079i(C0247a.C0257j.f986eh)) {
                C0741t.m8355a(this.f2421a, a.m9083f(C0247a.C0257j.f986eh));
            }
            if (a.m9079i(C0247a.C0257j.f987ei)) {
                C0741t.m8353a(this.f2421a, C0437ah.m9172a(a.m9097a(C0247a.C0257j.f987ei, -1), null));
            }
        } finally {
            a.m9100a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final ColorStateList m9003b() {
        C0482bk bkVar = this.f2425e;
        if (bkVar != null) {
            return bkVar.f2331a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final PorterDuff.Mode m9001c() {
        C0482bk bkVar = this.f2425e;
        if (bkVar != null) {
            return bkVar.f2332b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m9000d() {
        Drawable background = this.f2421a.getBackground();
        if (background == null) {
            return;
        }
        if (!m8999e() || !m9005a(background)) {
            C0482bk bkVar = this.f2425e;
            if (bkVar != null) {
                C0519q.m8988a(background, bkVar, this.f2421a.getDrawableState());
                return;
            }
            C0482bk bkVar2 = this.f2424d;
            if (bkVar2 != null) {
                C0519q.m8988a(background, bkVar2, this.f2421a.getDrawableState());
            }
        }
    }
}
