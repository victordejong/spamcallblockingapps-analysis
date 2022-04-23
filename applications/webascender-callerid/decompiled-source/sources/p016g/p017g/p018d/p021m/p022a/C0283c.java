package p016g.p017g.p018d.p021m.p022a;

import com.hiya.api.zipkin.reporter.ZipkinCustomHiyaSender;
import i.a.c.a.b;
import i.a.d.a;
import i.a.d.f.q;
import i.a.d.f.z.d;
import java.util.concurrent.TimeUnit;
import kotlin.w.c.k;
import p016g.p017g.p018d.p020k.AbstractC0280a;
import p037i.p038a.p039a.p040c.C0348e;
import p037i.p038a.p039a.p040c.C0351i;
import p037i.p038a.p039a.p045f.AbstractC0386x;
import p037i.p038a.p050c.p051a.C0411c;
import p037i.p038a.p052d.C0412b;
import p037i.p038a.p052d.p055e.AbstractC0425d;
import p037i.p038a.p052d.p056f.C0439r;
import p037i.p038a.p052d.p056f.p060z.C0454e;
/* renamed from: g.g.d.m.a.c */
/* loaded from: classes2-dex2jar.jar:g/g/d/m/a/c.class */
public final class C0283c {

    /* renamed from: a */
    private a f577a = m551b();

    /* renamed from: b */
    private final String f578b;

    /* renamed from: c */
    private final String f579c;

    /* renamed from: d */
    private final AbstractC0280a f580d;

    /* renamed from: e */
    private final ZipkinCustomHiyaSender f581e;

    /* renamed from: f */
    private final b f582f;

    public C0283c(String str, String str2, AbstractC0280a aVar, ZipkinCustomHiyaSender zipkinCustomHiyaSender, b bVar) {
        k.g(str, "serviceName");
        k.g(str2, "endpoint");
        k.g(aVar, "batchInfoProvider");
        k.g(bVar, "randomIdGenerator");
        this.f578b = str;
        this.f579c = str2;
        this.f580d = aVar;
        this.f581e = zipkinCustomHiyaSender;
        this.f582f = bVar;
    }

    /* renamed from: b */
    private final a m551b() {
        if (!m550c()) {
            return null;
        }
        C0411c b = b.b();
        b.m263b(this.f581e);
        b a = b.m264a();
        AbstractC0425d b2 = AbstractC0425d.m236b(C0351i.m371c(C0348e.m374d("service.name"), this.f578b));
        k.c(b2, "Resource.create(Attribut…ice.name\"), serviceName))");
        C0439r b3 = q.b();
        C0454e b4 = d.b(a);
        b4.m147b(this.f580d.m564a(), TimeUnit.MILLISECONDS);
        b3.m215a(b4.m148a());
        b3.m213c(this.f582f);
        b3.m212d(AbstractC0425d.m234d().m230h(b2));
        q b5 = b3.m214b();
        C0412b c = a.c();
        c.m261b(b5);
        return c.m262a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if ((r3.f579c.length() > 0) != false) goto L_0x0028;
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
            if (r0 <= r1) goto L_0x0026
            r0 = r3
            java.lang.String r0 = r0.f579c
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x001d
            r0 = 1
            r4 = r0
            goto L_0x001f
        L_0x001d:
            r0 = 0
            r4 = r0
        L_0x001f:
            r0 = r4
            if (r0 == 0) goto L_0x0026
            goto L_0x0028
        L_0x0026:
            r0 = 0
            r5 = r0
        L_0x0028:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p016g.p017g.p018d.p021m.p022a.C0283c.m550c():boolean");
    }

    /* renamed from: a */
    public final AbstractC0386x m552a() {
        a aVar = this.f577a;
        return aVar != null ? aVar.m378b(this.f578b) : null;
    }
}
