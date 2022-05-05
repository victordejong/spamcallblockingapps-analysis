package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
/* renamed from: androidx.appcompat.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/q.class */
public final class C0519q {

    /* renamed from: a */
    private static final PorterDuff.Mode f2433a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private static C0519q f2434b;

    /* renamed from: c */
    private C0451ap f2435c;

    /* renamed from: a */
    public static PorterDuffColorFilter m8991a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter a;
        synchronized (C0519q.class) {
            try {
                a = C0451ap.m9148a(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return a;
    }

    /* renamed from: a */
    public static void m8992a() {
        synchronized (C0519q.class) {
            try {
                if (f2434b == null) {
                    C0519q qVar = new C0519q();
                    f2434b = qVar;
                    qVar.f2435c = C0451ap.m9150a();
                    f2434b.f2435c.m9137a(new C0520r());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m8988a(Drawable drawable, C0482bk bkVar, int[] iArr) {
        C0451ap.m9139a(drawable, bkVar, iArr);
    }

    /* renamed from: b */
    public static C0519q m8987b() {
        C0519q qVar;
        synchronized (C0519q.class) {
            try {
                if (f2434b == null) {
                    m8992a();
                }
                qVar = f2434b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qVar;
    }

    /* renamed from: a */
    public final Drawable m8989a(Context context, int i) {
        Drawable a;
        synchronized (this) {
            a = this.f2435c.m9146a(context, i);
        }
        return a;
    }

    /* renamed from: a */
    public final void m8990a(Context context) {
        synchronized (this) {
            this.f2435c.m9147a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Drawable m8986b(Context context, int i) {
        Drawable a;
        synchronized (this) {
            a = this.f2435c.m9144a(context, i, true);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final ColorStateList m8984c(Context context, int i) {
        ColorStateList b;
        synchronized (this) {
            b = this.f2435c.m9135b(context, i);
        }
        return b;
    }
}
