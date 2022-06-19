package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.AbstractC0281n;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.fragment.app.m */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/m.class */
public class C0279m {

    /* renamed from: a */
    private final CopyOnWriteArrayList<C0280a> f1521a = new CopyOnWriteArrayList<>();

    /* renamed from: b */
    private final AbstractC0281n f1522b;

    /* renamed from: androidx.fragment.app.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/m$a.class */
    public static final class C0280a {

        /* renamed from: a */
        final AbstractC0281n.AbstractC0285m f1523a;

        /* renamed from: b */
        final boolean f1524b;
    }

    public C0279m(AbstractC0281n abstractC0281n) {
        this.f1522b = abstractC0281n;
    }

    /* renamed from: a */
    public void m5749a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5749a(fragment, bundle, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5610a(this.f1522b, fragment, bundle);
            }
        }
    }

    /* renamed from: b */
    public void m5748b(Fragment fragment, boolean z) {
        Context f = this.f1522b.m5617w0().f();
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5748b(fragment, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5609b(this.f1522b, fragment, f);
            }
        }
    }

    /* renamed from: c */
    public void m5747c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5747c(fragment, bundle, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5608c(this.f1522b, fragment, bundle);
            }
        }
    }

    /* renamed from: d */
    public void m5746d(Fragment fragment, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5746d(fragment, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5607d(this.f1522b, fragment);
            }
        }
    }

    /* renamed from: e */
    public void m5745e(Fragment fragment, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5745e(fragment, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5606e(this.f1522b, fragment);
            }
        }
    }

    /* renamed from: f */
    public void m5744f(Fragment fragment, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5744f(fragment, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5605f(this.f1522b, fragment);
            }
        }
    }

    /* renamed from: g */
    public void m5743g(Fragment fragment, boolean z) {
        Context f = this.f1522b.m5617w0().f();
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5743g(fragment, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5604g(this.f1522b, fragment, f);
            }
        }
    }

    /* renamed from: h */
    public void m5742h(Fragment fragment, Bundle bundle, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5742h(fragment, bundle, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5603h(this.f1522b, fragment, bundle);
            }
        }
    }

    /* renamed from: i */
    public void m5741i(Fragment fragment, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5741i(fragment, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5602i(this.f1522b, fragment);
            }
        }
    }

    /* renamed from: j */
    public void m5740j(Fragment fragment, Bundle bundle, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5740j(fragment, bundle, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5601j(this.f1522b, fragment, bundle);
            }
        }
    }

    /* renamed from: k */
    public void m5739k(Fragment fragment, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5739k(fragment, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5600k(this.f1522b, fragment);
            }
        }
    }

    /* renamed from: l */
    public void m5738l(Fragment fragment, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5738l(fragment, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5599l(this.f1522b, fragment);
            }
        }
    }

    /* renamed from: m */
    public void m5737m(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5737m(fragment, view, bundle, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5598m(this.f1522b, fragment, view, bundle);
            }
        }
    }

    /* renamed from: n */
    public void m5736n(Fragment fragment, boolean z) {
        Fragment m5611z0 = this.f1522b.m5611z0();
        if (m5611z0 != null) {
            m5611z0.getParentFragmentManager().m5613y0().m5736n(fragment, true);
        }
        Iterator<C0280a> it = this.f1521a.iterator();
        while (it.hasNext()) {
            C0280a next = it.next();
            if (!z || next.f1524b) {
                next.f1523a.m5597n(this.f1522b, fragment);
            }
        }
    }
}
