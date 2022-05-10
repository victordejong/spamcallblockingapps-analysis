package p530d.p531a.p532v0;

import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.GrpcUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p271e.C5052a;
import p530d.p531a.AbstractC9270l;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.C9297q;
import p530d.p531a.C9306s;
import p530d.p531a.C9558w;
import p530d.p531a.p532v0.AbstractC9338d;
import p530d.p531a.p532v0.C9548y0;
/* renamed from: d.a.v0.a */
/* loaded from: classes2-dex2jar.jar:d/a/v0/a.class */
public abstract class AbstractC9318a extends AbstractC9338d implements AbstractC9448o, C9548y0.AbstractC9552d {

    /* renamed from: f */
    public static final Logger f35898f = Logger.getLogger(AbstractC9318a.class.getName());

    /* renamed from: a */
    public final C9325a2 f35899a;

    /* renamed from: b */
    public final AbstractC9376i0 f35900b;

    /* renamed from: c */
    public boolean f35901c;

    /* renamed from: d */
    public boolean f35902d;

    /* renamed from: e */
    public C9260k0 f35903e;

    /* renamed from: d.a.v0.a$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/a$a.class */
    public class C9319a implements AbstractC9376i0 {

        /* renamed from: a */
        public C9260k0 f35904a;

        /* renamed from: b */
        public boolean f35905b;

        /* renamed from: c */
        public final C9507u1 f35906c;

        /* renamed from: d */
        public byte[] f35907d;

        public C9319a(C9260k0 k0Var, C9507u1 u1Var) {
            C4933n.m24794a(k0Var, "headers");
            this.f35904a = k0Var;
            C4933n.m24794a(u1Var, "statsTraceCtx");
            this.f35906c = u1Var;
        }

        @Override // p530d.p531a.p532v0.AbstractC9376i0
        /* renamed from: a */
        public AbstractC9376i0 mo2513a(AbstractC9270l lVar) {
            return this;
        }

