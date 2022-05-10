package io.grpc.internal;

import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.Context;
import io.grpc.InternalChannelz;
import io.grpc.InternalChannelz$ChannelTrace$Event;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.AutoConfiguredLoadBalancerFactory;
import java.lang.Thread;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4938q;
import p530d.p531a.AbstractC9216b;
import p530d.p531a.AbstractC9225e;
import p530d.p531a.AbstractC9227f;
import p530d.p531a.AbstractC9229f0;
import p530d.p531a.AbstractC9242g;
import p530d.p531a.AbstractC9251i0;
import p530d.p531a.AbstractC9252j;
import p530d.p531a.AbstractC9271l0;
import p530d.p531a.AbstractC9301q0;
import p530d.p531a.AbstractC9618y;
import p530d.p531a.C9210a;
import p530d.p531a.C9222d;
import p530d.p531a.C9248i;
import p530d.p531a.C9260k0;
import p530d.p531a.C9285m;
import p530d.p531a.C9287n;
import p530d.p531a.C9288n0;
import p530d.p531a.C9306s;
import p530d.p531a.C9314u;
import p530d.p531a.C9625z;
import p530d.p531a.ExecutorC9310t0;
import p530d.p531a.p532v0.AbstractC9329b;
import p530d.p531a.p532v0.AbstractC9332b1;
import p530d.p531a.p532v0.AbstractC9343e;
import p530d.p531a.p532v0.AbstractC9374i;
import p530d.p531a.p532v0.AbstractC9404m1;
import p530d.p531a.p532v0.AbstractC9445n0;
import p530d.p531a.p532v0.AbstractC9448o;
import p530d.p531a.p532v0.AbstractC9451p;
import p530d.p531a.p532v0.AbstractC9477q;
import p530d.p531a.p532v0.AbstractC9543x0;
import p530d.p531a.p532v0.AbstractC9545x1;
import p530d.p531a.p532v0.C9336c1;
import p530d.p531a.p532v0.C9367g1;
import p530d.p531a.p532v0.C9379j0;
import p530d.p531a.p532v0.C9384k;
import p530d.p531a.p532v0.C9387k0;
import p530d.p531a.p532v0.C9390l;
import p530d.p531a.p532v0.C9395l1;
import p530d.p531a.p532v0.C9399m;
import p530d.p531a.p532v0.C9433n;
import p530d.p531a.p532v0.C9446n1;
import p530d.p531a.p532v0.C9453p0;
import p530d.p531a.p532v0.C9481q1;
import p530d.p531a.p532v0.C9501t;
import p530d.p531a.p532v0.C9512w;
import p530d.p531a.p532v0.C9519w0;
import p530d.p531a.p532v0.RunnableC9494s0;
/* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl.class */
public final class ManagedChannelImpl extends AbstractC9251i0 implements AbstractC9618y<Object> {

    /* renamed from: g0 */
    public static final Logger f38107g0 = Logger.getLogger(ManagedChannelImpl.class.getName());

    /* renamed from: h0 */
    public static final Pattern f38108h0 = Pattern.compile("[a-zA-Z][a-zA-Z0-9+.-]*:/.*");

    /* renamed from: i0 */
    public static final Status f38109i0 = Status.f37996n.m609b("Channel shutdownNow invoked");

    /* renamed from: j0 */
    public static final Status f38110j0 = Status.f37996n.m609b("Channel shutdown invoked");

    /* renamed from: k0 */
    public static final Status f38111k0 = Status.f37996n.m609b("Subchannel shutdown invoked");

    /* renamed from: l0 */
    public static final C10356p f38112l0 = new C10356p(Collections.emptyMap(), C9519w0.m2542e());

    /* renamed from: A */
    public C10348k f38113A;

    /* renamed from: B */
    public volatile AbstractC9229f0.AbstractC9240i f38114B;

    /* renamed from: C */
    public boolean f38115C;

    /* renamed from: F */
    public final C9512w f38118F;

    /* renamed from: I */
    public boolean f38121I;

    /* renamed from: J */
    public volatile boolean f38122J;

    /* renamed from: K */
    public volatile boolean f38123K;

    /* renamed from: M */
    public final C9390l.AbstractC9392b f38125M;

    /* renamed from: N */
    public final C9390l f38126N;

    /* renamed from: O */
    public final ChannelTracer f38127O;

    /* renamed from: P */
    public final ChannelLogger f38128P;

    /* renamed from: Q */
    public final InternalChannelz f38129Q;

    /* renamed from: S */
    public C10356p f38131S;

    /* renamed from: T */
    public final C10356p f38132T;

    /* renamed from: V */
    public final boolean f38134V;

    /* renamed from: X */
    public final long f38136X;

    /* renamed from: Y */
    public final long f38137Y;

    /* renamed from: Z */
    public final boolean f38138Z;

    /* renamed from: a */
    public final C9625z f38139a;

    /* renamed from: b */
    public final String f38141b;

    /* renamed from: c */
    public final AbstractC9271l0.AbstractC9276d f38143c;

    /* renamed from: c0 */
    public ExecutorC9310t0.C9313c f38144c0;

    /* renamed from: d */
    public final AbstractC9271l0.C9273b f38145d;

    /* renamed from: d0 */
    public AbstractC9374i f38146d0;

    /* renamed from: e */
    public final AutoConfiguredLoadBalancerFactory f38147e;

    /* renamed from: f */
    public final AbstractC9477q f38149f;

    /* renamed from: f0 */
    public final C9395l1 f38150f0;

    /* renamed from: g */
    public final ScheduledExecutorServiceC10354n f38151g;

    /* renamed from: h */
    public final Executor f38152h;

    /* renamed from: i */
    public final AbstractC9332b1<? extends Executor> f38153i;

    /* renamed from: j */
    public final C10345h f38154j;

    /* renamed from: k */
    public final C10345h f38155k;

    /* renamed from: l */
    public final AbstractC9545x1 f38156l;

    /* renamed from: m */
    public final int f38157m;

    /* renamed from: o */
    public boolean f38159o;

    /* renamed from: p */
    public final C9306s f38160p;

    /* renamed from: q */
    public final C9285m f38161q;

    /* renamed from: r */
    public final AbstractC4941s<C4938q> f38162r;

    /* renamed from: s */
    public final long f38163s;

    /* renamed from: u */
    public final C9481q1 f38165u;

    /* renamed from: v */
    public final AbstractC9374i.AbstractC9375a f38166v;

    /* renamed from: w */
    public final AbstractC9225e f38167w;

    /* renamed from: x */
    public final String f38168x;

    /* renamed from: y */
    public AbstractC9271l0 f38169y;

    /* renamed from: z */
    public boolean f38170z;

    /* renamed from: n */
    public final ExecutorC9310t0 f38158n = new ExecutorC9310t0(new C10336a());

    /* renamed from: t */
    public final C9501t f38164t = new C9501t();

    /* renamed from: D */
    public final Set<C9453p0> f38116D = new HashSet(16, 0.75f);

    /* renamed from: E */
    public final Set<C9336c1> f38117E = new HashSet(1, 0.75f);

