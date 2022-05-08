package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6833i;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6836l;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6837m;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6838n;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6839o;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.q.t1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/t1.class */
public final class C6927t1<R extends AbstractC6835k> extends AbstractC6839o<R> implements AbstractC6836l<R> {

    /* renamed from: a */
    public AbstractC6838n<? super R, ? extends AbstractC6835k> f16962a;

    /* renamed from: b */
    public C6927t1<? extends AbstractC6835k> f16963b;

    /* renamed from: c */
    public volatile AbstractC6837m<? super R> f16964c;

    /* renamed from: d */
    public final Object f16965d;

    /* renamed from: e */
    public Status f16966e;

    /* renamed from: f */
    public final WeakReference<AbstractC6825f> f16967f;

    /* renamed from: g */
    public final HandlerC6935v1 f16968g;

    /* renamed from: b */
    public static void m21559b(AbstractC6835k kVar) {
        if (kVar instanceof AbstractC6833i) {
            try {
                ((AbstractC6833i) kVar).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(kVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                sb.toString();
            }
        }
    }

    /* renamed from: a */
    public final void m21566a() {
        this.f16964c = null;
    }

    /* renamed from: a */
    public final void m21565a(Status status) {
        synchronized (this.f16965d) {
            this.f16966e = status;
            m21560b(this.f16966e);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6836l
    /* renamed from: a */
    public final void mo21564a(R r) {
        synchronized (this.f16965d) {
            if (!r.mo21814b().m31991J()) {
                m21565a(r.mo21814b());
                m21559b(r);
            } else if (this.f16962a != null) {
                C6907o1.m21623a().submit(new RunnableC6931u1(this, r));
            } else if (m21561b()) {
                this.f16964c.m21812b(r);
            }
        }
    }

    /* renamed from: b */
    public final void m21560b(Status status) {
        synchronized (this.f16965d) {
            if (this.f16962a != null) {
                Status a = this.f16962a.m21811a(status);
                C7021t.m21289a(a, "onFailure must not return null");
                this.f16963b.m21565a(a);
            } else if (m21561b()) {
                this.f16964c.m21813a(status);
            }
        }
    }

    @GuardedBy("mSyncToken")
    /* renamed from: b */
    public final boolean m21561b() {
        return (this.f16964c == null || this.f16967f.get() == null) ? false : true;
    }
}
