package p530d.p531a.p532v0;

import io.grpc.Status;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p531a.AbstractC9252j;
import p530d.p531a.AbstractC9308s0;
import p530d.p531a.C9210a;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
/* renamed from: d.a.v0.u1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/u1.class */
public final class C9507u1 {

    /* renamed from: c */
    public static final C9507u1 f36338c = new C9507u1(new AbstractC9308s0[0]);

    /* renamed from: a */
    public final AbstractC9308s0[] f36339a;

    /* renamed from: b */
    public final AtomicBoolean f36340b = new AtomicBoolean(false);

    public C9507u1(AbstractC9308s0[] s0VarArr) {
        this.f36339a = s0VarArr;
    }

    /* renamed from: a */
    public static C9507u1 m2575a(C9222d dVar, C9210a aVar, C9260k0 k0Var) {
        List<AbstractC9252j.AbstractC9253a> h = dVar.m3125h();
        if (h.isEmpty()) {
            return f36338c;
        }
        AbstractC9252j.C9254b.C9255a b = AbstractC9252j.C9254b.m3078b();
        b.m3076a(aVar);
        b.m3075a(dVar);
        AbstractC9252j.C9254b a = b.m3077a();
        int size = h.size();
        AbstractC9308s0[] s0VarArr = new AbstractC9308s0[size];
        for (int i = 0; i < size; i++) {
            s0VarArr[i] = h.get(i).mo2782a(a, k0Var);
        }
        return new C9507u1(s0VarArr);
    }

    /* renamed from: a */
    public void m2579a() {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            ((AbstractC9252j) s0Var).m3083a();
        }
    }

    /* renamed from: a */
    public void m2578a(int i) {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            s0Var.m2959a(i);
        }
    }

    /* renamed from: a */
    public void m2577a(int i, long j, long j2) {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            s0Var.m2958a(i, j, j2);
        }
    }

    /* renamed from: a */
    public void m2576a(long j) {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            s0Var.m2957a(j);
        }
    }

    /* renamed from: a */
    public void m2574a(C9260k0 k0Var) {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            ((AbstractC9252j) s0Var).m3082a(k0Var);
        }
    }

    /* renamed from: a */
    public void m2573a(Status status) {
        if (this.f36340b.compareAndSet(false, true)) {
            for (AbstractC9308s0 s0Var : this.f36339a) {
                s0Var.m2956a(status);
            }
        }
    }

    /* renamed from: b */
    public void m2572b() {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            ((AbstractC9252j) s0Var).m3081b();
        }
    }

    /* renamed from: b */
    public void m2571b(int i) {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            s0Var.m2955b(i);
        }
    }

    /* renamed from: b */
    public void m2570b(int i, long j, long j2) {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            s0Var.m2954b(i, j, j2);
        }
    }

    /* renamed from: b */
    public void m2569b(long j) {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            s0Var.m2953b(j);
        }
    }

    /* renamed from: c */
    public void m2568c(long j) {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            s0Var.m2952c(j);
        }
    }

    /* renamed from: d */
    public void m2567d(long j) {
        for (AbstractC9308s0 s0Var : this.f36339a) {
            s0Var.mo2780d(j);
        }
    }
}
