package p530d.p531a.p533w0;

import com.google.common.p493io.BaseEncoding;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.okhttp.internal.framed.ErrorCode;
import java.util.List;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9210a;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.p532v0.AbstractC9318a;
import p530d.p531a.p532v0.AbstractC9333b2;
import p530d.p531a.p532v0.AbstractC9393l0;
import p530d.p531a.p532v0.C9325a2;
import p530d.p531a.p532v0.C9507u1;
import p530d.p531a.p533w0.p534o.p535f.C9601c;
import p530d.p540b.C9635c;
import p530d.p540b.C9636d;
import p610i.C10260c;
/* renamed from: d.a.w0.e */
/* loaded from: classes2-dex2jar.jar:d/a/w0/e.class */
public class C9568e extends AbstractC9318a {

    /* renamed from: q */
    public static final C10260c f36489q = new C10260c();

    /* renamed from: g */
    public final MethodDescriptor<?, ?> f36490g;

    /* renamed from: h */
    public final String f36491h;

    /* renamed from: i */
    public final C9507u1 f36492i;

    /* renamed from: j */
    public String f36493j;

    /* renamed from: k */
    public Object f36494k;

    /* renamed from: l */
    public volatile int f36495l;

    /* renamed from: m */
    public final C9570b f36496m;

    /* renamed from: n */
    public final C9569a f36497n;

    /* renamed from: o */
    public final C9210a f36498o;

    /* renamed from: p */
    public boolean f36499p;

    /* renamed from: d.a.w0.e$a */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/e$a.class */
    public class C9569a implements AbstractC9318a.AbstractC9320b {
        public C9569a() {
        }