    /* renamed from: G */
    public final C10363r f38119G = new C10363r(this, null);

    /* renamed from: H */
    public final AtomicBoolean f38120H = new AtomicBoolean(false);

    /* renamed from: L */
    public final CountDownLatch f38124L = new CountDownLatch(1);

    /* renamed from: R */
    public ResolutionState f38130R = ResolutionState.NO_RESOLUTION;

    /* renamed from: U */
    public boolean f38133U = false;

    /* renamed from: W */
    public final AbstractC9404m1.C9421q f38135W = new AbstractC9404m1.C9421q();

    /* renamed from: a0 */
    public final AbstractC9543x0.AbstractC9544a f38140a0 = new C10344g(this, null);

    /* renamed from: b0 */
    public final AbstractC9445n0<Object> f38142b0 = new C10346i(this, null);

    /* renamed from: e0 */
    public final C9433n.AbstractC9443f f38148e0 = new C10340e(this, null);

    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$ResolutionState.class */
    public enum ResolutionState {
        NO_RESOLUTION,
        SUCCESS,
        ERROR
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$a.class */
    public class C10336a implements Thread.UncaughtExceptionHandler {
        public C10336a() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            Logger logger = ManagedChannelImpl.f38107g0;
            Level level = Level.SEVERE;
            logger.log(level, "[" + ManagedChannelImpl.this.mo424b() + "] Uncaught exception in the SynchronizationContext. Panic!", th);
            ManagedChannelImpl.this.m426a(th);
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$b.class */
    public final class C10337b implements C9390l.AbstractC9392b {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9545x1 f38172a;

        public C10337b(ManagedChannelImpl managedChannelImpl, AbstractC9545x1 x1Var) {
            this.f38172a = x1Var;
        }

