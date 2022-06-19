package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.AbstractC0329h;
/* renamed from: androidx.lifecycle.a0 */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/a0.class */
public class C0313a0 {

    /* renamed from: a */
    private final o f1689a;

    /* renamed from: b */
    private final Handler f1690b = new Handler();

    /* renamed from: c */
    private RunnableC0314a f1691c;

    /* renamed from: androidx.lifecycle.a0$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/a0$a.class */
    public static class RunnableC0314a implements Runnable {

        /* renamed from: f */
        private final o f1692f;

        /* renamed from: g */
        final AbstractC0329h.EnumC0331b f1693g;

        /* renamed from: h */
        private boolean f1694h = false;

        RunnableC0314a(o oVar, AbstractC0329h.EnumC0331b enumC0331b) {
            this.f1692f = oVar;
            this.f1693g = enumC0331b;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f1694h) {
                this.f1692f.h(this.f1693g);
                this.f1694h = true;
            }
        }
    }

    public C0313a0(AbstractC0340n abstractC0340n) {
        this.f1689a = new o(abstractC0340n);
    }

    /* renamed from: f */
    private void m5464f(AbstractC0329h.EnumC0331b enumC0331b) {
        RunnableC0314a runnableC0314a = this.f1691c;
        if (runnableC0314a != null) {
            runnableC0314a.run();
        }
        RunnableC0314a runnableC0314a2 = new RunnableC0314a(this.f1689a, enumC0331b);
        this.f1691c = runnableC0314a2;
        this.f1690b.postAtFrontOfQueue(runnableC0314a2);
    }

    /* renamed from: a */
    public AbstractC0329h m5469a() {
        return this.f1689a;
    }

    /* renamed from: b */
    public void m5468b() {
        m5464f(AbstractC0329h.EnumC0331b.ON_START);
    }

    /* renamed from: c */
    public void m5467c() {
        m5464f(AbstractC0329h.EnumC0331b.ON_CREATE);
    }

    /* renamed from: d */
    public void m5466d() {
        m5464f(AbstractC0329h.EnumC0331b.ON_STOP);
        m5464f(AbstractC0329h.EnumC0331b.ON_DESTROY);
    }

    /* renamed from: e */
    public void m5465e() {
        m5464f(AbstractC0329h.EnumC0331b.ON_START);
    }
}
