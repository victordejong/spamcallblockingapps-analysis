package io.grpc.okhttp;

import com.google.common.collect.RegularImmutableMap;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import io.grpc.ChannelLogger;
import io.grpc.internal.GrpcUtil;
import io.grpc.okhttp.internal.CipherSuite;
import io.grpc.okhttp.internal.Platform;
import io.grpc.okhttp.internal.TlsVersion;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.security.GeneralSecurityException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.p532v0.AbstractC9329b;
import p530d.p531a.p532v0.AbstractC9477q;
import p530d.p531a.p532v0.AbstractC9493s;
import p530d.p531a.p532v0.C9325a2;
import p530d.p531a.p532v0.C9363g;
import p530d.p531a.p532v0.C9495s1;
import p530d.p531a.p533w0.C9571f;
import p530d.p531a.p533w0.p534o.C9591a;
/* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/OkHttpChannelBuilder.class */
public class OkHttpChannelBuilder extends AbstractC9329b<OkHttpChannelBuilder> {

    /* renamed from: Y */
    public static final C9591a f38256Y;

    /* renamed from: Z */
    public static final C9495s1.AbstractC9499d<Executor> f38257Z = new C10368a();

    /* renamed from: M */
    public Executor f38258M;

    /* renamed from: N */
    public ScheduledExecutorService f38259N;

    /* renamed from: O */
    public SocketFactory f38260O;

    /* renamed from: P */
    public SSLSocketFactory f38261P;

    /* renamed from: Q */
    public HostnameVerifier f38262Q;

    /* renamed from: W */
    public boolean f38268W;

    /* renamed from: R */
    public C9591a f38263R = f38256Y;

    /* renamed from: S */
    public NegotiationType f38264S = NegotiationType.TLS;

    /* renamed from: T */
    public long f38265T = Long.MAX_VALUE;

    /* renamed from: U */
    public long f38266U = GrpcUtil.f38067j;

    /* renamed from: V */
    public int f38267V = RegularImmutableMap.SHORT_MASK;

    /* renamed from: X */
    public int f38269X = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;

    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/OkHttpChannelBuilder$NegotiationType.class */
    public enum NegotiationType {
        TLS,
        PLAINTEXT
    }

    /* renamed from: io.grpc.okhttp.OkHttpChannelBuilder$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/OkHttpChannelBuilder$a.class */
    public class C10368a implements C9495s1.AbstractC9499d<Executor> {
        @Override // p530d.p531a.p532v0.C9495s1.AbstractC9499d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Executor mo314a() {
            return Executors.newCachedThreadPool(GrpcUtil.m528a("grpc-okhttp-%d", true));
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo313a(Executor executor) {
            ((ExecutorService) executor).shutdown();
        }
    }

