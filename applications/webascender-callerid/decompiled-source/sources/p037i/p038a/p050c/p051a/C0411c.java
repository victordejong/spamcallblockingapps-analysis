package p037i.p038a.p050c.p051a;

import u.g;
import u.h.d;
import zipkin2.reporter.a;
import zipkin2.reporter.b.b;
/* renamed from: i.a.c.a.c */
/* loaded from: classes2-dex2jar.jar:i/a/c/a/c.class */
public final class C0411c {

    /* renamed from: b */
    private a f992b;

    /* renamed from: a */
    private u.h.a<g> f991a = d.JSON_V2;

    /* renamed from: c */
    private String f993c = "http://localhost:9411/api/v2/spans";

    /* renamed from: a */
    public b m264a() {
        if (this.f992b == null) {
            this.f992b = b.a(this.f993c);
        }
        return new b(this.f991a, this.f992b);
    }

    /* renamed from: b */
    public C0411c m263b(a aVar) {
        this.f992b = aVar;
        return this;
    }
}
