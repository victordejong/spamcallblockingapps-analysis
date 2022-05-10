package p530d.p531a.p532v0;

import io.grpc.MethodDescriptor;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p266c.p267a.C4945v;
import p530d.p531a.AbstractC9242g;
import p530d.p531a.C9222d;
import p530d.p531a.p532v0.C9387k0;
import p530d.p531a.p532v0.C9446n1;
import p530d.p531a.p532v0.C9519w0;
/* renamed from: d.a.v0.q1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/q1.class */
public final class C9481q1 implements AbstractC9242g {

    /* renamed from: d */
    public static final C9222d.C9223a<C9446n1.AbstractC9447a> f36298d = C9222d.C9223a.m3120a("internal-retry-policy");

    /* renamed from: e */
    public static final C9222d.C9223a<C9387k0.AbstractC9388a> f36299e = C9222d.C9223a.m3120a("internal-hedging-policy");

    /* renamed from: a */
    public final AtomicReference<C9519w0> f36300a = new AtomicReference<>();

    /* renamed from: b */
    public final boolean f36301b;

    /* renamed from: c */
    public volatile boolean f36302c;

    /* renamed from: d.a.v0.q1$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/q1$a.class */
    public final class C9482a implements C9387k0.AbstractC9388a {

        /* renamed from: a */
        public final /* synthetic */ MethodDescriptor f36303a;

        public C9482a(MethodDescriptor methodDescriptor) {
            this.f36303a = methodDescriptor;
        }

        @Override // p530d.p531a.p532v0.C9387k0.AbstractC9388a
        public C9387k0 get() {
            if (!C9481q1.this.f36302c) {
                return C9387k0.f36053d;
            }
            C9387k0 a = C9481q1.this.m2645a(this.f36303a);
            C4945v.m24746a(a.equals(C9387k0.f36053d) || C9481q1.this.m2643c(this.f36303a).equals(C9446n1.f36224f), "Can not apply both retry and hedging policy for the method '%s'", this.f36303a);
            return a;
        }
    }

    /* renamed from: d.a.v0.q1$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/q1$b.class */
    public final class C9483b implements C9446n1.AbstractC9447a {

        /* renamed from: a */
        public final /* synthetic */ MethodDescriptor f36305a;

        public C9483b(MethodDescriptor methodDescriptor) {
            this.f36305a = methodDescriptor;
        }

        @Override // p530d.p531a.p532v0.C9446n1.AbstractC9447a
        public C9446n1 get() {
            return !C9481q1.this.f36302c ? C9446n1.f36224f : C9481q1.this.m2643c(this.f36305a);
        }
    }

    /* renamed from: d.a.v0.q1$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/q1$c.class */
    public final class C9484c implements C9387k0.AbstractC9388a {

        /* renamed from: a */
        public final /* synthetic */ C9387k0 f36307a;

        public C9484c(C9481q1 q1Var, C9387k0 k0Var) {
            this.f36307a = k0Var;
        }

        @Override // p530d.p531a.p532v0.C9387k0.AbstractC9388a
        public C9387k0 get() {
            return this.f36307a;
        }
    }

    /* renamed from: d.a.v0.q1$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/q1$d.class */
    public final class C9485d implements C9446n1.AbstractC9447a {

        /* renamed from: a */
        public final /* synthetic */ C9446n1 f36308a;

        public C9485d(C9481q1 q1Var, C9446n1 n1Var) {
            this.f36308a = n1Var;
        }

        @Override // p530d.p531a.p532v0.C9446n1.AbstractC9447a
        public C9446n1 get() {
            return this.f36308a;
        }
    }

    public C9481q1(boolean z) {
        this.f36301b = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00d3, code lost:
        if (r0.compareTo(r0) < 0) goto L_0x00d6;
     */
    @Override // p530d.p531a.AbstractC9242g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <ReqT, RespT> p530d.p531a.AbstractC9227f<ReqT, RespT> mo2163a(io.grpc.MethodDescriptor<ReqT, RespT> r8, p530d.p531a.C9222d r9, p530d.p531a.AbstractC9225e r10) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.C9481q1.mo2163a(io.grpc.MethodDescriptor, d.a.d, d.a.e):d.a.f");
    }

    /* renamed from: a */
    public C9387k0 m2645a(MethodDescriptor<?, ?> methodDescriptor) {
        C9519w0.C9520a b = m2644b(methodDescriptor);
        return b == null ? C9387k0.f36053d : b.f36382f;
    }

    /* renamed from: a */
    public void m2646a(C9519w0 w0Var) {
        this.f36300a.set(w0Var);
        this.f36302c = true;
    }

    /* renamed from: b */
    public final C9519w0.C9520a m2644b(MethodDescriptor<?, ?> methodDescriptor) {
        C9519w0 w0Var = this.f36300a.get();
        C9519w0.C9520a aVar = w0Var != null ? w0Var.m2543d().get(methodDescriptor.m635a()) : null;
        C9519w0.C9520a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = aVar;
            if (w0Var != null) {
                aVar2 = w0Var.m2544c().get(methodDescriptor.m629b());
            }
        }
        return aVar2;
    }

    /* renamed from: c */
    public C9446n1 m2643c(MethodDescriptor<?, ?> methodDescriptor) {
        C9519w0.C9520a b = m2644b(methodDescriptor);
        return b == null ? C9446n1.f36224f : b.f36381e;
    }
}
