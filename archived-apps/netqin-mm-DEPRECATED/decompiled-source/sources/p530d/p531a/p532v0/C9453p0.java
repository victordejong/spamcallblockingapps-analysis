package p530d.p531a.p532v0;

import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.HttpConnectProxiedSocketAddress;
import io.grpc.InternalChannelz;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ChannelTracer;
import io.grpc.internal.ClientStreamListener;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4938q;
import p530d.p531a.AbstractC9618y;
import p530d.p531a.C9210a;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.C9287n;
import p530d.p531a.C9314u;
import p530d.p531a.C9625z;
import p530d.p531a.ExecutorC9310t0;
import p530d.p531a.p532v0.AbstractC9374i;
import p530d.p531a.p532v0.AbstractC9477q;
import p530d.p531a.p532v0.AbstractC9543x0;
/* renamed from: d.a.v0.p0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/p0.class */
public final class C9453p0 implements AbstractC9618y<Object>, AbstractC9557z1 {

    /* renamed from: a */
    public final C9625z f36234a;

    /* renamed from: b */
    public final String f36235b;

    /* renamed from: c */
    public final String f36236c;

    /* renamed from: d */
    public final AbstractC9374i.AbstractC9375a f36237d;

    /* renamed from: e */
    public final AbstractC9465j f36238e;

    /* renamed from: f */
    public final AbstractC9477q f36239f;

    /* renamed from: g */
    public final ScheduledExecutorService f36240g;

    /* renamed from: h */
    public final InternalChannelz f36241h;

    /* renamed from: i */
    public final C9390l f36242i;

    /* renamed from: j */
    public final ChannelLogger f36243j;

    /* renamed from: k */
    public final ExecutorC9310t0 f36244k;

    /* renamed from: l */
    public final C9466k f36245l;

    /* renamed from: m */
    public volatile List<C9314u> f36246m;

    /* renamed from: n */
    public AbstractC9374i f36247n;

    /* renamed from: o */
    public final C4938q f36248o;

    /* renamed from: p */
    public ExecutorC9310t0.C9313c f36249p;

    /* renamed from: s */
    public AbstractC9493s f36252s;

    /* renamed from: t */
    public volatile AbstractC9543x0 f36253t;

    /* renamed from: v */
    public Status f36255v;

    /* renamed from: q */
    public final Collection<AbstractC9493s> f36250q = new ArrayList();

    /* renamed from: r */
    public final AbstractC9445n0<AbstractC9493s> f36251r = new C9454a();

    /* renamed from: u */
    public volatile C9287n f36254u = C9287n.m2996a(ConnectivityState.IDLE);

    /* renamed from: d.a.v0.p0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$a.class */
    public class C9454a extends AbstractC9445n0<AbstractC9493s> {
        public C9454a() {
        }

        @Override // p530d.p531a.p532v0.AbstractC9445n0
        /* renamed from: a */
        public void mo373a() {
            C9453p0.this.f36238e.mo347a(C9453p0.this);
        }

        @Override // p530d.p531a.p532v0.AbstractC9445n0
        /* renamed from: b */
        public void mo372b() {
            C9453p0.this.f36238e.mo345b(C9453p0.this);
        }
    }

