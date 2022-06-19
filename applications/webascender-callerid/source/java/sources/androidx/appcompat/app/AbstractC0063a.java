package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import f.a.j;
import f.a.o.b;
/* renamed from: androidx.appcompat.app.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a.class */
public abstract class AbstractC0063a {

    /* renamed from: androidx.appcompat.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$a.class */
    public static class C0064a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f208a;

        public C0064a(int i, int i2) {
            super(i, i2);
            this.f208a = 0;
            this.f208a = 8388627;
        }

        public C0064a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f208a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.t);
            this.f208a = obtainStyledAttributes.getInt(j.u, 0);
            obtainStyledAttributes.recycle();
        }

        public C0064a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f208a = 0;
        }

        public C0064a(C0064a c0064a) {
            super((ViewGroup.MarginLayoutParams) c0064a);
            this.f208a = 0;
            this.f208a = c0064a.f208a;
        }
    }

    /* renamed from: androidx.appcompat.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$b.class */
    public interface AbstractC0065b {
        /* renamed from: a */
        void m6896a(boolean z);
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$c.class */
    public static abstract class AbstractC0066c {
        /* renamed from: a */
        public abstract CharSequence m6895a();

        /* renamed from: b */
        public abstract View m6894b();

        /* renamed from: c */
        public abstract Drawable m6893c();

        /* renamed from: d */
        public abstract CharSequence m6892d();

        /* renamed from: e */
        public abstract void m6891e();
    }

    /* renamed from: g */
    public boolean m6913g() {
        return false;
    }

    /* renamed from: h */
    public abstract boolean m6912h();

    /* renamed from: i */
    public abstract void m6911i(boolean z);

    /* renamed from: j */
    public abstract int m6910j();

    /* renamed from: k */
    public abstract Context m6909k();

    /* renamed from: l */
    public boolean m6908l() {
        return false;
    }

    /* renamed from: m */
    public void m6907m(Configuration configuration) {
    }

    /* renamed from: n */
    void m6906n() {
    }

    /* renamed from: o */
    public abstract boolean m6905o(int i, KeyEvent keyEvent);

    /* renamed from: p */
    public boolean m6904p(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: q */
    public boolean m6903q() {
        return false;
    }

    /* renamed from: r */
    public abstract void m6902r(boolean z);

    /* renamed from: s */
    public abstract void m6901s(boolean z);

    /* renamed from: t */
    public abstract void m6900t(boolean z);

    /* renamed from: u */
    public abstract void m6899u(CharSequence charSequence);

    /* renamed from: v */
    public abstract void m6898v(CharSequence charSequence);

    /* renamed from: w */
    public b m6897w(b.a aVar) {
        return null;
    }
}
