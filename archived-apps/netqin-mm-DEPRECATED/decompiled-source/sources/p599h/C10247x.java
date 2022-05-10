package p599h;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import p599h.p600d0.AbstractRunnableC10108b;
import p599h.p600d0.p601e.C10113a;
import p599h.p600d0.p602f.C10127a;
import p599h.p600d0.p603g.C10135a;
import p599h.p600d0.p603g.C10136b;
import p599h.p600d0.p603g.C10143g;
import p599h.p600d0.p603g.C10146j;
import p599h.p600d0.p607k.C10203f;
import p610i.C10255a;
/* renamed from: h.x */
/* loaded from: classes2-dex2jar.jar:h/x.class */
public final class C10247x implements AbstractC10210e {

    /* renamed from: a */
    public final C10244w f37848a;

    /* renamed from: b */
    public final C10146j f37849b;

    /* renamed from: c */
    public final C10255a f37850c;

    /* renamed from: d */
    public AbstractC10229p f37851d;

    /* renamed from: e */
    public final C10250y f37852e;

    /* renamed from: f */
    public final boolean f37853f;

    /* renamed from: g */
    public boolean f37854g;

    /* renamed from: h.x$a */
    /* loaded from: classes2-dex2jar.jar:h/x$a.class */
    public class C10248a extends C10255a {
        public C10248a() {
        }

        @Override // p610i.C10255a
        /* renamed from: i */
        public void mo740i() {
            C10247x.this.m832c();
        }
    }

    /* renamed from: h.x$b */
    /* loaded from: classes2-dex2jar.jar:h/x$b.class */
    public final class C10249b extends AbstractRunnableC10108b {

        /* renamed from: b */
        public final AbstractC10212f f37856b;

        public C10249b(AbstractC10212f fVar) {
            super("OkHttp %s", C10247x.this.m827j());
            this.f37856b = fVar;
        }

        /* renamed from: a */
        public void m825a(ExecutorService executorService) {
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e);
                    C10247x.this.f37851d.m995a(C10247x.this, interruptedIOException);
                    this.f37856b.mo1058a(C10247x.this, interruptedIOException);
                    C10247x.this.f37848a.m861n().m1006b(this);
                }
            } catch (Throwable th) {
                C10247x.this.f37848a.m861n().m1006b(this);
                throw th;
            }
        }

        @Override // p599h.p600d0.AbstractRunnableC10108b
        /* renamed from: b */
        public void mo824b() {
            IOException e;
            C10247x.this.f37850c.m789g();
            boolean z = true;
            try {
                try {
                    C10091a0 g = C10247x.this.m830g();
                    try {
                        if (C10247x.this.f37849b.m1288b()) {
                            this.f37856b.mo1058a(C10247x.this, new IOException("Canceled"));
                        } else {
                            this.f37856b.mo1059a(C10247x.this, g);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        IOException a = C10247x.this.m833a(e);
                        if (z) {
                            C10203f d = C10203f.m1071d();
                            d.mo1086a(4, "Callback failure for " + C10247x.this.m826k(), a);
                        } else {
                            C10247x.this.f37851d.m995a(C10247x.this, a);
                            this.f37856b.mo1058a(C10247x.this, a);
                        }
                        C10247x.this.f37848a.m861n().m1006b(this);
                    }
                } catch (Throwable th) {
                    C10247x.this.f37848a.m861n().m1006b(this);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                z = false;
            }
            C10247x.this.f37848a.m861n().m1006b(this);
        }

        /* renamed from: c */
        public C10247x m823c() {
            return C10247x.this;
        }

        /* renamed from: d */
        public String m822d() {
            return C10247x.this.f37852e.m813g().m934g();
        }
    }

    public C10247x(C10244w wVar, C10250y yVar, boolean z) {
        this.f37848a = wVar;
        this.f37852e = yVar;
        this.f37853f = z;
        this.f37849b = new C10146j(wVar, z);
        C10248a aVar = new C10248a();
        this.f37850c = aVar;
        aVar.mo696a(wVar.m867g(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public static C10247x m835a(C10244w wVar, C10250y yVar, boolean z) {
        C10247x xVar = new C10247x(wVar, yVar, z);
        xVar.f37851d = wVar.m859p().mo980a(xVar);
        return xVar;
    }

    /* renamed from: a */
    public IOException m833a(IOException iOException) {
        if (!this.f37850c.m788h()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    @Override // p599h.AbstractC10210e
    /* renamed from: a */
    public void mo836a(AbstractC10212f fVar) {
        synchronized (this) {
            if (!this.f37854g) {
                this.f37854g = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        m831e();
        this.f37851d.m988b(this);
        this.f37848a.m861n().m1010a(new C10249b(fVar));
    }

    /* renamed from: c */
    public void m832c() {
        this.f37849b.m1296a();
    }

    public C10247x clone() {
        return m835a(this.f37848a, this.f37852e, this.f37853f);
    }

    /* renamed from: e */
    public final void m831e() {
        this.f37849b.m1289a(C10203f.m1071d().mo1085a("response.body().close()"));
    }

    @Override // p599h.AbstractC10210e
    public C10091a0 execute() throws IOException {
        synchronized (this) {
            if (!this.f37854g) {
                this.f37854g = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        m831e();
        this.f37850c.m789g();
        this.f37851d.m988b(this);
        try {
            try {
                this.f37848a.m861n().m1009a(this);
                C10091a0 g = m830g();
                if (g != null) {
                    this.f37848a.m861n().m1005b(this);
                    return g;
                }
                throw new IOException("Canceled");
            } catch (IOException e) {
                IOException a = m833a(e);
                this.f37851d.m995a(this, a);
                throw a;
            }
        } catch (Throwable th) {
            this.f37848a.m861n().m1005b(this);
            throw th;
        }
    }

    /* renamed from: g */
    public C10091a0 m830g() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f37848a.m855t());
        arrayList.add(this.f37849b);
        arrayList.add(new C10135a(this.f37848a.m862m()));
        arrayList.add(new C10113a(this.f37848a.m854w()));
        arrayList.add(new C10127a(this.f37848a));
        if (!this.f37853f) {
            arrayList.addAll(this.f37848a.m853x());
        }
        arrayList.add(new C10136b(this.f37853f));
        return new C10143g(arrayList, null, null, null, 0, this.f37852e, this, this.f37851d, this.f37848a.m865j(), this.f37848a.m876I(), this.f37848a.m872O()).mo900a(this.f37852e);
    }

    /* renamed from: h */
    public boolean m829h() {
        return this.f37849b.m1288b();
    }

    @Override // p599h.AbstractC10210e
    /* renamed from: i */
    public C10250y mo828i() {
        return this.f37852e;
    }

    /* renamed from: j */
    public String m827j() {
        return this.f37852e.m813g().m929l();
    }

    /* renamed from: k */
    public String m826k() {
        StringBuilder sb = new StringBuilder();
        sb.append(m829h() ? "canceled " : "");
        sb.append(this.f37853f ? "web socket" : "call");
        sb.append(" to ");
        sb.append(m827j());
        return sb.toString();
    }
}