    /* renamed from: d.a.v0.p0$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$b.class */
    public class RunnableC9455b implements Runnable {
        public RunnableC9455b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9453p0.this.f36249p = null;
            C9453p0.this.f36243j.mo688a(ChannelLogger.ChannelLogLevel.INFO, "CONNECTING after backoff");
            C9453p0.this.m2704a(ConnectivityState.CONNECTING);
            C9453p0.this.m2688f();
        }
    }

    /* renamed from: d.a.v0.p0$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$c.class */
    public class RunnableC9456c implements Runnable {
        public RunnableC9456c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C9453p0.this.f36254u.m2997a() == ConnectivityState.IDLE) {
                C9453p0.this.f36243j.mo688a(ChannelLogger.ChannelLogLevel.INFO, "CONNECTING as requested");
                C9453p0.this.m2704a(ConnectivityState.CONNECTING);
                C9453p0.this.m2688f();
            }
        }
    }

    /* renamed from: d.a.v0.p0$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$d.class */
    public class RunnableC9457d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f36259a;

        public RunnableC9457d(List list) {
            this.f36259a = list;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0055, code lost:
            if (r4.f36260b.f36254u.m2997a() == io.grpc.ConnectivityState.CONNECTING) goto L_0x0058;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r4 = this;
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r2 = r4
                java.util.List r2 = r2.f36259a
                r1.<init>(r2)
                java.util.List r0 = java.util.Collections.unmodifiableList(r0)
                r5 = r0
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.v0.p0$k r0 = p530d.p531a.p532v0.C9453p0.m2679n(r0)
                java.net.SocketAddress r0 = r0.m2674a()
                r6 = r0
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.v0.p0$k r0 = p530d.p531a.p532v0.C9453p0.m2679n(r0)
                r1 = r5
                r0.m2672a(r1)
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                r1 = r5
                java.util.List r0 = p530d.p531a.p532v0.C9453p0.m2706a(r0, r1)
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.n r0 = p530d.p531a.p532v0.C9453p0.m2700b(r0)
                io.grpc.ConnectivityState r0 = r0.m2997a()
                r5 = r0
                io.grpc.ConnectivityState r0 = io.grpc.ConnectivityState.READY
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = r5
                r1 = r7
                if (r0 == r1) goto L_0x0058
                r0 = r8
                r5 = r0
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.n r0 = p530d.p531a.p532v0.C9453p0.m2700b(r0)
                io.grpc.ConnectivityState r0 = r0.m2997a()
                io.grpc.ConnectivityState r1 = io.grpc.ConnectivityState.CONNECTING
                if (r0 != r1) goto L_0x00c3
            L_0x0058:
                r0 = r8
                r5 = r0
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.v0.p0$k r0 = p530d.p531a.p532v0.C9453p0.m2679n(r0)
                r1 = r6
                boolean r0 = r0.m2673a(r1)
                if (r0 != 0) goto L_0x00c3
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.n r0 = p530d.p531a.p532v0.C9453p0.m2700b(r0)
                io.grpc.ConnectivityState r0 = r0.m2997a()
                io.grpc.ConnectivityState r1 = io.grpc.ConnectivityState.READY
                if (r0 != r1) goto L_0x00a1
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.v0.x0 r0 = p530d.p531a.p532v0.C9453p0.m2696c(r0)
                r5 = r0
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                r1 = 0
                d.a.v0.x0 r0 = p530d.p531a.p532v0.C9453p0.m2709a(r0, r1)
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.v0.p0$k r0 = p530d.p531a.p532v0.C9453p0.m2679n(r0)
                r0.m2667f()
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                io.grpc.ConnectivityState r1 = io.grpc.ConnectivityState.IDLE
                p530d.p531a.p532v0.C9453p0.m2708a(r0, r1)
                goto L_0x00c3
            L_0x00a1:
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.v0.s r0 = p530d.p531a.p532v0.C9453p0.m2692d(r0)
                r5 = r0
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                r1 = 0
                d.a.v0.s r0 = p530d.p531a.p532v0.C9453p0.m2711a(r0, r1)
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                d.a.v0.p0$k r0 = p530d.p531a.p532v0.C9453p0.m2679n(r0)
                r0.m2667f()
                r0 = r4
                d.a.v0.p0 r0 = p530d.p531a.p532v0.C9453p0.this
                p530d.p531a.p532v0.C9453p0.m2681l(r0)
            L_0x00c3:
                r0 = r5
                if (r0 == 0) goto L_0x00d5
                r0 = r5
                io.grpc.Status r1 = io.grpc.Status.f37996n
                java.lang.String r2 = "InternalSubchannel closed transport due to address change"
                io.grpc.Status r1 = r1.m609b(r2)
                r0.mo2413a(r1)
            L_0x00d5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.C9453p0.RunnableC9457d.run():void");
        }
    }

    /* renamed from: d.a.v0.p0$e */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$e.class */
    public class RunnableC9458e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Status f36261a;

        public RunnableC9458e(Status status) {
            this.f36261a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C9453p0.this.f36254u.m2997a() != ConnectivityState.SHUTDOWN) {
                C9453p0.this.f36255v = this.f36261a;
                AbstractC9543x0 x0Var = C9453p0.this.f36253t;
                AbstractC9493s sVar = C9453p0.this.f36252s;
                C9453p0.this.f36253t = null;
                C9453p0.this.f36252s = null;
                C9453p0.this.m2704a(ConnectivityState.SHUTDOWN);
                C9453p0.this.f36245l.m2667f();
                if (C9453p0.this.f36250q.isEmpty()) {
                    C9453p0.this.m2690e();
                }
                C9453p0.this.m2697c();
                if (x0Var != null) {
                    x0Var.mo2413a(this.f36261a);
                }
                if (sVar != null) {
                    sVar.mo2413a(this.f36261a);
                }
            }
        }
    }

    /* renamed from: d.a.v0.p0$f */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$f.class */
    public class RunnableC9459f implements Runnable {
        public RunnableC9459f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9453p0.this.f36243j.mo688a(ChannelLogger.ChannelLogLevel.INFO, "Terminated");
            C9453p0.this.f36238e.mo344c(C9453p0.this);
        }
    }

    /* renamed from: d.a.v0.p0$g */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$g.class */
    public class RunnableC9460g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9493s f36264a;

        /* renamed from: b */
        public final /* synthetic */ boolean f36265b;

        public RunnableC9460g(AbstractC9493s sVar, boolean z) {
            this.f36264a = sVar;
            this.f36265b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9453p0.this.f36251r.m2721a(this.f36264a, this.f36265b);
        }
    }

    /* renamed from: d.a.v0.p0$h */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$h.class */
    public class RunnableC9461h implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Status f36267a;

        public RunnableC9461h(Status status) {
            this.f36267a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (AbstractC9543x0 x0Var : new ArrayList(C9453p0.this.f36250q)) {
                x0Var.mo2402b(this.f36267a);
            }
        }
    }

    /* renamed from: d.a.v0.p0$i */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$i.class */
    public static final class C9462i extends AbstractC9344e0 {

        /* renamed from: a */
        public final AbstractC9493s f36269a;

        /* renamed from: b */
        public final C9390l f36270b;

        /* renamed from: d.a.v0.p0$i$a */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$i$a.class */
        public class C9463a extends AbstractC9335c0 {

            /* renamed from: a */
            public final /* synthetic */ AbstractC9448o f36271a;

            /* renamed from: d.a.v0.p0$i$a$a */
            /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$i$a$a.class */
            public class C9464a extends AbstractC9340d0 {

                /* renamed from: a */
                public final /* synthetic */ ClientStreamListener f36273a;

                public C9464a(ClientStreamListener clientStreamListener) {
                    this.f36273a = clientStreamListener;
                }

                @Override // p530d.p531a.p532v0.AbstractC9340d0, io.grpc.internal.ClientStreamListener
                /* renamed from: a */
                public void mo574a(Status status, C9260k0 k0Var) {
                    C9462i.this.f36270b.m2859a(status.m602f());
                    super.mo574a(status, k0Var);
                }

                @Override // p530d.p531a.p532v0.AbstractC9340d0, io.grpc.internal.ClientStreamListener
                /* renamed from: a */
                public void mo573a(Status status, ClientStreamListener.RpcProgress rpcProgress, C9260k0 k0Var) {
                    C9462i.this.f36270b.m2859a(status.m602f());
                    super.mo573a(status, rpcProgress, k0Var);
                }

                @Override // p530d.p531a.p532v0.AbstractC9340d0
                /* renamed from: b */
                public ClientStreamListener mo2675b() {
                    return this.f36273a;
                }
            }

            public C9463a(AbstractC9448o oVar) {
                this.f36271a = oVar;
            }

            @Override // p530d.p531a.p532v0.AbstractC9335c0, p530d.p531a.p532v0.AbstractC9448o
            /* renamed from: a */
            public void mo2530a(ClientStreamListener clientStreamListener) {
                C9462i.this.f36270b.m2860a();
                super.mo2530a(new C9464a(clientStreamListener));
            }

            @Override // p530d.p531a.p532v0.AbstractC9335c0
            /* renamed from: c */
            public AbstractC9448o mo2676c() {
                return this.f36271a;
            }
        }

        public C9462i(AbstractC9493s sVar, C9390l lVar) {
            this.f36269a = sVar;
            this.f36270b = lVar;
        }

        public /* synthetic */ C9462i(AbstractC9493s sVar, C9390l lVar, C9454a aVar) {
            this(sVar, lVar);
        }

        @Override // p530d.p531a.p532v0.AbstractC9344e0, p530d.p531a.p532v0.AbstractC9451p
        /* renamed from: a */
        public AbstractC9448o mo520a(MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9222d dVar) {
            return new C9463a(super.mo520a(methodDescriptor, k0Var, dVar));
        }

        @Override // p530d.p531a.p532v0.AbstractC9344e0
        /* renamed from: a */
        public AbstractC9493s mo2678a() {
            return this.f36269a;
        }
    }

    /* renamed from: d.a.v0.p0$j */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$j.class */
    public static abstract class AbstractC9465j {
        /* renamed from: a */
        public abstract void mo347a(C9453p0 p0Var);

        /* renamed from: a */
        public abstract void mo346a(C9453p0 p0Var, C9287n nVar);

        /* renamed from: b */
        public abstract void mo345b(C9453p0 p0Var);

        /* renamed from: c */
        public abstract void mo344c(C9453p0 p0Var);
    }

    /* renamed from: d.a.v0.p0$k */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$k.class */
    public static final class C9466k {

        /* renamed from: a */
        public List<C9314u> f36275a;

        /* renamed from: b */
        public int f36276b;

        /* renamed from: c */
        public int f36277c;

        public C9466k(List<C9314u> list) {
            this.f36275a = list;
        }

        /* renamed from: a */
        public SocketAddress m2674a() {
            return this.f36275a.get(this.f36276b).m2945a().get(this.f36277c);
        }

        /* renamed from: a */
        public void m2672a(List<C9314u> list) {
            this.f36275a = list;
            m2667f();
        }

        /* renamed from: a */
        public boolean m2673a(SocketAddress socketAddress) {
            for (int i = 0; i < this.f36275a.size(); i++) {
                int indexOf = this.f36275a.get(i).m2945a().indexOf(socketAddress);
                if (indexOf != -1) {
                    this.f36276b = i;
                    this.f36277c = indexOf;
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public C9210a m2671b() {
            return this.f36275a.get(this.f36276b).m2944b();
        }

        /* renamed from: c */
        public void m2670c() {
            C9314u uVar = this.f36275a.get(this.f36276b);
            int i = this.f36277c + 1;
            this.f36277c = i;
            if (i >= uVar.m2945a().size()) {
                this.f36276b++;
                this.f36277c = 0;
            }
        }

        /* renamed from: d */
        public boolean m2669d() {
            return this.f36276b == 0 && this.f36277c == 0;
        }

        /* renamed from: e */
        public boolean m2668e() {
            return this.f36276b < this.f36275a.size();
        }

        /* renamed from: f */
        public void m2667f() {
            this.f36276b = 0;
            this.f36277c = 0;
        }
    }

    /* renamed from: d.a.v0.p0$l */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$l.class */
    public class C9467l implements AbstractC9543x0.AbstractC9544a {

        /* renamed from: a */
        public final AbstractC9493s f36278a;

        /* renamed from: b */
        public boolean f36279b = false;

        /* renamed from: d.a.v0.p0$l$a */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$l$a.class */
        public class RunnableC9468a implements Runnable {
            public RunnableC9468a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C9453p0.this.f36247n = null;
                if (C9453p0.this.f36255v != null) {
                    C4933n.m24775b(C9453p0.this.f36253t == null, "Unexpected non-null activeTransport");
                    C9467l lVar = C9467l.this;
                    lVar.f36278a.mo2413a(C9453p0.this.f36255v);
                    return;
                }
                AbstractC9493s sVar = C9453p0.this.f36252s;
                C9467l lVar2 = C9467l.this;
                AbstractC9493s sVar2 = lVar2.f36278a;
                if (sVar == sVar2) {
                    C9453p0.this.f36253t = sVar2;
                    C9453p0.this.f36252s = null;
                    C9453p0.this.m2704a(ConnectivityState.READY);
                }
            }
        }

        /* renamed from: d.a.v0.p0$l$b */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$l$b.class */
        public class RunnableC9469b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Status f36282a;

            public RunnableC9469b(Status status) {
                this.f36282a = status;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C9453p0.this.f36254u.m2997a() != ConnectivityState.SHUTDOWN) {
                    AbstractC9543x0 x0Var = C9453p0.this.f36253t;
                    C9467l lVar = C9467l.this;
                    if (x0Var == lVar.f36278a) {
                        C9453p0.this.f36253t = null;
                        C9453p0.this.f36245l.m2667f();
                        C9453p0.this.m2704a(ConnectivityState.IDLE);
                        return;
                    }
                    AbstractC9493s sVar = C9453p0.this.f36252s;
                    C9467l lVar2 = C9467l.this;
                    if (sVar == lVar2.f36278a) {
                        C4933n.m24772b(C9453p0.this.f36254u.m2997a() == ConnectivityState.CONNECTING, "Expected state is CONNECTING, actual state is %s", C9453p0.this.f36254u.m2997a());
                        C9453p0.this.f36245l.m2670c();
                        if (!C9453p0.this.f36245l.m2668e()) {
                            C9453p0.this.f36252s = null;
                            C9453p0.this.f36245l.m2667f();
                            C9453p0.this.m2691d(this.f36282a);
                            return;
                        }
                        C9453p0.this.m2688f();
                    }
                }
            }
        }

        /* renamed from: d.a.v0.p0$l$c */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$l$c.class */
        public class RunnableC9470c implements Runnable {
            public RunnableC9470c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C9453p0.this.f36250q.remove(C9467l.this.f36278a);
                if (C9453p0.this.f36254u.m2997a() == ConnectivityState.SHUTDOWN && C9453p0.this.f36250q.isEmpty()) {
                    C9453p0.this.m2690e();
                }
            }
        }

        public C9467l(AbstractC9493s sVar, SocketAddress socketAddress) {
            this.f36278a = sVar;
        }

        @Override // p530d.p531a.p532v0.AbstractC9543x0.AbstractC9544a
        /* renamed from: a */
        public void mo379a() {
            C9453p0.this.f36243j.mo688a(ChannelLogger.ChannelLogLevel.INFO, "READY");
            C9453p0.this.f36244k.execute(new RunnableC9468a());
        }

        @Override // p530d.p531a.p532v0.AbstractC9543x0.AbstractC9544a
        /* renamed from: a */
        public void mo378a(Status status) {
            C9453p0.this.f36243j.mo687a(ChannelLogger.ChannelLogLevel.INFO, "{0} SHUTDOWN with {1}", this.f36278a.mo424b(), C9453p0.this.m2694c(status));
            this.f36279b = true;
            C9453p0.this.f36244k.execute(new RunnableC9469b(status));
        }

        @Override // p530d.p531a.p532v0.AbstractC9543x0.AbstractC9544a
        /* renamed from: a */
        public void mo377a(boolean z) {
            C9453p0.this.m2705a(this.f36278a, z);
        }

        @Override // p530d.p531a.p532v0.AbstractC9543x0.AbstractC9544a
        /* renamed from: b */
        public void mo376b() {
            C4933n.m24775b(this.f36279b, "transportShutdown() must be called before transportTerminated().");
            C9453p0.this.f36243j.mo687a(ChannelLogger.ChannelLogLevel.INFO, "{0} Terminated", this.f36278a.mo424b());
            C9453p0.this.f36241h.m651d(this.f36278a);
            C9453p0.this.m2705a(this.f36278a, false);
            C9453p0.this.f36244k.execute(new RunnableC9470c());
        }
    }

    /* renamed from: d.a.v0.p0$m */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p0$m.class */
    public static final class C9471m extends ChannelLogger {

        /* renamed from: a */
        public C9625z f36285a;

        @Override // io.grpc.ChannelLogger
        /* renamed from: a */
        public void mo688a(ChannelLogger.ChannelLogLevel channelLogLevel, String str) {
            C9399m.m2839a(this.f36285a, channelLogLevel, str);
        }

        @Override // io.grpc.ChannelLogger
        /* renamed from: a */
        public void mo687a(ChannelLogger.ChannelLogLevel channelLogLevel, String str, Object... objArr) {
            C9399m.m2838a(this.f36285a, channelLogLevel, str, objArr);
        }
    }

    public C9453p0(List<C9314u> list, String str, String str2, AbstractC9374i.AbstractC9375a aVar, AbstractC9477q qVar, ScheduledExecutorService scheduledExecutorService, AbstractC4941s<C4938q> sVar, ExecutorC9310t0 t0Var, AbstractC9465j jVar, InternalChannelz internalChannelz, C9390l lVar, ChannelTracer channelTracer, C9625z zVar, ChannelLogger channelLogger) {
        C4933n.m24794a(list, "addressGroups");
        C4933n.m24790a(!list.isEmpty(), "addressGroups is empty");
        m2701a(list, "addressGroups contains null entry");
        List<C9314u> unmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.f36246m = unmodifiableList;
        this.f36245l = new C9466k(unmodifiableList);
        this.f36235b = str;
        this.f36236c = str2;
        this.f36237d = aVar;
        this.f36239f = qVar;
        this.f36240g = scheduledExecutorService;
        this.f36248o = sVar.get();
        this.f36244k = t0Var;
        this.f36238e = jVar;
        this.f36241h = internalChannelz;
        this.f36242i = lVar;
        C4933n.m24794a(channelTracer, "channelTracer");
        C4933n.m24794a(zVar, "logId");
        this.f36234a = zVar;
        C4933n.m24794a(channelLogger, "channelLogger");
        this.f36243j = channelLogger;
    }

    /* renamed from: a */
    public static void m2701a(List<?> list, String str) {
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            C4933n.m24794a(it.next(), str);
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9557z1
    /* renamed from: a */
    public AbstractC9451p mo2485a() {
        AbstractC9543x0 x0Var = this.f36253t;
        if (x0Var != null) {
            return x0Var;
        }
        this.f36244k.execute(new RunnableC9456c());
        return null;
    }

    /* renamed from: a */
    public final void m2715a(C9287n nVar) {
        this.f36244k.m2949b();
        if (this.f36254u.m2997a() != nVar.m2997a()) {
            boolean z = this.f36254u.m2997a() != ConnectivityState.SHUTDOWN;
            C4933n.m24775b(z, "Cannot transition out of SHUTDOWN to " + nVar);
            this.f36254u = nVar;
            this.f36238e.mo346a(this, nVar);
        }
    }

    /* renamed from: a */
    public final void m2705a(AbstractC9493s sVar, boolean z) {
        this.f36244k.execute(new RunnableC9460g(sVar, z));
    }

    /* renamed from: a */
    public final void m2704a(ConnectivityState connectivityState) {
        this.f36244k.m2949b();
        m2715a(C9287n.m2996a(connectivityState));
    }

    /* renamed from: a */
    public void m2703a(Status status) {
        this.f36244k.execute(new RunnableC9458e(status));
    }

    /* renamed from: a */
    public void m2702a(List<C9314u> list) {
        C4933n.m24794a(list, "newAddressGroups");
        m2701a(list, "newAddressGroups contains null entry");
        C4933n.m24790a(!list.isEmpty(), "newAddressGroups is empty");
        this.f36244k.execute(new RunnableC9457d(list));
    }

    @Override // p530d.p531a.AbstractC9224d0
    /* renamed from: b */
    public C9625z mo424b() {
        return this.f36234a;
    }

    /* renamed from: b */
    public void m2698b(Status status) {
        m2703a(status);
        this.f36244k.execute(new RunnableC9461h(status));
    }

    /* renamed from: c */
    public final String m2694c(Status status) {
        StringBuilder sb = new StringBuilder();
        sb.append(status.m604d());
        if (status.m603e() != null) {
            sb.append("(");
            sb.append(status.m603e());
            sb.append(")");
        }
        return sb.toString();
    }

    /* renamed from: c */
    public final void m2697c() {
        this.f36244k.m2949b();
        ExecutorC9310t0.C9313c cVar = this.f36249p;
        if (cVar != null) {
            cVar.m2947a();
            this.f36249p = null;
            this.f36247n = null;
        }
    }

    /* renamed from: d */
    public List<C9314u> m2693d() {
        return this.f36246m;
    }

    /* renamed from: d */
    public final void m2691d(Status status) {
        this.f36244k.m2949b();
        m2715a(C9287n.m2995a(status));
        if (this.f36247n == null) {
            this.f36247n = this.f36237d.get();
        }
        long a = this.f36247n.mo2490a() - this.f36248o.m24763a(TimeUnit.NANOSECONDS);
        boolean z = false;
        this.f36243j.mo687a(ChannelLogger.ChannelLogLevel.INFO, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns", m2694c(status), Long.valueOf(a));
        if (this.f36249p == null) {
            z = true;
        }
        C4933n.m24775b(z, "previous reconnectTask is not done");
        this.f36249p = this.f36244k.m2950a(new RunnableC9455b(), a, TimeUnit.NANOSECONDS, this.f36240g);
    }

    /* renamed from: e */
    public final void m2690e() {
        this.f36244k.execute(new RunnableC9459f());
    }

    /* renamed from: f */
    public final void m2688f() {
        HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress;
        this.f36244k.m2949b();
        C4933n.m24775b(this.f36249p == null, "Should have no reconnectTask scheduled");
        if (this.f36245l.m2669d()) {
            C4938q qVar = this.f36248o;
            qVar.m24762b();
            qVar.m24760c();
        }
        SocketAddress a = this.f36245l.m2674a();
        if (a instanceof HttpConnectProxiedSocketAddress) {
            httpConnectProxiedSocketAddress = (HttpConnectProxiedSocketAddress) a;
            a = httpConnectProxiedSocketAddress.getTargetAddress();
        } else {
            httpConnectProxiedSocketAddress = null;
        }
        C9210a b = this.f36245l.m2671b();
        String str = (String) b.m3155a(C9314u.f35891d);
        AbstractC9477q.C9478a aVar = new AbstractC9477q.C9478a();
        if (str == null) {
            str = this.f36235b;
        }
        aVar.m2657a(str);
        aVar.m2659a(b);
        aVar.m2655b(this.f36236c);
        aVar.m2658a(httpConnectProxiedSocketAddress);
        C9471m mVar = new C9471m();
        mVar.f36285a = mo424b();
        C9462i iVar = new C9462i(this.f36239f.mo310a(a, aVar, mVar), this.f36242i, null);
        mVar.f36285a = iVar.mo424b();
        this.f36241h.m657a((AbstractC9618y<Object>) iVar);
        this.f36252s = iVar;
        this.f36250q.add(iVar);
        Runnable a2 = iVar.mo2426a(new C9467l(iVar, a));
        if (a2 != null) {
            this.f36244k.m2948b(a2);
        }
        this.f36243j.mo687a(ChannelLogger.ChannelLogLevel.INFO, "Started transport {0}", mVar.f36285a);
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24814a("logId", this.f36234a.m2161a());
        a.m24813a("addressGroups", this.f36246m);
        return a.toString();
    }
}
