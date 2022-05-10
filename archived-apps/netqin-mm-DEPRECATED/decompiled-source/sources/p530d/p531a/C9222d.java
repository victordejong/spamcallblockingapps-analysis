package p530d.p531a;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9252j;
/* renamed from: d.a.d */
/* loaded from: classes2-dex2jar.jar:d/a/d.class */
public final class C9222d {

    /* renamed from: k */
    public static final C9222d f35769k = new C9222d();

    /* renamed from: a */
    public C9297q f35770a;

    /* renamed from: b */
    public Executor f35771b;

    /* renamed from: c */
    public String f35772c;

    /* renamed from: d */
    public AbstractC9218c f35773d;

    /* renamed from: e */
    public String f35774e;

    /* renamed from: f */
    public Object[][] f35775f;

    /* renamed from: g */
    public List<AbstractC9252j.AbstractC9253a> f35776g;

    /* renamed from: h */
    public Boolean f35777h;

    /* renamed from: i */
    public Integer f35778i;

    /* renamed from: j */
    public Integer f35779j;

    /* renamed from: d.a.d$a */
    /* loaded from: classes2-dex2jar.jar:d/a/d$a.class */
    public static final class C9223a<T> {

        /* renamed from: a */
        public final String f35780a;

        /* renamed from: b */
        public final T f35781b;

        public C9223a(String str, T t) {
            this.f35780a = str;
            this.f35781b = t;
        }

        /* renamed from: a */
        public static <T> C9223a<T> m3120a(String str) {
            C4933n.m24794a(str, "debugString");
            return new C9223a<>(str, null);
        }

        public String toString() {
            return this.f35780a;
        }
    }

    public C9222d() {
        this.f35775f = new Object[0][2];
        this.f35776g = Collections.emptyList();
    }

    public C9222d(C9222d dVar) {
        this.f35775f = new Object[0][2];
        this.f35776g = Collections.emptyList();
        this.f35770a = dVar.f35770a;
        this.f35772c = dVar.f35772c;
        this.f35773d = dVar.f35773d;
        this.f35771b = dVar.f35771b;
        this.f35774e = dVar.f35774e;
        this.f35775f = dVar.f35775f;
        this.f35777h = dVar.f35777h;
        this.f35778i = dVar.f35778i;
        this.f35779j = dVar.f35779j;
        this.f35776g = dVar.f35776g;
    }

    /* renamed from: a */
    public C9222d m3139a(int i) {
        C4933n.m24787a(i >= 0, "invalid maxsize %s", i);
        C9222d dVar = new C9222d(this);
        dVar.f35778i = Integer.valueOf(i);
        return dVar;
    }

    /* renamed from: a */
    public C9222d m3138a(long j, TimeUnit timeUnit) {
        return m3134a(C9297q.m2982a(j, timeUnit));
    }

    /* renamed from: a */
    public <T> C9222d m3136a(C9223a<T> aVar, T t) {
        C4933n.m24794a(aVar, "key");
        C4933n.m24794a(t, "value");
        C9222d dVar = new C9222d(this);
        int i = 0;
        while (true) {
            Object[][] objArr = this.f35775f;
            if (i >= objArr.length) {
                i = -1;
                break;
            } else if (aVar.equals(objArr[i][0])) {
                break;
            } else {
                i++;
            }
        }
        Object[][] objArr2 = new Object[this.f35775f.length + (i == -1 ? 1 : 0)][2];
        dVar.f35775f = objArr2;
        Object[][] objArr3 = this.f35775f;
        System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
        if (i == -1) {
            Object[][] objArr4 = dVar.f35775f;
            int length = this.f35775f.length;
            Object[] objArr5 = new Object[2];
            objArr5[0] = aVar;
            objArr5[1] = t;
            objArr4[length] = objArr5;
        } else {
            Object[][] objArr6 = dVar.f35775f;
            Object[] objArr7 = new Object[2];
            objArr7[0] = aVar;
            objArr7[1] = t;
            objArr6[i] = objArr7;
        }
        return dVar;
    }

    /* renamed from: a */
    public C9222d m3135a(AbstractC9252j.AbstractC9253a aVar) {
        C9222d dVar = new C9222d(this);
        ArrayList arrayList = new ArrayList(this.f35776g.size() + 1);
        arrayList.addAll(this.f35776g);
        arrayList.add(aVar);
        dVar.f35776g = Collections.unmodifiableList(arrayList);
        return dVar;
    }

    /* renamed from: a */
    public C9222d m3134a(C9297q qVar) {
        C9222d dVar = new C9222d(this);
        dVar.f35770a = qVar;
        return dVar;
    }

    /* renamed from: a */
    public C9222d m3133a(Executor executor) {
        C9222d dVar = new C9222d(this);
        dVar.f35771b = executor;
        return dVar;
    }

    /* renamed from: a */
    public <T> T m3137a(C9223a<T> aVar) {
        C4933n.m24794a(aVar, "key");
        int i = 0;
        while (true) {
            Object[][] objArr = this.f35775f;
            if (i >= objArr.length) {
                return (T) aVar.f35781b;
            }
            if (aVar.equals(objArr[i][0])) {
                return (T) this.f35775f[i][1];
            }
            i++;
        }
    }

    /* renamed from: a */
    public String m3140a() {
        return this.f35772c;
    }

    /* renamed from: b */
    public C9222d m3131b(int i) {
        C4933n.m24787a(i >= 0, "invalid maxsize %s", i);
        C9222d dVar = new C9222d(this);
        dVar.f35779j = Integer.valueOf(i);
        return dVar;
    }

    /* renamed from: b */
    public String m3132b() {
        return this.f35774e;
    }

    /* renamed from: c */
    public AbstractC9218c m3130c() {
        return this.f35773d;
    }

    /* renamed from: d */
    public C9297q m3129d() {
        return this.f35770a;
    }

    /* renamed from: e */
    public Executor m3128e() {
        return this.f35771b;
    }

    /* renamed from: f */
    public Integer m3127f() {
        return this.f35778i;
    }

    /* renamed from: g */
    public Integer m3126g() {
        return this.f35779j;
    }

    /* renamed from: h */
    public List<AbstractC9252j.AbstractC9253a> m3125h() {
        return this.f35776g;
    }

    /* renamed from: i */
    public boolean m3124i() {
        return Boolean.TRUE.equals(this.f35777h);
    }

    /* renamed from: j */
    public C9222d m3123j() {
        C9222d dVar = new C9222d(this);
        dVar.f35777h = Boolean.TRUE;
        return dVar;
    }

    /* renamed from: k */
    public C9222d m3122k() {
        C9222d dVar = new C9222d(this);
        dVar.f35777h = Boolean.FALSE;
        return dVar;
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("deadline", this.f35770a);
        a.m24813a("authority", this.f35772c);
        a.m24813a("callCredentials", this.f35773d);
        Executor executor = this.f35771b;
        a.m24813a("executor", executor != null ? executor.getClass() : null);
        a.m24813a("compressorName", this.f35774e);
        a.m24813a("customOptions", Arrays.deepToString(this.f35775f));
        a.m24812a("waitForReady", m3124i());
        a.m24813a("maxInboundMessageSize", this.f35778i);
        a.m24813a("maxOutboundMessageSize", this.f35779j);
        a.m24813a("streamTracerFactories", this.f35776g);
        return a.toString();
    }
}