    /* renamed from: io.grpc.okhttp.OkHttpChannelBuilder$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/OkHttpChannelBuilder$b.class */
    public static /* synthetic */ class C10369b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38270a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f38271b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[NegotiationType.values().length];
            f38271b = iArr;
            try {
                iArr[NegotiationType.PLAINTEXT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38271b[NegotiationType.TLS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[io.grpc.okhttp.NegotiationType.values().length];
            f38270a = iArr2;
            try {
                iArr2[io.grpc.okhttp.NegotiationType.TLS.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f38270a[io.grpc.okhttp.NegotiationType.PLAINTEXT.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: io.grpc.okhttp.OkHttpChannelBuilder$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/OkHttpChannelBuilder$c.class */
    public static final class C10370c implements AbstractC9477q {

        /* renamed from: a */
        public final Executor f38272a;

        /* renamed from: b */
        public final boolean f38273b;

        /* renamed from: c */
        public final boolean f38274c;

        /* renamed from: d */
        public final C9325a2.C9327b f38275d;

        /* renamed from: e */
        public final SocketFactory f38276e;

        /* renamed from: f */
        public final SSLSocketFactory f38277f;

        /* renamed from: g */
        public final HostnameVerifier f38278g;

        /* renamed from: h */
        public final C9591a f38279h;

        /* renamed from: i */
        public final int f38280i;

        /* renamed from: j */
        public final boolean f38281j;

        /* renamed from: k */
        public final C9363g f38282k;

        /* renamed from: l */
        public final long f38283l;

        /* renamed from: m */
        public final int f38284m;

        /* renamed from: n */
        public final boolean f38285n;

        /* renamed from: o */
        public final int f38286o;

        /* renamed from: p */
        public final ScheduledExecutorService f38287p;

        /* renamed from: q */
        public final boolean f38288q;

        /* renamed from: r */
        public boolean f38289r;

        /* renamed from: io.grpc.okhttp.OkHttpChannelBuilder$c$a */
        /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/OkHttpChannelBuilder$c$a.class */
        public class RunnableC10371a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C9363g.C9365b f38290a;

            public RunnableC10371a(C10370c cVar, C9363g.C9365b bVar) {
                this.f38290a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f38290a.m2880a();
            }
        }

        public C10370c(Executor executor, ScheduledExecutorService scheduledExecutorService, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C9591a aVar, int i, boolean z, long j, long j2, int i2, boolean z2, int i3, C9325a2.C9327b bVar, boolean z3) {
            boolean z4 = true;
            boolean z5 = scheduledExecutorService == null;
            this.f38274c = z5;
            this.f38287p = z5 ? (ScheduledExecutorService) C9495s1.m2590b(GrpcUtil.f38071n) : scheduledExecutorService;
            this.f38276e = socketFactory;
            this.f38277f = sSLSocketFactory;
            this.f38278g = hostnameVerifier;
            this.f38279h = aVar;
            this.f38280i = i;
            this.f38281j = z;
            this.f38282k = new C9363g("keepalive time nanos", j);
            this.f38283l = j2;
            this.f38284m = i2;
            this.f38285n = z2;
            this.f38286o = i3;
            this.f38288q = z3;
            if (executor != null) {
                z4 = false;
            }
            this.f38273b = z4;
            C4933n.m24794a(bVar, "transportTracerFactory");
            this.f38275d = bVar;
            if (this.f38273b) {
                this.f38272a = (Executor) C9495s1.m2590b(OkHttpChannelBuilder.f38257Z);
            } else {
                this.f38272a = executor;
            }
        }

        public /* synthetic */ C10370c(Executor executor, ScheduledExecutorService scheduledExecutorService, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C9591a aVar, int i, boolean z, long j, long j2, int i2, boolean z2, int i3, C9325a2.C9327b bVar, boolean z3, C10368a aVar2) {
            this(executor, scheduledExecutorService, socketFactory, sSLSocketFactory, hostnameVerifier, aVar, i, z, j, j2, i2, z2, i3, bVar, z3);
        }

        @Override // p530d.p531a.p532v0.AbstractC9477q
        /* renamed from: T1 */
        public ScheduledExecutorService mo311T1() {
            return this.f38287p;
        }

        @Override // p530d.p531a.p532v0.AbstractC9477q
        /* renamed from: a */
        public AbstractC9493s mo310a(SocketAddress socketAddress, AbstractC9477q.C9478a aVar, ChannelLogger channelLogger) {
            if (!this.f38289r) {
                C9363g.C9365b a = this.f38282k.m2884a();
                C9571f fVar = new C9571f((InetSocketAddress) socketAddress, aVar.m2660a(), aVar.m2653d(), aVar.m2656b(), this.f38272a, this.f38276e, this.f38277f, this.f38278g, this.f38279h, this.f38280i, this.f38284m, aVar.m2654c(), new RunnableC10371a(this, a), this.f38286o, this.f38275d.m2917a(), this.f38288q);
                if (this.f38281j) {
                    fVar.m2407a(true, a.m2879b(), this.f38283l, this.f38285n);
                }
                return fVar;
            }
            throw new IllegalStateException("The transport factory is closed.");
        }

        @Override // p530d.p531a.p532v0.AbstractC9477q, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.f38289r) {
                this.f38289r = true;
                if (this.f38274c) {
                    C9495s1.m2589b(GrpcUtil.f38071n, this.f38287p);
                }
                if (this.f38273b) {
                    C9495s1.m2589b(OkHttpChannelBuilder.f38257Z, this.f38272a);
                }
            }
        }
    }

    static {
        C9591a.C9593b bVar = new C9591a.C9593b(C9591a.f36607f);
        bVar.m2309a(CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_DSS_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384);
        bVar.m2308a(TlsVersion.TLS_1_2);
        bVar.m2310a(true);
        f38256Y = bVar.m2312a();
        TimeUnit.DAYS.toNanos(1000L);
    }

    public OkHttpChannelBuilder(String str) {
        super(str);
    }

    /* renamed from: a */
    public static OkHttpChannelBuilder m319a(String str) {
        return new OkHttpChannelBuilder(str);
    }

    @Override // p530d.p531a.p532v0.AbstractC9329b
    /* renamed from: b */
    public final AbstractC9477q mo318b() {
        return new C10370c(this.f38258M, this.f38259N, this.f38260O, m316g(), this.f38262Q, this.f38263R, m2913f(), this.f38265T != Long.MAX_VALUE, this.f38265T, this.f38266U, this.f38267V, this.f38268W, this.f38269X, this.f35971x, false, null);
    }

    @Override // p530d.p531a.p532v0.AbstractC9329b
    /* renamed from: c */
    public int mo317c() {
        int i = C10369b.f38271b[this.f38264S.ordinal()];
        if (i == 1) {
            return 80;
        }
        if (i == 2) {
            return 443;
        }
        throw new AssertionError(this.f38264S + " not handled");
    }

    /* renamed from: g */
    public SSLSocketFactory m316g() {
        int i = C10369b.f38271b[this.f38264S.ordinal()];
        if (i == 1) {
            return null;
        }
        if (i == 2) {
            try {
                if (this.f38261P == null) {
                    this.f38261P = SSLContext.getInstance("Default", Platform.m293d().m296a()).getSocketFactory();
                }
                return this.f38261P;
            } catch (GeneralSecurityException e) {
                throw new RuntimeException("TLS Provider failure", e);
            }
        } else {
            throw new RuntimeException("Unknown negotiation type: " + this.f38264S);
        }
    }
}
