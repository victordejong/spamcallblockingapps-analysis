package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
/* renamed from: androidx.appcompat.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i.class */
public final class C0112i {

    /* renamed from: b */
    private static final PorterDuff.Mode f506b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    private static C0112i f507c;

    /* renamed from: a */
    private C0115l0 f508a;

    /* renamed from: b */
    public static C0112i m6563b() {
        C0112i c0112i;
        synchronized (C0112i.class) {
            try {
                if (f507c == null) {
                    m6557h();
                }
                c0112i = f507c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0112i;
    }

    /* renamed from: e */
    public static PorterDuffColorFilter m6560e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m6541l;
        synchronized (C0112i.class) {
            try {
                m6541l = C0115l0.m6541l(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m6541l;
    }

    /* renamed from: h */
    public static void m6557h() {
        synchronized (C0112i.class) {
            try {
                if (f507c == null) {
                    C0112i c0112i = new C0112i();
                    f507c = c0112i;
                    c0112i.f508a = C0115l0.m6545h();
                    f507c.f508a.m6532u(new a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: i */
    public static void m6556i(Drawable drawable, C0133t0 c0133t0, int[] iArr) {
        C0115l0.m6530w(drawable, c0133t0, iArr);
    }

    /* renamed from: c */
    public Drawable m6562c(Context context, int i) {
        Drawable m6543j;
        synchronized (this) {
            m6543j = this.f508a.m6543j(context, i);
        }
        return m6543j;
    }

    /* renamed from: d */
    public Drawable m6561d(Context context, int i, boolean z) {
        Drawable m6542k;
        synchronized (this) {
            m6542k = this.f508a.m6542k(context, i, z);
        }
        return m6542k;
    }

    /* renamed from: f */
    public ColorStateList m6559f(Context context, int i) {
        ColorStateList m6540m;
        synchronized (this) {
            m6540m = this.f508a.m6540m(context, i);
        }
        return m6540m;
    }

    /* renamed from: g */
    public void m6558g(Context context) {
        synchronized (this) {
            this.f508a.m6534s(context);
        }
    }
}