        @Override // p530d.p531a.p532v0.AbstractC9376i0
        /* renamed from: a */
        public void mo2509a(InputStream inputStream) {
            C4933n.m24775b(this.f35907d == null, "writePayload should not be called multiple times");
            try {
                this.f35907d = C5052a.m24599a(inputStream);
                this.f35906c.m2571b(0);
                C9507u1 u1Var = this.f35906c;
                byte[] bArr = this.f35907d;
                u1Var.m2570b(0, bArr.length, bArr.length);
                this.f35906c.m2568c(this.f35907d.length);
                this.f35906c.m2567d(this.f35907d.length);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9376i0
        /* renamed from: c */
        public void mo2501c(int i) {
        }

        @Override // p530d.p531a.p532v0.AbstractC9376i0
        public void close() {
            boolean z = true;
            this.f35905b = true;
            if (this.f35907d == null) {
                z = false;
            }
            C4933n.m24775b(z, "Lack of request message. GET request is only supported for unary requests");
            AbstractC9318a.this.mo2459f().mo2448a(this.f35904a, this.f35907d);
            this.f35907d = null;
            this.f35904a = null;
        }

        @Override // p530d.p531a.p532v0.AbstractC9376i0
        public void flush() {
        }

        @Override // p530d.p531a.p532v0.AbstractC9376i0
        public boolean isClosed() {
            return this.f35905b;
        }
    }

    /* renamed from: d.a.v0.a$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/a$b.class */
    public interface AbstractC9320b {
        /* renamed from: a */
        void mo2449a(int i);

        /* renamed from: a */
        void mo2448a(C9260k0 k0Var, byte[] bArr);

        /* renamed from: a */
        void mo2447a(AbstractC9333b2 b2Var, boolean z, boolean z2, int i);

        /* renamed from: a */
        void mo2446a(Status status);
    }

    /* renamed from: d.a.v0.a$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/a$c.class */
    public static abstract class AbstractC9321c extends AbstractC9338d.AbstractC9339a {

        /* renamed from: g */
        public final C9507u1 f35909g;

        /* renamed from: h */
        public boolean f35910h;

        /* renamed from: i */
        public ClientStreamListener f35911i;

        /* renamed from: j */
        public boolean f35912j;

        /* renamed from: k */
        public C9306s f35913k = C9306s.m2960d();

        /* renamed from: l */
        public boolean f35914l = false;

        /* renamed from: m */
        public Runnable f35915m;

        /* renamed from: n */
        public volatile boolean f35916n;

        /* renamed from: o */
        public boolean f35917o;

        /* renamed from: p */
        public boolean f35918p;

        /* renamed from: d.a.v0.a$c$a */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/a$c$a.class */
        public class RunnableC9322a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Status f35919a;

            /* renamed from: b */
            public final /* synthetic */ ClientStreamListener.RpcProgress f35920b;

            /* renamed from: c */
            public final /* synthetic */ C9260k0 f35921c;

            public RunnableC9322a(Status status, ClientStreamListener.RpcProgress rpcProgress, C9260k0 k0Var) {
                this.f35919a = status;
                this.f35920b = rpcProgress;
                this.f35921c = k0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC9321c.this.m2932a(this.f35919a, this.f35920b, this.f35921c);
            }
        }

        public AbstractC9321c(int i, C9507u1 u1Var, C9325a2 a2Var) {
            super(i, u1Var, a2Var);
            C4933n.m24794a(u1Var, "statsTraceCtx");
            this.f35909g = u1Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m2939a(p530d.p531a.C9260k0 r9) {
            /*
                Method dump skipped, instructions count: 218
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.AbstractC9318a.AbstractC9321c.m2939a(d.a.k0):void");
        }

        /* renamed from: a */
        public void m2938a(C9260k0 k0Var, Status status) {
            C4933n.m24794a(status, "status");
            C4933n.m24794a(k0Var, "trailers");
            if (this.f35917o) {
                AbstractC9318a.f35898f.log(Level.INFO, "Received trailers on closed stream:\n {1}\n {2}", new Object[]{status, k0Var});
                return;
            }
            this.f35909g.m2574a(k0Var);
            m2930a(status, false, k0Var);
        }

        /* renamed from: a */
        public final void m2937a(C9306s sVar) {
            C4933n.m24775b(this.f35911i == null, "Already called start");
            C4933n.m24794a(sVar, "decompressorRegistry");
            this.f35913k = sVar;
        }

        /* renamed from: a */
        public final void m2932a(Status status, ClientStreamListener.RpcProgress rpcProgress, C9260k0 k0Var) {
            if (!this.f35910h) {
                this.f35910h = true;
                this.f35909g.m2573a(status);
                mo2898c().mo573a(status, rpcProgress, k0Var);
                if (m2907a() != null) {
                    m2907a().m2921a(status.m602f());
                }
            }
        }

        /* renamed from: a */
        public final void m2931a(Status status, ClientStreamListener.RpcProgress rpcProgress, boolean z, C9260k0 k0Var) {
            C4933n.m24794a(status, "status");
            C4933n.m24794a(k0Var, "trailers");
            if (!this.f35917o || z) {
                this.f35917o = true;
                this.f35918p = status.m602f();
                m2894f();
                if (this.f35914l) {
                    this.f35915m = null;
                    m2932a(status, rpcProgress, k0Var);
                    return;
                }
                this.f35915m = new RunnableC9322a(status, rpcProgress, k0Var);
                m2899b(z);
            }
        }

        /* renamed from: a */
        public final void m2930a(Status status, boolean z, C9260k0 k0Var) {
            m2931a(status, ClientStreamListener.RpcProgress.PROCESSED, z, k0Var);
        }

        /* renamed from: a */
        public final void m2929a(ClientStreamListener clientStreamListener) {
            C4933n.m24775b(this.f35911i == null, "Already called setListener");
            C4933n.m24794a(clientStreamListener, "listener");
            this.f35911i = clientStreamListener;
        }

        @Override // io.grpc.internal.MessageDeframer.AbstractC10365b
        /* renamed from: a */
        public void mo323a(boolean z) {
            C4933n.m24775b(this.f35917o, "status should have been reported on deframer closed");
            this.f35914l = true;
            if (this.f35918p && z) {
                m2930a(Status.f37995m.m609b("Encountered end-of-stream mid-frame"), true, new C9260k0());
            }
            Runnable runnable = this.f35915m;
            if (runnable != null) {
                runnable.run();
                this.f35915m = null;
            }
        }

        /* renamed from: b */
        public void m2928b(AbstractC9377i1 i1Var) {
            C4933n.m24794a(i1Var, "frame");
            try {
                if (this.f35917o) {
                    AbstractC9318a.f35898f.log(Level.INFO, "Received data on closed stream");
                    i1Var.close();
                    return;
                }
                m2903a(i1Var);
            } catch (Throwable th) {
                if (1 != 0) {
                    i1Var.close();
                }
                throw th;
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9338d.AbstractC9339a
        /* renamed from: c */
        public final ClientStreamListener mo2898c() {
            return this.f35911i;
        }

        /* renamed from: c */
        public final void m2927c(boolean z) {
            this.f35912j = z;
        }

        /* renamed from: g */
        public final boolean m2926g() {
            return this.f35916n;
        }

        /* renamed from: h */
        public final void m2925h() {
            this.f35916n = true;
        }
    }

    public AbstractC9318a(AbstractC9337c2 c2Var, C9507u1 u1Var, C9325a2 a2Var, C9260k0 k0Var, C9222d dVar, boolean z) {
        C4933n.m24794a(k0Var, "headers");
        C4933n.m24794a(a2Var, "transportTracer");
        this.f35899a = a2Var;
        this.f35901c = GrpcUtil.m534a(dVar);
        this.f35902d = z;
        if (!z) {
            this.f35900b = new C9548y0(this, c2Var, u1Var);
            this.f35903e = k0Var;
            return;
        }
        this.f35900b = new C9319a(k0Var, u1Var);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2539a() {
        if (!mo2461e().m2926g()) {
            mo2461e().m2925h();
            m2910c();
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public final void mo2538a(int i) {
        mo2459f().mo2449a(i);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2536a(C9297q qVar) {
        this.f35903e.m3068a(GrpcUtil.f38059b);
        this.f35903e.m3067a((C9260k0.AbstractC9266f<C9260k0.AbstractC9266f<Long>>) GrpcUtil.f38059b, (C9260k0.AbstractC9266f<Long>) Long.valueOf(Math.max(0L, qVar.m2978a(TimeUnit.NANOSECONDS))));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2535a(C9306s sVar) {
        mo2461e().m2937a(sVar);
    }

    @Override // p530d.p531a.p532v0.C9548y0.AbstractC9552d
    /* renamed from: a */
    public final void mo2496a(AbstractC9333b2 b2Var, boolean z, boolean z2, int i) {
        C4933n.m24790a(b2Var != null || z, "null frame before EOS");
        mo2459f().mo2447a(b2Var, z, z2, i);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2534a(C9449o0 o0Var) {
        o0Var.m2718a("remote_addr", mo2466b().m3155a(C9558w.f36461a));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2531a(Status status) {
        C4933n.m24790a(!status.m602f(), "Should not cancel with OK status");
        mo2459f().mo2446a(status);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2530a(ClientStreamListener clientStreamListener) {
        mo2461e().m2929a(clientStreamListener);
        if (!this.f35902d) {
            mo2459f().mo2448a(this.f35903e, null);
            this.f35903e = null;
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public final void mo2527a(boolean z) {
        mo2461e().m2927c(z);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: b */
    public void mo2526b(int i) {
        mo2461e().m2895e(i);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: c */
    public void mo2523c(int i) {
        this.f35900b.mo2501c(i);
    }

    @Override // p530d.p531a.p532v0.AbstractC9338d
    /* renamed from: d */
    public final AbstractC9376i0 mo2909d() {
        return this.f35900b;
    }

    @Override // p530d.p531a.p532v0.AbstractC9338d
    /* renamed from: e */
    public abstract AbstractC9321c mo2461e();

    /* renamed from: f */
    public abstract AbstractC9320b mo2459f();

    /* renamed from: g */
    public C9325a2 m2942g() {
        return this.f35899a;
    }

    /* renamed from: h */
    public final boolean m2941h() {
        return this.f35901c;
    }
}