        @Override // p530d.p531a.p532v0.C9390l.AbstractC9392b
        /* renamed from: a */
        public C9390l mo386a() {
            return new C9390l(this.f38172a);
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$c.class */
    public final class C10338c extends AbstractC9229f0.AbstractC9240i {

        /* renamed from: a */
        public final AbstractC9229f0.C9235e f38173a;

        /* renamed from: b */
        public final /* synthetic */ Throwable f38174b;

        public C10338c(ManagedChannelImpl managedChannelImpl, Throwable th) {
            this.f38174b = th;
            this.f38173a = AbstractC9229f0.C9235e.m3107a(Status.f37995m.m609b("Panic! This is a bug!").m612a(this.f38174b));
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9240i
        /* renamed from: a */
        public AbstractC9229f0.C9235e mo385a(AbstractC9229f0.AbstractC9236f fVar) {
            return this.f38173a;
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24821a((Class<?>) C10338c.class);
            a.m24813a("panicPickResult", this.f38173a);
            return a.toString();
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$d */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$d.class */
    public class ExecutorC10339d implements Executor {
        public ExecutorC10339d() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ManagedChannelImpl.this.f38155k.m375a().execute(runnable);
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$e */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$e.class */
    public final class C10340e implements C9433n.AbstractC9443f {

        /* renamed from: io.grpc.internal.ManagedChannelImpl$e$a */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$e$a.class */
        public final class RunnableC10341a implements Runnable {
            public RunnableC10341a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ManagedChannelImpl.this.m416e();
            }
        }

        /* renamed from: io.grpc.internal.ManagedChannelImpl$e$b */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$e$b.class */
        public final class C10342b extends AbstractC9404m1<ReqT> {

            /* renamed from: A */
            public final /* synthetic */ MethodDescriptor f38178A;

            /* renamed from: B */
            public final /* synthetic */ C9222d f38179B;

            /* renamed from: C */
            public final /* synthetic */ Context f38180C;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10342b(MethodDescriptor methodDescriptor, C9260k0 k0Var, C9222d dVar, AbstractC9404m1.C9432x xVar, Context context) {
                super(methodDescriptor, k0Var, ManagedChannelImpl.this.f38135W, ManagedChannelImpl.this.f38136X, ManagedChannelImpl.this.f38137Y, ManagedChannelImpl.this.m441a(dVar), ManagedChannelImpl.this.f38149f.mo311T1(), (C9446n1.AbstractC9447a) dVar.m3137a(C9481q1.f36298d), (C9387k0.AbstractC9388a) dVar.m3137a(C9481q1.f36299e), xVar);
                this.f38178A = methodDescriptor;
                this.f38179B = dVar;
                this.f38180C = context;
            }

            @Override // p530d.p531a.p532v0.AbstractC9404m1
            /* renamed from: a */
            public AbstractC9448o mo382a(AbstractC9252j.AbstractC9253a aVar, C9260k0 k0Var) {
                C9222d a = this.f38179B.m3135a(aVar);
                AbstractC9451p a2 = C10340e.this.mo384a(new C9367g1(this.f38178A, k0Var, a));
                Context a3 = this.f38180C.mo678a();
                try {
                    return a2.mo520a(this.f38178A, k0Var, a);
                } finally {
                    this.f38180C.mo677a(a3);
                }
            }

            @Override // p530d.p531a.p532v0.AbstractC9404m1
            /* renamed from: d */
            public void mo381d() {
                ManagedChannelImpl.this.f38119G.m342b(this);
            }

            @Override // p530d.p531a.p532v0.AbstractC9404m1
            /* renamed from: e */
            public Status mo380e() {
                return ManagedChannelImpl.this.f38119G.m343a(this);
            }
        }

        public C10340e() {
        }

        public /* synthetic */ C10340e(ManagedChannelImpl managedChannelImpl, C10336a aVar) {
            this();
        }

        @Override // p530d.p531a.p532v0.C9433n.AbstractC9443f
        /* renamed from: a */
        public <ReqT> AbstractC9448o mo383a(MethodDescriptor<ReqT, ?> methodDescriptor, C9222d dVar, C9260k0 k0Var, Context context) {
            C4933n.m24775b(ManagedChannelImpl.this.f38138Z, "retry should be enabled");
            return new C10342b(methodDescriptor, k0Var, dVar, ManagedChannelImpl.this.f38131S.f38209b.m2545b(), context);
        }

        @Override // p530d.p531a.p532v0.C9433n.AbstractC9443f
        /* renamed from: a */
        public AbstractC9451p mo384a(AbstractC9229f0.AbstractC9236f fVar) {
            AbstractC9229f0.AbstractC9240i iVar = ManagedChannelImpl.this.f38114B;
            if (ManagedChannelImpl.this.f38120H.get()) {
                return ManagedChannelImpl.this.f38118F;
            }
            if (iVar == null) {
                ManagedChannelImpl.this.f38158n.execute(new RunnableC10341a());
                return ManagedChannelImpl.this.f38118F;
            }
            AbstractC9451p a = GrpcUtil.m533a(iVar.mo385a(fVar), fVar.mo2877a().m3124i());
            return a != null ? a : ManagedChannelImpl.this.f38118F;
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$f */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$f.class */
    public class RunnableC10343f implements Runnable {
        public RunnableC10343f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ManagedChannelImpl.this.f38144c0 = null;
            ManagedChannelImpl.this.m406j();
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$g */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$g.class */
    public final class C10344g implements AbstractC9543x0.AbstractC9544a {
        public C10344g() {
        }

        public /* synthetic */ C10344g(ManagedChannelImpl managedChannelImpl, C10336a aVar) {
            this();
        }

        @Override // p530d.p531a.p532v0.AbstractC9543x0.AbstractC9544a
        /* renamed from: a */
        public void mo379a() {
        }

        @Override // p530d.p531a.p532v0.AbstractC9543x0.AbstractC9544a
        /* renamed from: a */
        public void mo378a(Status status) {
            C4933n.m24775b(ManagedChannelImpl.this.f38120H.get(), "Channel must have been shut down");
        }

        @Override // p530d.p531a.p532v0.AbstractC9543x0.AbstractC9544a
        /* renamed from: a */
        public void mo377a(boolean z) {
            ManagedChannelImpl managedChannelImpl = ManagedChannelImpl.this;
            managedChannelImpl.f38142b0.m2721a(managedChannelImpl.f38118F, z);
        }

        @Override // p530d.p531a.p532v0.AbstractC9543x0.AbstractC9544a
        /* renamed from: b */
        public void mo376b() {
            C4933n.m24775b(ManagedChannelImpl.this.f38120H.get(), "Channel must have been shut down");
            ManagedChannelImpl.this.f38122J = true;
            ManagedChannelImpl.this.m421b(false);
            ManagedChannelImpl.this.m412g();
            ManagedChannelImpl.this.m410h();
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$h */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$h.class */
    public static final class C10345h {

        /* renamed from: a */
        public final AbstractC9332b1<? extends Executor> f38184a;

        /* renamed from: b */
        public Executor f38185b;

        public C10345h(AbstractC9332b1<? extends Executor> b1Var) {
            C4933n.m24794a(b1Var, "executorPool");
            this.f38184a = b1Var;
        }

        /* renamed from: a */
        public Executor m375a() {
            Executor executor;
            synchronized (this) {
                if (this.f38185b == null) {
                    Object a = this.f38184a.mo2584a();
                    C4933n.m24793a(a, "%s.getObject()", this.f38185b);
                    this.f38185b = (Executor) a;
                }
                executor = this.f38185b;
            }
            return executor;
        }

        /* renamed from: b */
        public void m374b() {
            synchronized (this) {
                if (this.f38185b != null) {
                    this.f38185b = (Executor) this.f38184a.mo2582a(this.f38185b);
                }
            }
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$i */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$i.class */
    public final class C10346i extends AbstractC9445n0<Object> {
        public C10346i() {
        }

        public /* synthetic */ C10346i(ManagedChannelImpl managedChannelImpl, C10336a aVar) {
            this();
        }

        @Override // p530d.p531a.p532v0.AbstractC9445n0
        /* renamed from: a */
        public void mo373a() {
            ManagedChannelImpl.this.m416e();
        }

        @Override // p530d.p531a.p532v0.AbstractC9445n0
        /* renamed from: b */
        public void mo372b() {
            if (!ManagedChannelImpl.this.f38120H.get()) {
                ManagedChannelImpl.this.m404k();
            }
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$j */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$j.class */
    public class RunnableC10347j implements Runnable {
        public RunnableC10347j() {
        }

        public /* synthetic */ RunnableC10347j(ManagedChannelImpl managedChannelImpl, C10336a aVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            ManagedChannelImpl.this.m418d();
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$k */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$k.class */
    public class C10348k extends AbstractC9229f0.AbstractC9234d {

        /* renamed from: a */
        public AutoConfiguredLoadBalancerFactory.C10308b f38188a;

        /* renamed from: io.grpc.internal.ManagedChannelImpl$k$a */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$k$a.class */
        public final class RunnableC10349a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC9229f0.AbstractC9240i f38190a;

            /* renamed from: b */
            public final /* synthetic */ ConnectivityState f38191b;

            public RunnableC10349a(AbstractC9229f0.AbstractC9240i iVar, ConnectivityState connectivityState) {
                this.f38190a = iVar;
                this.f38191b = connectivityState;
            }

            @Override // java.lang.Runnable
            public void run() {
                C10348k kVar = C10348k.this;
                if (kVar == ManagedChannelImpl.this.f38113A) {
                    ManagedChannelImpl.this.m440a(this.f38190a);
                    if (this.f38191b != ConnectivityState.SHUTDOWN) {
                        ManagedChannelImpl.this.f38128P.mo687a(ChannelLogger.ChannelLogLevel.INFO, "Entering {0} state with picker: {1}", this.f38191b, this.f38190a);
                        ManagedChannelImpl.this.f38164t.m2586a(this.f38191b);
                    }
                }
            }
        }

        public C10348k() {
        }

        public /* synthetic */ C10348k(ManagedChannelImpl managedChannelImpl, C10336a aVar) {
            this();
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9234d
        /* renamed from: a */
        public AbstractC9343e mo370a(AbstractC9229f0.C9231b bVar) {
            ManagedChannelImpl.this.f38158n.m2949b();
            return m367b(bVar);
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9234d
        /* renamed from: a */
        public ChannelLogger mo371a() {
            return ManagedChannelImpl.this.f38128P;
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9234d
        /* renamed from: a */
        public void mo369a(ConnectivityState connectivityState, AbstractC9229f0.AbstractC9240i iVar) {
            C4933n.m24794a(connectivityState, "newState");
            C4933n.m24794a(iVar, "newPicker");
            ManagedChannelImpl.this.m428a("updateBalancingState()");
            ManagedChannelImpl.this.f38158n.execute(new RunnableC10349a(iVar, connectivityState));
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9234d
        /* renamed from: b */
        public ExecutorC9310t0 mo368b() {
            return ManagedChannelImpl.this.f38158n;
        }

        /* renamed from: b */
        public final C10357q m367b(AbstractC9229f0.C9231b bVar) {
            C4933n.m24775b(!ManagedChannelImpl.this.f38123K, "Channel is terminated");
            return new C10357q(bVar, this);
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$l */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$l.class */
    public final class C10350l extends AbstractC9271l0.AbstractC9280f {

        /* renamed from: a */
        public final C10348k f38193a;

        /* renamed from: b */
        public final AbstractC9271l0 f38194b;

        /* renamed from: io.grpc.internal.ManagedChannelImpl$l$a */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$l$a.class */
        public final class RunnableC10351a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Status f38196a;

            public RunnableC10351a(Status status) {
                this.f38196a = status;
            }

            @Override // java.lang.Runnable
            public void run() {
                C10350l.this.m361b(this.f38196a);
            }
        }

        /* renamed from: io.grpc.internal.ManagedChannelImpl$l$b */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$l$b.class */
        public final class RunnableC10352b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC9271l0.C9282h f38198a;

            public RunnableC10352b(AbstractC9271l0.C9282h hVar) {
                this.f38198a = hVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                Status status;
                C10356p pVar;
                C9210a aVar;
                List<C9314u> a = this.f38198a.m3007a();
                C9210a b = this.f38198a.m3006b();
                ManagedChannelImpl.this.f38128P.mo687a(ChannelLogger.ChannelLogLevel.DEBUG, "Resolved address: {0}, config={1}", a, b);
                ResolutionState resolutionState = ManagedChannelImpl.this.f38130R;
                if (ManagedChannelImpl.this.f38130R != ResolutionState.SUCCESS) {
                    ManagedChannelImpl.this.f38128P.mo687a(ChannelLogger.ChannelLogLevel.INFO, "Address resolved: {0}", a);
                    ManagedChannelImpl.this.f38130R = ResolutionState.SUCCESS;
                }
                C10356p pVar2 = null;
                pVar2 = null;
                ManagedChannelImpl.this.f38146d0 = null;
                AbstractC9271l0.C9275c c = this.f38198a.m3005c();
                if (c != null) {
                    Map map = (Map) this.f38198a.m3006b().m3155a(C9379j0.f36041a);
                    if (c.m3018a() != null) {
                        pVar2 = new C10356p(map, (C9519w0) c.m3018a());
                    }
                    status = c.m3015b();
                } else {
                    status = null;
                }
                if (!ManagedChannelImpl.this.f38134V) {
                    if (pVar2 != null) {
                        ManagedChannelImpl.this.f38128P.mo688a(ChannelLogger.ChannelLogLevel.INFO, "Service config from name resolver discarded by channel settings");
                    }
                    pVar = ManagedChannelImpl.this.f38132T == null ? ManagedChannelImpl.f38112l0 : ManagedChannelImpl.this.f38132T;
                    C9210a.C9212b a2 = b.m3156a();
                    a2.m3150a(C9379j0.f36041a);
                    aVar = a2.m3152a();
                } else {
                    if (pVar2 != null) {
                        pVar = pVar2;
                    } else if (ManagedChannelImpl.this.f38132T != null) {
                        pVar = ManagedChannelImpl.this.f38132T;
                        ManagedChannelImpl.this.f38128P.mo688a(ChannelLogger.ChannelLogLevel.INFO, "Received no service config, using default service config");
                    } else if (status == null) {
                        pVar = ManagedChannelImpl.f38112l0;
                    } else if (!ManagedChannelImpl.this.f38133U) {
                        ManagedChannelImpl.this.f38128P.mo688a(ChannelLogger.ChannelLogLevel.INFO, "Fallback to error due to invalid first service config without default config");
                        C10350l.this.mo364a(c.m3015b());
                        return;
                    } else {
                        pVar = ManagedChannelImpl.this.f38131S;
                    }
                    if (!pVar.equals(ManagedChannelImpl.this.f38131S)) {
                        ManagedChannelImpl.this.f38128P.mo687a(ChannelLogger.ChannelLogLevel.INFO, "Service config changed{0}", pVar == ManagedChannelImpl.f38112l0 ? " to empty" : "");
                        ManagedChannelImpl.this.f38131S = pVar;
                    }
                    try {
                        ManagedChannelImpl.this.m414f();
                        aVar = b;
                    } catch (RuntimeException e) {
                        Logger logger = ManagedChannelImpl.f38107g0;
                        Level level = Level.WARNING;
                        logger.log(level, "[" + ManagedChannelImpl.this.mo424b() + "] Unexpected exception from parsing service config", (Throwable) e);
                        aVar = b;
                    }
                }
                C10350l lVar = C10350l.this;
                if (lVar.f38193a == ManagedChannelImpl.this.f38113A) {
                    C9210a aVar2 = aVar;
                    if (pVar != pVar2) {
                        C9210a.C9212b a3 = aVar.m3156a();
                        a3.m3149a(C9379j0.f36041a, pVar.f38208a);
                        aVar2 = a3.m3152a();
                    }
                    AutoConfiguredLoadBalancerFactory.C10308b bVar = C10350l.this.f38193a.f38188a;
                    AbstractC9229f0.C9237g.C9238a d = AbstractC9229f0.C9237g.m3098d();
                    d.m3094a(a);
                    d.m3096a(aVar2);
                    d.m3095a(pVar.f38209b.m2547a());
                    Status a4 = bVar.m587a(d.m3097a());
                    if (a4.m602f()) {
                        return;
                    }
                    if (!a.isEmpty() || resolutionState != ResolutionState.SUCCESS) {
                        C10350l lVar2 = C10350l.this;
                        lVar2.m361b(a4.m613a(C10350l.this.f38194b + " was used"));
                        return;
                    }
                    C10350l.this.m366a();
                }
            }
        }

        public C10350l(C10348k kVar, AbstractC9271l0 l0Var) {
            C4933n.m24794a(kVar, "helperImpl");
            this.f38193a = kVar;
            C4933n.m24794a(l0Var, "resolver");
            this.f38194b = l0Var;
        }

        /* renamed from: a */
        public final void m366a() {
            if (ManagedChannelImpl.this.f38144c0 == null || !ManagedChannelImpl.this.f38144c0.m2946b()) {
                if (ManagedChannelImpl.this.f38146d0 == null) {
                    ManagedChannelImpl managedChannelImpl = ManagedChannelImpl.this;
                    managedChannelImpl.f38146d0 = managedChannelImpl.f38166v.get();
                }
                long a = ManagedChannelImpl.this.f38146d0.mo2490a();
                ManagedChannelImpl.this.f38128P.mo687a(ChannelLogger.ChannelLogLevel.DEBUG, "Scheduling DNS resolution backoff for {0} ns", Long.valueOf(a));
                ManagedChannelImpl managedChannelImpl2 = ManagedChannelImpl.this;
                managedChannelImpl2.f38144c0 = managedChannelImpl2.f38158n.m2950a(new RunnableC10343f(), a, TimeUnit.NANOSECONDS, ManagedChannelImpl.this.f38149f.mo311T1());
            }
        }

        @Override // p530d.p531a.AbstractC9271l0.AbstractC9280f
        /* renamed from: a */
        public void mo365a(AbstractC9271l0.C9282h hVar) {
            ManagedChannelImpl.this.f38158n.execute(new RunnableC10352b(hVar));
        }

        @Override // p530d.p531a.AbstractC9271l0.AbstractC9280f, p530d.p531a.AbstractC9271l0.AbstractC9281g
        /* renamed from: a */
        public void mo364a(Status status) {
            C4933n.m24790a(!status.m602f(), "the error status must not be OK");
            ManagedChannelImpl.this.f38158n.execute(new RunnableC10351a(status));
        }

        /* renamed from: b */
        public final void m361b(Status status) {
            ManagedChannelImpl.f38107g0.log(Level.WARNING, "[{0}] Failed to resolve name. status={1}", new Object[]{ManagedChannelImpl.this.mo424b(), status});
            if (ManagedChannelImpl.this.f38130R != ResolutionState.ERROR) {
                ManagedChannelImpl.this.f38128P.mo687a(ChannelLogger.ChannelLogLevel.WARNING, "Failed to resolve name: {0}", status);
                ManagedChannelImpl.this.f38130R = ResolutionState.ERROR;
            }
            if (this.f38193a == ManagedChannelImpl.this.f38113A) {
                this.f38193a.f38188a.m586a(status);
                m366a();
            }
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$m */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$m.class */
    public class C10353m extends AbstractC9225e {

        /* renamed from: a */
        public final String f38200a;

        public C10353m(String str) {
            C4933n.m24794a(str, "authority");
            this.f38200a = str;
        }

        public /* synthetic */ C10353m(ManagedChannelImpl managedChannelImpl, String str, C10336a aVar) {
            this(str);
        }

        @Override // p530d.p531a.AbstractC9225e
        /* renamed from: a */
        public <ReqT, RespT> AbstractC9227f<ReqT, RespT> mo359a(MethodDescriptor<ReqT, RespT> methodDescriptor, C9222d dVar) {
            C9433n nVar = new C9433n(methodDescriptor, ManagedChannelImpl.this.m441a(dVar), dVar, ManagedChannelImpl.this.f38148e0, ManagedChannelImpl.this.f38123K ? null : ManagedChannelImpl.this.f38149f.mo311T1(), ManagedChannelImpl.this.f38126N, ManagedChannelImpl.this.f38138Z);
            nVar.m2744a(ManagedChannelImpl.this.f38159o);
            nVar.m2753a(ManagedChannelImpl.this.f38160p);
            nVar.m2757a(ManagedChannelImpl.this.f38161q);
            return nVar;
        }

        @Override // p530d.p531a.AbstractC9225e
        /* renamed from: a */
        public String mo360a() {
            return this.f38200a;
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$n */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$n.class */
    public static final class ScheduledExecutorServiceC10354n implements ScheduledExecutorService {

        /* renamed from: a */
        public final ScheduledExecutorService f38202a;

        public ScheduledExecutorServiceC10354n(ScheduledExecutorService scheduledExecutorService) {
            C4933n.m24794a(scheduledExecutorService, "delegate");
            this.f38202a = scheduledExecutorService;
        }

        public /* synthetic */ ScheduledExecutorServiceC10354n(ScheduledExecutorService scheduledExecutorService, C10336a aVar) {
            this(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f38202a.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f38202a.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
            return this.f38202a.invokeAll(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f38202a.invokeAll(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
            return (T) this.f38202a.invokeAny(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (T) this.f38202a.invokeAny(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return this.f38202a.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return this.f38202a.isTerminated();
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.f38202a.schedule(runnable, j, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            return this.f38202a.schedule(callable, j, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            return this.f38202a.scheduleAtFixedRate(runnable, j, j2, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            return this.f38202a.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            throw new UnsupportedOperationException("Restricted: shutdown() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            throw new UnsupportedOperationException("Restricted: shutdownNow() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public Future<?> submit(Runnable runnable) {
            return this.f38202a.submit(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Runnable runnable, T t) {
            return this.f38202a.submit(runnable, t);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Callable<T> callable) {
            return this.f38202a.submit(callable);
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$o */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$o.class */
    public static final class C10355o extends AbstractC9271l0.AbstractC9284i {

        /* renamed from: a */
        public final boolean f38203a;

        /* renamed from: b */
        public final int f38204b;

        /* renamed from: c */
        public final int f38205c;

        /* renamed from: d */
        public final AutoConfiguredLoadBalancerFactory f38206d;

        /* renamed from: e */
        public final ChannelLogger f38207e;

        public C10355o(boolean z, int i, int i2, AutoConfiguredLoadBalancerFactory autoConfiguredLoadBalancerFactory, ChannelLogger channelLogger) {
            this.f38203a = z;
            this.f38204b = i;
            this.f38205c = i2;
            C4933n.m24794a(autoConfiguredLoadBalancerFactory, "autoLoadBalancerFactory");
            this.f38206d = autoConfiguredLoadBalancerFactory;
            C4933n.m24794a(channelLogger, "channelLogger");
            this.f38207e = channelLogger;
        }

        @Override // p530d.p531a.AbstractC9271l0.AbstractC9284i
        /* renamed from: a */
        public AbstractC9271l0.C9275c mo358a(Map<String, ?> map) {
            Object obj;
            try {
                AbstractC9271l0.C9275c a = this.f38206d.m590a(map, this.f38207e);
                if (a == null) {
                    obj = null;
                } else if (a.m3015b() != null) {
                    return AbstractC9271l0.C9275c.m3017a(a.m3015b());
                } else {
                    obj = a.m3018a();
                }
                return AbstractC9271l0.C9275c.m3016a(C9519w0.m2546a(map, this.f38203a, this.f38204b, this.f38205c, obj));
            } catch (RuntimeException e) {
                return AbstractC9271l0.C9275c.m3017a(Status.f37990h.m609b("failed to parse service config").m612a(e));
            }
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$p */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$p.class */
    public static final class C10356p {

        /* renamed from: a */
        public Map<String, ?> f38208a;

        /* renamed from: b */
        public C9519w0 f38209b;

        public C10356p(Map<String, ?> map, C9519w0 w0Var) {
            C4933n.m24794a(map, "rawServiceConfig");
            this.f38208a = map;
            C4933n.m24794a(w0Var, "managedChannelServiceConfig");
            this.f38209b = w0Var;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C10356p.class != obj.getClass()) {
                return false;
            }
            C10356p pVar = (C10356p) obj;
            if (!C4928k.m24808a(this.f38208a, pVar.f38208a) || !C4928k.m24808a(this.f38209b, pVar.f38209b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f38208a, this.f38209b);
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("rawServiceConfig", this.f38208a);
            a.m24813a("managedChannelServiceConfig", this.f38209b);
            return a.toString();
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$q */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$q.class */
    public final class C10357q extends AbstractC9343e {

        /* renamed from: a */
        public final AbstractC9229f0.C9231b f38210a;

        /* renamed from: b */
        public final C9625z f38211b;

        /* renamed from: c */
        public final C9399m f38212c;

        /* renamed from: d */
        public final ChannelTracer f38213d;

        /* renamed from: e */
        public C9453p0 f38214e;

        /* renamed from: f */
        public boolean f38215f;

        /* renamed from: g */
        public boolean f38216g;

        /* renamed from: h */
        public ExecutorC9310t0.C9313c f38217h;

        /* renamed from: io.grpc.internal.ManagedChannelImpl$q$a */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$q$a.class */
        public class RunnableC10358a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC9229f0.AbstractC9241j f38219a;

            public RunnableC10358a(C10357q qVar, AbstractC9229f0.AbstractC9241j jVar) {
                this.f38219a = jVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f38219a.mo2143a(C9287n.m2996a(ConnectivityState.SHUTDOWN));
            }
        }

        /* renamed from: io.grpc.internal.ManagedChannelImpl$q$b */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$q$b.class */
        public final class C10359b extends C9453p0.AbstractC9465j {

            /* renamed from: a */
            public final /* synthetic */ AbstractC9229f0.AbstractC9241j f38220a;

            public C10359b(AbstractC9229f0.AbstractC9241j jVar) {
                this.f38220a = jVar;
            }

            @Override // p530d.p531a.p532v0.C9453p0.AbstractC9465j
            /* renamed from: a */
            public void mo347a(C9453p0 p0Var) {
                ManagedChannelImpl.this.f38142b0.m2721a(p0Var, true);
            }

            @Override // p530d.p531a.p532v0.C9453p0.AbstractC9465j
            /* renamed from: a */
            public void mo346a(C9453p0 p0Var, C9287n nVar) {
                ManagedChannelImpl.this.m439a(nVar);
                C4933n.m24775b(this.f38220a != null, "listener is null");
                this.f38220a.mo2143a(nVar);
            }

            @Override // p530d.p531a.p532v0.C9453p0.AbstractC9465j
            /* renamed from: b */
            public void mo345b(C9453p0 p0Var) {
                ManagedChannelImpl.this.f38142b0.m2721a(p0Var, false);
            }

            @Override // p530d.p531a.p532v0.C9453p0.AbstractC9465j
            /* renamed from: c */
            public void mo344c(C9453p0 p0Var) {
                ManagedChannelImpl.this.f38116D.remove(p0Var);
                ManagedChannelImpl.this.f38129Q.m649f(p0Var);
                ManagedChannelImpl.this.m410h();
            }
        }

        /* renamed from: io.grpc.internal.ManagedChannelImpl$q$c */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$q$c.class */
        public final class RunnableC10360c implements Runnable {
            public RunnableC10360c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C10357q.this.f38214e.m2703a(ManagedChannelImpl.f38111k0);
            }
        }

        /* renamed from: io.grpc.internal.ManagedChannelImpl$q$d */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$q$d.class */
        public class RunnableC10361d implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C9453p0 f38223a;

            public RunnableC10361d(C9453p0 p0Var) {
                this.f38223a = p0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                ManagedChannelImpl.this.f38129Q.m652c(this.f38223a);
                ManagedChannelImpl.this.f38116D.add(this.f38223a);
            }
        }

        /* renamed from: io.grpc.internal.ManagedChannelImpl$q$e */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$q$e.class */
        public class RunnableC10362e implements Runnable {
            public RunnableC10362e() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C10357q.this.m348g();
            }
        }

        public C10357q(AbstractC9229f0.C9231b bVar, C10348k kVar) {
            C4933n.m24794a(bVar, "args");
            this.f38210a = bVar;
            C4933n.m24794a(kVar, "helper");
            this.f38211b = C9625z.m2158a("Subchannel", ManagedChannelImpl.this.mo360a());
            C9625z zVar = this.f38211b;
            int i = ManagedChannelImpl.this.f38157m;
            long a = ManagedChannelImpl.this.f38156l.mo2517a();
            ChannelTracer channelTracer = new ChannelTracer(zVar, i, a, "Subchannel for " + bVar.m3117a());
            this.f38213d = channelTracer;
            this.f38212c = new C9399m(channelTracer, ManagedChannelImpl.this.f38156l);
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9239h
        /* renamed from: a */
        public void mo357a(AbstractC9229f0.AbstractC9241j jVar) {
            ManagedChannelImpl.this.f38158n.m2949b();
            m353b(jVar);
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9239h
        /* renamed from: a */
        public void mo355a(List<C9314u> list) {
            ManagedChannelImpl.this.f38158n.m2949b();
            this.f38214e.m2702a(list);
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9239h
        /* renamed from: b */
        public List<C9314u> mo354b() {
            ManagedChannelImpl.this.m428a("Subchannel.getAllAddresses()");
            C4933n.m24775b(this.f38215f, "not started");
            return this.f38214e.m2693d();
        }

        /* renamed from: b */
        public final void m353b(AbstractC9229f0.AbstractC9241j jVar) {
            C4933n.m24775b(!this.f38215f, "already started");
            C4933n.m24775b(!this.f38216g, "already shutdown");
            this.f38215f = true;
            if (ManagedChannelImpl.this.f38122J) {
                ManagedChannelImpl.this.f38158n.execute(new RunnableC10358a(this, jVar));
                return;
            }
            C9453p0 p0Var = new C9453p0(this.f38210a.m3117a(), ManagedChannelImpl.this.mo360a(), ManagedChannelImpl.this.f38168x, ManagedChannelImpl.this.f38166v, ManagedChannelImpl.this.f38149f, ManagedChannelImpl.this.f38149f.mo311T1(), ManagedChannelImpl.this.f38162r, ManagedChannelImpl.this.f38158n, new C10359b(jVar), ManagedChannelImpl.this.f38129Q, ManagedChannelImpl.this.f38125M.mo386a(), this.f38213d, this.f38211b, this.f38212c);
            ChannelTracer channelTracer = ManagedChannelImpl.this.f38127O;
            InternalChannelz$ChannelTrace$Event.C10296a aVar = new InternalChannelz$ChannelTrace$Event.C10296a();
            aVar.m644a("Child Subchannel started");
            aVar.m645a(InternalChannelz$ChannelTrace$Event.Severity.CT_INFO);
            aVar.m647a(ManagedChannelImpl.this.f38156l.mo2517a());
            aVar.m646a(p0Var);
            channelTracer.m579a(aVar.m648a());
            this.f38214e = p0Var;
            ManagedChannelImpl.this.f38158n.execute(new RunnableC10361d(p0Var));
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9239h
        /* renamed from: c */
        public C9210a mo352c() {
            return this.f38210a.m3116b();
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9239h
        /* renamed from: d */
        public Object mo351d() {
            C4933n.m24775b(this.f38215f, "Subchannel is not started");
            return this.f38214e;
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9239h
        /* renamed from: e */
        public void mo350e() {
            ManagedChannelImpl.this.m428a("Subchannel.requestConnection()");
            C4933n.m24775b(this.f38215f, "not started");
            this.f38214e.mo2485a();
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9239h
        /* renamed from: f */
        public void mo349f() {
            ManagedChannelImpl.this.m428a("Subchannel.shutdown()");
            ManagedChannelImpl.this.f38158n.execute(new RunnableC10362e());
        }

        /* renamed from: g */
        public final void m348g() {
            ExecutorC9310t0.C9313c cVar;
            ManagedChannelImpl.this.f38158n.m2949b();
            if (this.f38214e == null) {
                this.f38216g = true;
                return;
            }
            if (!this.f38216g) {
                this.f38216g = true;
            } else if (ManagedChannelImpl.this.f38122J && (cVar = this.f38217h) != null) {
                cVar.m2947a();
                this.f38217h = null;
            } else {
                return;
            }
            if (!ManagedChannelImpl.this.f38122J) {
                this.f38217h = ManagedChannelImpl.this.f38158n.m2950a(new RunnableC9494s0(new RunnableC10360c()), 5L, TimeUnit.SECONDS, ManagedChannelImpl.this.f38149f.mo311T1());
            } else {
                this.f38214e.m2703a(ManagedChannelImpl.f38110j0);
            }
        }

        public String toString() {
            return this.f38211b.toString();
        }
    }

    /* renamed from: io.grpc.internal.ManagedChannelImpl$r */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ManagedChannelImpl$r.class */
    public final class C10363r {

        /* renamed from: a */
        public final Object f38226a;

        /* renamed from: b */
        public Collection<AbstractC9448o> f38227b;

        /* renamed from: c */
        public Status f38228c;

        public C10363r() {
            this.f38226a = new Object();
            this.f38227b = new HashSet();
        }

        public /* synthetic */ C10363r(ManagedChannelImpl managedChannelImpl, C10336a aVar) {
            this();
        }

        /* renamed from: a */
        public Status m343a(AbstractC9404m1<?> m1Var) {
            synchronized (this.f38226a) {
                if (this.f38228c != null) {
                    return this.f38228c;
                }
                this.f38227b.add(m1Var);
                return null;
            }
        }

        /* renamed from: b */
        public void m342b(AbstractC9404m1<?> m1Var) {
            Status status;
            synchronized (this.f38226a) {
                this.f38227b.remove(m1Var);
                if (this.f38227b.isEmpty()) {
                    status = this.f38228c;
                    this.f38227b = new HashSet();
                } else {
                    status = null;
                }
            }
            if (status != null) {
                ManagedChannelImpl.this.f38118F.mo2413a(status);
            }
        }
    }

    public ManagedChannelImpl(AbstractC9329b<?> bVar, AbstractC9477q qVar, AbstractC9374i.AbstractC9375a aVar, AbstractC9332b1<? extends Executor> b1Var, AbstractC4941s<C4938q> sVar, List<AbstractC9242g> list, AbstractC9545x1 x1Var) {
        boolean z = true;
        this.f38131S = f38112l0;
        String str = bVar.f35953f;
        C4933n.m24794a(str, "target");
        String str2 = str;
        this.f38141b = str2;
        this.f38139a = C9625z.m2158a("Channel", str2);
        C4933n.m24794a(x1Var, "timeProvider");
        this.f38156l = x1Var;
        AbstractC9332b1<? extends Executor> b1Var2 = bVar.f35948a;
        C4933n.m24794a(b1Var2, "executorPool");
        AbstractC9332b1<? extends Executor> b1Var3 = b1Var2;
        this.f38153i = b1Var3;
        Object a = b1Var3.mo2584a();
        C4933n.m24794a(a, "executor");
        Executor executor = (Executor) a;
        this.f38152h = executor;
        C9384k kVar = new C9384k(qVar, executor);
        this.f38149f = kVar;
        this.f38151g = new ScheduledExecutorServiceC10354n(kVar.mo311T1(), null);
        this.f38157m = bVar.f35968u;
        C9625z zVar = this.f38139a;
        int i = bVar.f35968u;
        long a2 = x1Var.mo2517a();
        ChannelTracer channelTracer = new ChannelTracer(zVar, i, a2, "Channel for '" + this.f38141b + "'");
        this.f38127O = channelTracer;
        this.f38128P = new C9399m(channelTracer, x1Var);
        this.f38143c = bVar.m2914e();
        AbstractC9301q0 q0Var = bVar.f35942A;
        q0Var = q0Var == null ? GrpcUtil.f38068k : q0Var;
        this.f38138Z = bVar.f35965r && !bVar.f35966s;
        this.f38147e = new AutoConfiguredLoadBalancerFactory(bVar.f35956i);
        AbstractC9332b1<? extends Executor> b1Var4 = bVar.f35949b;
        C4933n.m24794a(b1Var4, "offloadExecutorPool");
        this.f38155k = new C10345h(b1Var4);
        C9288n0 n0Var = bVar.f35951d;
        C10355o oVar = new C10355o(this.f38138Z, bVar.f35961n, bVar.f35962o, this.f38147e, this.f38128P);
        AbstractC9271l0.C9273b.C9274a f = AbstractC9271l0.C9273b.m3027f();
        f.m3025a(bVar.mo317c());
        f.m3023a(q0Var);
        f.m3022a(this.f38158n);
        f.m3019a((ScheduledExecutorService) this.f38151g);
        f.m3024a(oVar);
        f.m3021a(this.f38128P);
        f.m3020a(new ExecutorC10339d());
        AbstractC9271l0.C9273b a3 = f.m3026a();
        this.f38145d = a3;
        this.f38169y = m427a(this.f38141b, this.f38143c, a3);
        C4933n.m24794a(b1Var, "balancerRpcExecutorPool");
        this.f38154j = new C10345h(b1Var);
        C9512w wVar = new C9512w(this.f38152h, this.f38158n);
        this.f38118F = wVar;
        wVar.mo2426a(this.f38140a0);
        this.f38166v = aVar;
        this.f38165u = new C9481q1(this.f38138Z);
        Map<String, ?> map = bVar.f35969v;
        if (map != null) {
            AbstractC9271l0.C9275c a4 = oVar.mo358a(map);
            C4933n.m24772b(a4.m3015b() == null, "Default config is invalid: %s", a4.m3015b());
            C10356p pVar = new C10356p(bVar.f35969v, (C9519w0) a4.m3018a());
            this.f38132T = pVar;
            this.f38131S = pVar;
        } else {
            this.f38132T = null;
        }
        this.f38134V = bVar.f35970w;
        AbstractC9225e a5 = C9248i.m3084a(new C10353m(this, this.f38169y.mo572a(), null), this.f38165u);
        AbstractC9216b bVar2 = bVar.f35973z;
        this.f38167w = C9248i.m3085a(bVar2 != null ? bVar2.m3143a(a5) : a5, list);
        C4933n.m24794a(sVar, "stopwatchSupplier");
        this.f38162r = sVar;
        long j = bVar.f35960m;
        if (j == -1) {
            this.f38163s = j;
        } else {
            if (j < AbstractC9329b.f35938I) {
                z = false;
            }
            C4933n.m24785a(z, "invalid idleTimeoutMillis %s", bVar.f35960m);
            this.f38163s = bVar.f35960m;
        }
        this.f38150f0 = new C9395l1(new RunnableC10347j(this, null), this.f38158n, this.f38149f.mo311T1(), sVar.get());
        this.f38159o = bVar.f35957j;
        C9306s sVar2 = bVar.f35958k;
        C4933n.m24794a(sVar2, "decompressorRegistry");
        this.f38160p = sVar2;
        C9285m mVar = bVar.f35959l;
        C4933n.m24794a(mVar, "compressorRegistry");
        this.f38161q = mVar;
        this.f38168x = bVar.f35954g;
        this.f38137Y = bVar.f35963p;
        this.f38136X = bVar.f35964q;
        C10337b bVar3 = new C10337b(this, x1Var);
        this.f38125M = bVar3;
        this.f38126N = bVar3.mo386a();
        InternalChannelz internalChannelz = bVar.f35967t;
        C4933n.m24795a(internalChannelz);
        InternalChannelz internalChannelz2 = internalChannelz;
        this.f38129Q = internalChannelz2;
        internalChannelz2.m654b(this);
        if (!this.f38134V) {
            if (this.f38132T != null) {
                this.f38128P.mo688a(ChannelLogger.ChannelLogLevel.INFO, "Service config look-up disabled, using default service config");
            }
            m414f();
        }
    }

    /* renamed from: a */
    public static AbstractC9271l0 m427a(String str, AbstractC9271l0.AbstractC9276d dVar, AbstractC9271l0.C9273b bVar) {
        URI uri;
        AbstractC9271l0 a;
        StringBuilder sb = new StringBuilder();
        try {
            uri = new URI(str);
        } catch (URISyntaxException e) {
            sb.append(e.getMessage());
            uri = null;
        }
        if (uri != null && (a = dVar.mo2869a(uri, bVar)) != null) {
            return a;
        }
        String str2 = "";
        if (!f38108h0.matcher(str).matches()) {
            try {
                AbstractC9271l0 a2 = dVar.mo2869a(new URI(dVar.mo2870a(), "", "/" + str, null), bVar);
                if (a2 != null) {
                    return a2;
                }
            } catch (URISyntaxException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        if (sb.length() > 0) {
            str2 = " (" + ((Object) sb) + ")";
        }
        throw new IllegalArgumentException(String.format("cannot find a NameResolver for %s%s", str, str2));
    }

    @Override // p530d.p531a.AbstractC9225e
    /* renamed from: a */
    public <ReqT, RespT> AbstractC9227f<ReqT, RespT> mo359a(MethodDescriptor<ReqT, RespT> methodDescriptor, C9222d dVar) {
        return this.f38167w.mo359a(methodDescriptor, dVar);
    }

    @Override // p530d.p531a.AbstractC9225e
    /* renamed from: a */
    public String mo360a() {
        return this.f38167w.mo360a();
    }

    /* renamed from: a */
    public final Executor m441a(C9222d dVar) {
        Executor e = dVar.m3128e();
        Executor executor = e;
        if (e == null) {
            executor = this.f38152h;
        }
        return executor;
    }

    /* renamed from: a */
    public final void m440a(AbstractC9229f0.AbstractC9240i iVar) {
        this.f38114B = iVar;
        this.f38118F.m2560a(iVar);
    }

    /* renamed from: a */
    public final void m439a(C9287n nVar) {
        if (nVar.m2997a() == ConnectivityState.TRANSIENT_FAILURE || nVar.m2997a() == ConnectivityState.IDLE) {
            m408i();
        }
    }

    /* renamed from: a */
    public final void m428a(String str) {
        try {
            this.f38158n.m2949b();
        } catch (IllegalStateException e) {
            Logger logger = f38107g0;
            Level level = Level.WARNING;
            logger.log(level, str + " should be called from SynchronizationContext. This warning will become an exception in a future release. See https://github.com/grpc/grpc-java/issues/5015 for more details", (Throwable) e);
        }
    }

    /* renamed from: a */
    public void m426a(Throwable th) {
        if (!this.f38115C) {
            this.f38115C = true;
            m425a(true);
            m421b(false);
            m440a(new C10338c(this, th));
            this.f38128P.mo688a(ChannelLogger.ChannelLogLevel.ERROR, "PANIC! Entering TRANSIENT_FAILURE");
            this.f38164t.m2586a(ConnectivityState.TRANSIENT_FAILURE);
        }
    }

    /* renamed from: a */
    public final void m425a(boolean z) {
        this.f38150f0.m2845a(z);
    }

    @Override // p530d.p531a.AbstractC9224d0
    /* renamed from: b */
    public C9625z mo424b() {
        return this.f38139a;
    }

    /* renamed from: b */
    public final void m421b(boolean z) {
        this.f38158n.m2949b();
        if (z) {
            C4933n.m24775b(this.f38170z, "nameResolver is not started");
            C4933n.m24775b(this.f38113A != null, "lbHelper is null");
        }
        if (this.f38169y != null) {
            m420c();
            this.f38169y.mo556c();
            this.f38170z = false;
            if (z) {
                this.f38169y = m427a(this.f38141b, this.f38143c, this.f38145d);
            } else {
                this.f38169y = null;
            }
        }
        C10348k kVar = this.f38113A;
        if (kVar != null) {
            kVar.f38188a.m585b();
            this.f38113A = null;
        }
        this.f38114B = null;
    }

    /* renamed from: c */
    public final void m420c() {
        this.f38158n.m2949b();
        ExecutorC9310t0.C9313c cVar = this.f38144c0;
        if (cVar != null) {
            cVar.m2947a();
            this.f38144c0 = null;
            this.f38146d0 = null;
        }
    }

    /* renamed from: d */
    public final void m418d() {
        m421b(true);
        this.f38118F.m2560a((AbstractC9229f0.AbstractC9240i) null);
        this.f38128P.mo688a(ChannelLogger.ChannelLogLevel.INFO, "Entering IDLE state");
        this.f38164t.m2586a(ConnectivityState.IDLE);
        if (this.f38142b0.m2720c()) {
            m416e();
        }
    }

    /* renamed from: e */
    public void m416e() {
        this.f38158n.m2949b();
        if (!this.f38120H.get() && !this.f38115C) {
            if (this.f38142b0.m2720c()) {
                m425a(false);
            } else {
                m404k();
            }
            if (this.f38113A == null) {
                this.f38128P.mo688a(ChannelLogger.ChannelLogLevel.INFO, "Exiting idle mode");
                C10348k kVar = new C10348k(this, null);
                kVar.f38188a = this.f38147e.m594a(kVar);
                this.f38113A = kVar;
                this.f38169y.mo571a((AbstractC9271l0.AbstractC9280f) new C10350l(kVar, this.f38169y));
                this.f38170z = true;
            }
        }
    }

    /* renamed from: f */
    public final void m414f() {
        this.f38133U = true;
        this.f38165u.m2646a(this.f38131S.f38209b);
    }

    /* renamed from: g */
    public final void m412g() {
        if (this.f38121I) {
            for (C9453p0 p0Var : this.f38116D) {
                p0Var.m2698b(f38109i0);
            }
            for (C9336c1 c1Var : this.f38117E) {
                c1Var.m2911c().m2698b(f38109i0);
            }
        }
    }

    /* renamed from: h */
    public final void m410h() {
        if (!this.f38123K && this.f38120H.get() && this.f38116D.isEmpty() && this.f38117E.isEmpty()) {
            this.f38128P.mo688a(ChannelLogger.ChannelLogLevel.INFO, "Terminated");
            this.f38129Q.m650e(this);
            this.f38153i.mo2582a(this.f38152h);
            this.f38154j.m374b();
            this.f38155k.m374b();
            this.f38149f.close();
            this.f38123K = true;
            this.f38124L.countDown();
        }
    }

    /* renamed from: i */
    public final void m408i() {
        this.f38158n.m2949b();
        m420c();
        m406j();
    }

    /* renamed from: j */
    public final void m406j() {
        this.f38158n.m2949b();
        if (this.f38170z) {
            this.f38169y.mo559b();
        }
    }

    /* renamed from: k */
    public final void m404k() {
        long j = this.f38163s;
        if (j != -1) {
            this.f38150f0.m2849a(j, TimeUnit.MILLISECONDS);
        }
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24814a("logId", this.f38139a.m2161a());
        a.m24813a("target", this.f38141b);
        return a.toString();
    }
}
