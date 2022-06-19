package p067i.p068a.p080c.p081a;

import u.g;
import u.h.d;
import zipkin2.reporter.a;
import zipkin2.reporter.b.b;
/* renamed from: i.a.c.a.c */
/* loaded from: classes2-dex2jar.jar:i/a/c/a/c.class */
public final class C2079c {

    /* renamed from: b */
    private a f5671b;

    /* renamed from: a */
    private u.h.a<g> f5670a = d.JSON_V2;

    /* renamed from: c */
    private String f5672c = "http://localhost:9411/api/v2/spans";

    /* renamed from: a */
    public b m264a() {
        if (this.f5671b == null) {
            this.f5671b = b.a(this.f5672c);
        }
        return new b(this.f5670a, this.f5671b);
    }

    /* renamed from: b */
    public C2079c m263b(a aVar) {
        this.f5671b = aVar;
        return this;
    }
}
