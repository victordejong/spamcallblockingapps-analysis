package p530d.p531a.p532v0;

import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9270l;
import p530d.p531a.C9210a;
import p530d.p531a.C9260k0;
import p530d.p531a.C9297q;
import p530d.p531a.C9306s;
import p530d.p531a.p532v0.AbstractC9521w1;
/* renamed from: d.a.v0.x */
/* loaded from: classes2-dex2jar.jar:d/a/v0/x.class */
public class C9523x implements AbstractC9448o {

    /* renamed from: a */
    public volatile boolean f36383a;

    /* renamed from: b */
    public ClientStreamListener f36384b;

    /* renamed from: c */
    public AbstractC9448o f36385c;

    /* renamed from: d */
    public Status f36386d;

    /* renamed from: e */
    public List<Runnable> f36387e = new ArrayList();

    /* renamed from: f */
    public C9537n f36388f;

    /* renamed from: g */
    public long f36389g;

    /* renamed from: h */
    public long f36390h;

    /* renamed from: d.a.v0.x$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$a.class */
    public class RunnableC9524a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f36391a;

        public RunnableC9524a(int i) {
            this.f36391a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2538a(this.f36391a);
        }
    }

    /* renamed from: d.a.v0.x$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$b.class */
    public class RunnableC9525b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9270l f36393a;

        public RunnableC9525b(AbstractC9270l lVar) {
            this.f36393a = lVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2537a(this.f36393a);
        }
    }

    /* renamed from: d.a.v0.x$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$c.class */
    public class RunnableC9526c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f36395a;

        public RunnableC9526c(boolean z) {
            this.f36395a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2527a(this.f36395a);
        }
    }

    /* renamed from: d.a.v0.x$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$d.class */
    public class RunnableC9527d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C9306s f36397a;

        public RunnableC9527d(C9306s sVar) {
            this.f36397a = sVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2535a(this.f36397a);
        }
    }

    /* renamed from: d.a.v0.x$e */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$e.class */
    public class RunnableC9528e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f36399a;

        public RunnableC9528e(int i) {
            this.f36399a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2526b(this.f36399a);
        }
    }

    /* renamed from: d.a.v0.x$f */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$f.class */
    public class RunnableC9529f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f36401a;

        public RunnableC9529f(int i) {
            this.f36401a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2523c(this.f36401a);
        }
    }

    /* renamed from: d.a.v0.x$g */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$g.class */
    public class RunnableC9530g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C9297q f36403a;

        public RunnableC9530g(C9297q qVar) {
            this.f36403a = qVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2536a(this.f36403a);
        }
    }

    /* renamed from: d.a.v0.x$h */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$h.class */
    public class RunnableC9531h implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f36405a;

        public RunnableC9531h(String str) {
            this.f36405a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2467a(this.f36405a);
        }
    }

    /* renamed from: d.a.v0.x$i */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$i.class */
    public class RunnableC9532i implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ClientStreamListener f36407a;

        public RunnableC9532i(ClientStreamListener clientStreamListener) {
            this.f36407a = clientStreamListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2530a(this.f36407a);
        }
    }

    /* renamed from: d.a.v0.x$j */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$j.class */
    public class RunnableC9533j implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ InputStream f36409a;

        public RunnableC9533j(InputStream inputStream) {
            this.f36409a = inputStream;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2529a(this.f36409a);
        }
    }

    /* renamed from: d.a.v0.x$k */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$k.class */
    public class RunnableC9534k implements Runnable {
        public RunnableC9534k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.flush();
        }
    }

    /* renamed from: d.a.v0.x$l */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$l.class */
    public class RunnableC9535l implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Status f36412a;

        public RunnableC9535l(Status status) {
            this.f36412a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2531a(this.f36412a);
        }
    }

    /* renamed from: d.a.v0.x$m */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$m.class */
    public class RunnableC9536m implements Runnable {
        public RunnableC9536m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9523x.this.f36385c.mo2539a();
        }
    }

    /* renamed from: d.a.v0.x$n */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/x$n.class */
    public static class C9537n implements ClientStreamListener {

        /* renamed from: a */
        public final ClientStreamListener f36415a;

        /* renamed from: b */
        public volatile boolean f36416b;

        /* renamed from: c */
        public List<Runnable> f36417c = new ArrayList();

        /* renamed from: d.a.v0.x$n$a */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/x$n$a.class */
        public class RunnableC9538a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AbstractC9521w1.AbstractC9522a f36418a;

            public RunnableC9538a(AbstractC9521w1.AbstractC9522a aVar) {
                this.f36418a = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C9537n.this.f36415a.mo2521a(this.f36418a);
            }
        }

        /* renamed from: d.a.v0.x$n$b */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/x$n$b.class */
        public class RunnableC9539b implements Runnable {
            public RunnableC9539b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C9537n.this.f36415a.mo2522a();
            }
        }

        /* renamed from: d.a.v0.x$n$c */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/x$n$c.class */
        public class RunnableC9540c implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C9260k0 f36421a;

            public RunnableC9540c(C9260k0 k0Var) {
                this.f36421a = k0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                C9537n.this.f36415a.mo575a(this.f36421a);
            }
        }

        /* renamed from: d.a.v0.x$n$d */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/x$n$d.class */
        public class RunnableC9541d implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Status f36423a;

            /* renamed from: b */
            public final /* synthetic */ C9260k0 f36424b;

            public RunnableC9541d(Status status, C9260k0 k0Var) {
                this.f36423a = status;
                this.f36424b = k0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                C9537n.this.f36415a.mo574a(this.f36423a, this.f36424b);
            }
        }

        /* renamed from: d.a.v0.x$n$e */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/x$n$e.class */
        public class RunnableC9542e implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Status f36426a;

            /* renamed from: b */
            public final /* synthetic */ ClientStreamListener.RpcProgress f36427b;

            /* renamed from: c */
            public final /* synthetic */ C9260k0 f36428c;

            public RunnableC9542e(Status status, ClientStreamListener.RpcProgress rpcProgress, C9260k0 k0Var) {
                this.f36426a = status;
                this.f36427b = rpcProgress;
                this.f36428c = k0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                C9537n.this.f36415a.mo573a(this.f36426a, this.f36427b, this.f36428c);
            }
        }

        public C9537n(ClientStreamListener clientStreamListener) {
            this.f36415a = clientStreamListener;
        }

        @Override // p530d.p531a.p532v0.AbstractC9521w1
        /* renamed from: a */
        public void mo2522a() {
            if (this.f36416b) {
                this.f36415a.mo2522a();
            } else {
                m2519a(new RunnableC9539b());
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        /* renamed from: a */
        public void mo575a(C9260k0 k0Var) {
            m2519a(new RunnableC9540c(k0Var));
        }

        @Override // p530d.p531a.p532v0.AbstractC9521w1
        /* renamed from: a */
        public void mo2521a(AbstractC9521w1.AbstractC9522a aVar) {
            if (this.f36416b) {
                this.f36415a.mo2521a(aVar);
            } else {
                m2519a(new RunnableC9538a(aVar));
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        /* renamed from: a */
        public void mo574a(Status status, C9260k0 k0Var) {
            m2519a(new RunnableC9541d(status, k0Var));
        }

        @Override // io.grpc.internal.ClientStreamListener
        /* renamed from: a */
        public void mo573a(Status status, ClientStreamListener.RpcProgress rpcProgress, C9260k0 k0Var) {
            m2519a(new RunnableC9542e(status, rpcProgress, k0Var));
        }

        /* renamed from: a */
        public final void m2519a(Runnable runnable) {
            synchronized (this) {
                if (!this.f36416b) {
                    this.f36417c.add(runnable);
                } else {
                    runnable.run();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public void m2518b() {
            List<Runnable> list;
            List arrayList = new ArrayList();
            while (true) {
                synchronized (this) {
                    try {
                        if (this.f36417c.isEmpty()) {
                            this.f36417c = null;
                            this.f36416b = true;
                            return;
                        }
                        list = this.f36417c;
                        this.f36417c = arrayList;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                for (Runnable runnable : list) {
                    runnable.run();
                }
                list.clear();
                arrayList = list;
            }
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2539a() {
        m2528a(new RunnableC9536m());
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public void mo2538a(int i) {
        if (this.f36383a) {
            this.f36385c.mo2538a(i);
        } else {
            m2528a(new RunnableC9524a(i));
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public void mo2537a(AbstractC9270l lVar) {
        C4933n.m24794a(lVar, "compressor");
        m2528a(new RunnableC9525b(lVar));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2536a(C9297q qVar) {
        m2528a(new RunnableC9530g(qVar));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2535a(C9306s sVar) {
        C4933n.m24794a(sVar, "decompressorRegistry");
        m2528a(new RunnableC9527d(sVar));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2534a(C9449o0 o0Var) {
        synchronized (this) {
            if (this.f36384b != null) {
                if (this.f36385c != null) {
                    o0Var.m2718a("buffered_nanos", Long.valueOf(this.f36390h - this.f36389g));
                    this.f36385c.mo2534a(o0Var);
                } else {
                    o0Var.m2718a("buffered_nanos", Long.valueOf(System.nanoTime() - this.f36389g));
                    o0Var.m2719a("waiting_for_connection");
                }
            }
        }
    }

    /* renamed from: a */
    public final void m2533a(AbstractC9448o oVar) {
        C4933n.m24772b(this.f36385c == null, "realStream already set to %s", this.f36385c);
        this.f36385c = oVar;
        this.f36390h = System.nanoTime();
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2531a(Status status) {
        ClientStreamListener clientStreamListener;
        boolean z;
        C4933n.m24794a(status, "reason");
        synchronized (this) {
            if (this.f36385c == null) {
                m2533a(C9324a1.f35926a);
                z = false;
                clientStreamListener = this.f36384b;
                this.f36386d = status;
            } else {
                z = true;
                clientStreamListener = null;
            }
        }
        if (z) {
            m2528a(new RunnableC9535l(status));
            return;
        }
        if (clientStreamListener != null) {
            clientStreamListener.mo574a(status, new C9260k0());
        }
        m2524c();
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2530a(ClientStreamListener clientStreamListener) {
        Status status;
        boolean z;
        C9537n nVar;
        C4933n.m24775b(this.f36384b == null, "already started");
        synchronized (this) {
            C4933n.m24794a(clientStreamListener, "listener");
            this.f36384b = clientStreamListener;
            status = this.f36386d;
            z = this.f36383a;
            nVar = clientStreamListener;
            if (!z) {
                C9537n nVar2 = new C9537n(clientStreamListener);
                this.f36388f = nVar2;
                nVar = nVar2;
            }
            this.f36389g = System.nanoTime();
        }
        if (status != null) {
            nVar.mo574a(status, new C9260k0());
        } else if (z) {
            this.f36385c.mo2530a(nVar);
        } else {
            m2528a(new RunnableC9532i(nVar));
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public void mo2529a(InputStream inputStream) {
        C4933n.m24794a(inputStream, AvidVideoPlaybackListenerImpl.MESSAGE);
        if (this.f36383a) {
            this.f36385c.mo2529a(inputStream);
        } else {
            m2528a(new RunnableC9533j(inputStream));
        }
    }

    /* renamed from: a */
    public final void m2528a(Runnable runnable) {
        synchronized (this) {
            if (!this.f36383a) {
                this.f36387e.add(runnable);
            } else {
                runnable.run();
            }
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2467a(String str) {
        C4933n.m24775b(this.f36384b == null, "May only be called before start");
        C4933n.m24794a(str, "authority");
        m2528a(new RunnableC9531h(str));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2527a(boolean z) {
        m2528a(new RunnableC9526c(z));
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: b */
    public C9210a mo2466b() {
        AbstractC9448o oVar;
        synchronized (this) {
            oVar = this.f36385c;
        }
        return oVar != null ? oVar.mo2466b() : C9210a.f35760b;
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: b */
    public void mo2526b(int i) {
        if (this.f36383a) {
            this.f36385c.mo2526b(i);
        } else {
            m2528a(new RunnableC9528e(i));
        }
    }

    /* renamed from: b */
    public final void m2525b(AbstractC9448o oVar) {
        synchronized (this) {
            if (this.f36385c == null) {
                C4933n.m24794a(oVar, "stream");
                m2533a(oVar);
                m2524c();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        if (r0.hasNext() == false) goto L_0x005d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        ((java.lang.Runnable) r0.next()).run();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2524c() {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r4 = r0
        L_0x0008:
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            java.util.List<java.lang.Runnable> r0 = r0.f36387e     // Catch: all -> 0x0068
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x0068
            if (r0 == 0) goto L_0x0030
            r0 = r3
            r1 = 0
            r0.f36387e = r1     // Catch: all -> 0x0068
            r0 = r3
            r1 = 1
            r0.f36383a = r1     // Catch: all -> 0x0068
            r0 = r3
            d.a.v0.x$n r0 = r0.f36388f     // Catch: all -> 0x0068
            r4 = r0
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0068
            r0 = r4
            if (r0 == 0) goto L_0x002f
            r0 = r4
            r0.m2518b()
        L_0x002f:
            return
        L_0x0030:
            r0 = r3
            java.util.List<java.lang.Runnable> r0 = r0.f36387e     // Catch: all -> 0x0068
            r5 = r0
            r0 = r3
            r1 = r4
            r0.f36387e = r1     // Catch: all -> 0x0068
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0068
            r0 = r5
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x0043:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x005d
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.lang.Runnable r0 = (java.lang.Runnable) r0
            r0.run()
            goto L_0x0043
        L_0x005d:
            r0 = r5
            r0.clear()
            r0 = r5
            r4 = r0
            goto L_0x0008
        L_0x0068:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0068
            goto L_0x0070
        L_0x006e:
            r0 = r4
            throw r0
        L_0x0070:
            goto L_0x006e
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.C9523x.m2524c():void");
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: c */
    public void mo2523c(int i) {
        if (this.f36383a) {
            this.f36385c.mo2523c(i);
        } else {
            m2528a(new RunnableC9529f(i));
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    public void flush() {
        if (this.f36383a) {
            this.f36385c.flush();
        } else {
            m2528a(new RunnableC9534k());
        }
    }
}