        @Override // p530d.p531a.p532v0.AbstractC9318a.AbstractC9320b
        /* renamed from: a */
        public void mo2449a(int i) {
            C9635c.m2122b("OkHttpClientStream$Sink.request");
            try {
                synchronized (C9568e.this.f36496m.f36513x) {
                    C9568e.this.f36496m.m2896d(i);
                }
                C9635c.m2120c("OkHttpClientStream$Sink.request");
            } catch (Throwable th) {
                C9635c.m2120c("OkHttpClientStream$Sink.request");
                throw th;
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9318a.AbstractC9320b
        /* renamed from: a */
        public void mo2448a(C9260k0 k0Var, byte[] bArr) {
            C9635c.m2122b("OkHttpClientStream$Sink.writeHeaders");
            String str = "/" + C9568e.this.f36490g.m635a();
            String str2 = str;
            if (bArr != null) {
                C9568e.this.f36499p = true;
                str2 = str + "?" + BaseEncoding.m7912d().m7917a(bArr);
            }
            try {
                synchronized (C9568e.this.f36496m.f36513x) {
                    C9568e.this.f36496m.m2445a(k0Var, str2);
                }
                C9635c.m2120c("OkHttpClientStream$Sink.writeHeaders");
            } catch (Throwable th) {
                C9635c.m2120c("OkHttpClientStream$Sink.writeHeaders");
                throw th;
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9318a.AbstractC9320b
        /* renamed from: a */
        public void mo2447a(AbstractC9333b2 b2Var, boolean z, boolean z2, int i) {
            C10260c cVar;
            C9635c.m2122b("OkHttpClientStream$Sink.writeFrame");
            if (b2Var == null) {
                cVar = C9568e.f36489q;
            } else {
                C10260c c = ((C9584k) b2Var).m2346c();
                int size = (int) c.size();
                cVar = c;
                if (size > 0) {
                    C9568e.this.m2908d(size);
                    cVar = c;
                }
            }
            try {
                synchronized (C9568e.this.f36496m.f36513x) {
                    C9568e.this.f36496m.m2439a(cVar, z, z2);
                    C9568e.this.m2942g().m2923a(i);
                }
                C9635c.m2120c("OkHttpClientStream$Sink.writeFrame");
            } catch (Throwable th) {
                C9635c.m2120c("OkHttpClientStream$Sink.writeFrame");
                throw th;
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9318a.AbstractC9320b
        /* renamed from: a */
        public void mo2446a(Status status) {
            C9635c.m2122b("OkHttpClientStream$Sink.cancel");
            try {
                synchronized (C9568e.this.f36496m.f36513x) {
                    C9568e.this.f36496m.m2435c(status, true, null);
                }
                C9635c.m2120c("OkHttpClientStream$Sink.cancel");
            } catch (Throwable th) {
                C9635c.m2120c("OkHttpClientStream$Sink.cancel");
                throw th;
            }
        }
    }

    /* renamed from: d.a.w0.e$b */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/e$b.class */
    public class C9570b extends AbstractC9393l0 {

        /* renamed from: D */
        public int f36504D;

        /* renamed from: E */
        public int f36505E;

        /* renamed from: F */
        public final C9564b f36506F;

        /* renamed from: G */
        public final C9586m f36507G;

        /* renamed from: H */
        public final C9571f f36508H;

        /* renamed from: J */
        public final C9636d f36510J;

        /* renamed from: w */
        public final int f36512w;

        /* renamed from: x */
        public final Object f36513x;

        /* renamed from: y */
        public List<C9601c> f36514y;

        /* renamed from: z */
        public C10260c f36515z = new C10260c();

        /* renamed from: A */
        public boolean f36501A = false;

        /* renamed from: B */
        public boolean f36502B = false;

        /* renamed from: C */
        public boolean f36503C = false;

        /* renamed from: I */
        public boolean f36509I = true;

        public C9570b(int i, C9507u1 u1Var, Object obj, C9564b bVar, C9586m mVar, C9571f fVar, int i2, String str) {
            super(i, u1Var, C9568e.this.m2942g());
            C4933n.m24794a(obj, "lock");
            this.f36513x = obj;
            this.f36506F = bVar;
            this.f36507G = mVar;
            this.f36508H = fVar;
            this.f36504D = i2;
            this.f36505E = i2;
            this.f36512w = i2;
            this.f36510J = C9635c.m2125a(str);
        }

        /* renamed from: a */
        public final void m2445a(C9260k0 k0Var, String str) {
            this.f36514y = C9566c.m2473a(k0Var, str, C9568e.this.f36493j, C9568e.this.f36491h, C9568e.this.f36499p, this.f36508H.m2385i());
            this.f36508H.m2393e(C9568e.this);
        }

        /* renamed from: a */
        public void m2440a(C10260c cVar, boolean z) {
            int size = this.f36504D - ((int) cVar.size());
            this.f36504D = size;
            if (size < 0) {
                this.f36506F.mo2207a(C9568e.this.m2452l(), ErrorCode.FLOW_CONTROL_ERROR);
                this.f36508H.m2428a(C9568e.this.m2452l(), Status.f37995m.m609b("Received data size exceeded our receiving window size"), ClientStreamListener.RpcProgress.PROCESSED, false, null, null);
                return;
            }
            super.m2858a(new C9581h(cVar), z);
        }

        /* renamed from: a */
        public final void m2439a(C10260c cVar, boolean z, boolean z2) {
            if (!this.f36503C) {
                if (this.f36509I) {
                    this.f36515z.mo706a(cVar, (int) cVar.size());
                    this.f36501A |= z;
                    this.f36502B |= z2;
                    return;
                }
                C4933n.m24775b(C9568e.this.m2452l() != -1, "streamId should be set");
                this.f36507G.m2339a(z, C9568e.this.m2452l(), cVar, z2);
            }
        }

        @Override // p530d.p531a.p532v0.C9351f.AbstractC9360i
        /* renamed from: a */
        public void mo2438a(Runnable runnable) {
            synchronized (this.f36513x) {
                runnable.run();
            }
        }

        @Override // io.grpc.internal.MessageDeframer.AbstractC10365b
        /* renamed from: a */
        public void mo324a(Throwable th) {
            mo2436b(Status.m608b(th), true, new C9260k0());
        }

        /* renamed from: a */
        public void m2437a(List<C9601c> list, boolean z) {
            if (z) {
                m2855d(C9590n.m2320c(list));
            } else {
                m2856c(C9590n.m2322a(list));
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9318a.AbstractC9321c, io.grpc.internal.MessageDeframer.AbstractC10365b
        /* renamed from: a */
        public void mo323a(boolean z) {
            m2432i();
            super.mo323a(z);
        }

        @Override // p530d.p531a.p532v0.AbstractC9393l0
        /* renamed from: b */
        public void mo2436b(Status status, boolean z, C9260k0 k0Var) {
            m2435c(status, z, k0Var);
        }

        @Override // io.grpc.internal.MessageDeframer.AbstractC10365b
        /* renamed from: c */
        public void mo322c(int i) {
            int i2 = this.f36505E - i;
            this.f36505E = i2;
            float f = i2;
            int i3 = this.f36512w;
            if (f <= i3 * 0.5f) {
                int i4 = i3 - i2;
                this.f36504D += i4;
                this.f36505E = i2 + i4;
                this.f36506F.mo2208a(C9568e.this.m2452l(), i4);
            }
        }

        /* renamed from: c */
        public final void m2435c(Status status, boolean z, C9260k0 k0Var) {
            if (!this.f36503C) {
                this.f36503C = true;
                if (this.f36509I) {
                    this.f36508H.m2405b(C9568e.this);
                    this.f36514y = null;
                    this.f36515z.m774c();
                    this.f36509I = false;
                    if (k0Var == null) {
                        k0Var = new C9260k0();
                    }
                    m2930a(status, true, k0Var);
                    return;
                }
                this.f36508H.m2428a(C9568e.this.m2452l(), status, ClientStreamListener.RpcProgress.PROCESSED, z, ErrorCode.CANCEL, k0Var);
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9338d.AbstractC9339a
        /* renamed from: e */
        public void mo2434e() {
            super.mo2434e();
            m2907a().m2920b();
        }

        /* renamed from: f */
        public void m2433f(int i) {
            C4933n.m24774b(C9568e.this.f36495l == -1, "the stream has been started with id %s", i);
            C9568e.this.f36495l = i;
            C9568e.this.f36496m.mo2434e();
            if (this.f36509I) {
                this.f36506F.mo2201a(C9568e.this.f36499p, false, C9568e.this.f36495l, 0, this.f36514y);
                C9568e.this.f36492i.m2572b();
                this.f36514y = null;
                if (this.f36515z.size() > 0) {
                    this.f36507G.m2339a(this.f36501A, C9568e.this.f36495l, this.f36515z, this.f36502B);
                }
                this.f36509I = false;
            }
        }

        /* renamed from: i */
        public final void m2432i() {
            if (!m2926g()) {
                this.f36508H.m2428a(C9568e.this.m2452l(), null, ClientStreamListener.RpcProgress.PROCESSED, false, ErrorCode.CANCEL, null);
            } else {
                this.f36508H.m2428a(C9568e.this.m2452l(), null, ClientStreamListener.RpcProgress.PROCESSED, false, null, null);
            }
        }

        /* renamed from: j */
        public C9636d m2431j() {
            return this.f36510J;
        }
    }

    public C9568e(MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9564b bVar, C9571f fVar, C9586m mVar, Object obj, int i, int i2, String str, String str2, C9507u1 u1Var, C9325a2 a2Var, C9222d dVar, boolean z) {
        super(new C9585l(), u1Var, a2Var, k0Var, dVar, z && methodDescriptor.m627d());
        this.f36495l = -1;
        this.f36497n = new C9569a();
        this.f36499p = false;
        C4933n.m24794a(u1Var, "statsTraceCtx");
        this.f36492i = u1Var;
        this.f36490g = methodDescriptor;
        this.f36493j = str;
        this.f36491h = str2;
        this.f36498o = fVar.m2401c();
        this.f36496m = new C9570b(i, u1Var, obj, bVar, mVar, fVar, i2, methodDescriptor.m635a());
    }

    /* renamed from: a */
    public void m2468a(Object obj) {
        this.f36494k = obj;
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2467a(String str) {
        C4933n.m24794a(str, "authority");
        this.f36493j = str;
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: b */
    public C9210a mo2466b() {
        return this.f36498o;
    }

    @Override // p530d.p531a.p532v0.AbstractC9318a, p530d.p531a.p532v0.AbstractC9338d
    /* renamed from: e */
    public C9570b mo2461e() {
        return this.f36496m;
    }

    @Override // p530d.p531a.p532v0.AbstractC9318a
    /* renamed from: f */
    public C9569a mo2459f() {
        return this.f36497n;
    }

    /* renamed from: j */
    public Object m2454j() {
        return this.f36494k;
    }

    /* renamed from: k */
    public MethodDescriptor.MethodType m2453k() {
        return this.f36490g.m628c();
    }

    /* renamed from: l */
    public int m2452l() {
        return this.f36495l;
    }

    /* renamed from: m */
    public boolean m2451m() {
        return this.f36499p;
    }
}
