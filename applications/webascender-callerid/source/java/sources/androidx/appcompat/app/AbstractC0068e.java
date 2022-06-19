package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.C0093a1;
import androidx.appcompat.widget.Toolbar;
import f.e.b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* renamed from: androidx.appcompat.app.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/e.class */
public abstract class AbstractC0068e {

    /* renamed from: f */
    private static int f211f = -100;

    /* renamed from: g */
    private static final b<WeakReference<AbstractC0068e>> f212g = new b<>();

    /* renamed from: h */
    private static final Object f213h = new Object();

    AbstractC0068e() {
    }

    /* renamed from: B */
    public static void m6870B(boolean z) {
        C0093a1.m6651b(z);
    }

    /* renamed from: c */
    static void m6863c(AbstractC0068e abstractC0068e) {
        synchronized (f213h) {
            m6840z(abstractC0068e);
            f212g.add(new WeakReference(abstractC0068e));
        }
    }

    /* renamed from: g */
    public static AbstractC0068e m6859g(Activity activity, AbstractC0067d abstractC0067d) {
        return new f(activity, abstractC0067d);
    }

    /* renamed from: h */
    public static AbstractC0068e m6858h(Dialog dialog, AbstractC0067d abstractC0067d) {
        return new f(dialog, abstractC0067d);
    }

    /* renamed from: j */
    public static int m6856j() {
        return f211f;
    }

    /* renamed from: p */
    public static boolean m6850p() {
        return C0093a1.m6652a();
    }

    /* renamed from: y */
    static void m6841y(AbstractC0068e abstractC0068e) {
        synchronized (f213h) {
            m6840z(abstractC0068e);
        }
    }

    /* renamed from: z */
    private static void m6840z(AbstractC0068e abstractC0068e) {
        synchronized (f213h) {
            Iterator it = f212g.iterator();
            while (it.hasNext()) {
                AbstractC0068e abstractC0068e2 = (AbstractC0068e) ((WeakReference) it.next()).get();
                if (abstractC0068e2 == abstractC0068e || abstractC0068e2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: A */
    public abstract boolean m6871A(int i);

    /* renamed from: C */
    public abstract void m6869C(int i);

    /* renamed from: D */
    public abstract void m6868D(View view);

    /* renamed from: E */
    public abstract void m6867E(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: F */
    public abstract void m6866F(Toolbar toolbar);

    /* renamed from: G */
    public void m6865G(int i) {
    }

    /* renamed from: H */
    public abstract void m6864H(CharSequence charSequence);

    /* renamed from: d */
    public abstract void m6862d(View view, ViewGroup.LayoutParams layoutParams);

    @Deprecated
    /* renamed from: e */
    public void m6861e(Context context) {
    }

    /* renamed from: f */
    public Context m6860f(Context context) {
        m6861e(context);
        return context;
    }

    /* renamed from: i */
    public abstract <T extends View> T m6857i(int i);

    /* renamed from: k */
    public int m6855k() {
        return -100;
    }

    /* renamed from: l */
    public abstract MenuInflater m6854l();

    /* renamed from: m */
    public abstract AbstractC0063a m6853m();

    /* renamed from: n */
    public abstract void m6852n();

    /* renamed from: o */
    public abstract void m6851o();

    /* renamed from: q */
    public abstract void m6849q(Configuration configuration);

    /* renamed from: r */
    public abstract void m6848r(Bundle bundle);

    /* renamed from: s */
    public abstract void m6847s();

    /* renamed from: t */
    public abstract void m6846t(Bundle bundle);

    /* renamed from: u */
    public abstract void m6845u();

    /* renamed from: v */
    public abstract void m6844v(Bundle bundle);

    /* renamed from: w */
    public abstract void m6843w();

    /* renamed from: x */
    public abstract void m6842x();
}
