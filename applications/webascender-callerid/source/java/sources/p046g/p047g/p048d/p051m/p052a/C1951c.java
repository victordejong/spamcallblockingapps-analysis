package p046g.p047g.p048d.p051m.p052a;

import com.hiya.api.zipkin.reporter.ZipkinCustomHiyaSender;
import i.a.c.a.b;
import i.a.d.a;
import i.a.d.f.q;
import i.a.d.f.z.d;
import java.util.concurrent.TimeUnit;
import kotlin.w.c.k;
import p046g.p047g.p048d.p050k.AbstractC1948a;
import p067i.p068a.p069a.p070c.C2016e;
import p067i.p068a.p069a.p070c.C2019i;
import p067i.p068a.p069a.p075f.AbstractC2054x;
import p067i.p068a.p080c.p081a.C2079c;
import p067i.p068a.p082d.C2080b;
import p067i.p068a.p082d.p085e.AbstractC2093d;
import p067i.p068a.p082d.p086f.C2107r;
import p067i.p068a.p082d.p086f.p090z.C2122e;
/* renamed from: g.g.d.m.a.c */
/* loaded from: classes2-dex2jar.jar:g/g/d/m/a/c.class */
public final class C1951c {

    /* renamed from: a */
    private a f5256a = m551b();

    /* renamed from: b */
    private final String f5257b;

    /* renamed from: c */
    private final String f5258c;

    /* renamed from: d */
    private final AbstractC1948a f5259d;

    /* renamed from: e */
    private final ZipkinCustomHiyaSender f5260e;

    /* renamed from: f */
    private final b f5261f;

    public C1951c(String str, String str2, AbstractC1948a abstractC1948a, ZipkinCustomHiyaSender zipkinCustomHiyaSender, b bVar) {
        k.g(str, "serviceName");
        k.g(str2, "endpoint");
        k.g(abstractC1948a, "batchInfoProvider");
        k.g(bVar, "randomIdGenerator");
        this.f5257b = str;
        this.f5258c = str2;
        this.f5259d = abstractC1948a;
        this.f5260e = zipkinCustomHiyaSender;
        this.f5261f = bVar;
    }

    /* renamed from: b */
    private final a m551b() {
        if (m550c()) {
            C2079c b = b.b();
            b.m263b(this.f5260e);
            b m264a = b.m264a();
            AbstractC2093d m236b = AbstractC2093d.m236b(C2019i.m371c(C2016e.m374d("service.name"), this.f5257b));
            k.c(m236b, "Resource.create(Attribut…ice.name\"), serviceName))");
            C2107r b2 = q.b();
            C2122e b3 = d.b(m264a);
            b3.m147b(this.f5259d.m564a(), TimeUnit.MILLISECONDS);
            b2.m215a(b3.m148a());
            b2.m213c(this.f5261f);
            b2.m212d(AbstractC2093d.m234d().m230h(m236b));
            q m214b = b2.m214b();
            C2080b c = a.c();
            c.m261b(m214b);
            return c.m262a();
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if ((r3.f5258c.length() > 0) != false) goto L11;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m550c() {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = 23
            if (r0 <= r1) goto L26
            r0 = r3
            java.lang.String r0 = r0.f5258c
            int r0 = r0.length()
            if (r0 <= 0) goto L1d
            r0 = 1
            r4 = r0
            goto L1f
        L1d:
            r0 = 0
            r4 = r0
        L1f:
            r0 = r4
            if (r0 == 0) goto L26
            goto L28
        L26:
            r0 = 0
            r5 = r0
        L28:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p046g.p047g.p048d.p051m.p052a.C1951c.m550c():boolean");
    }

    /* renamed from: a */
    public final AbstractC2054x m552a() {
        a aVar = this.f5256a;
        return aVar != null ? aVar.m378b(this.f5257b) : null;
    }
}
