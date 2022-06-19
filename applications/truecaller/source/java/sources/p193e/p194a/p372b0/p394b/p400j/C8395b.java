package p193e.p194a.p372b0.p394b.p400j;

import java.io.IOException;
import s1.f0.r;
import s1.z.c.l;
import u3.b0;
import u3.c0;
import u3.g0;
import u3.j0;
import u3.k0;
import v3.g;
import v3.n;
import v3.u;
/* renamed from: e.a.b0.b.j.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/j/b.class */
public final class C8395b implements b0 {

    /* renamed from: e.a.b0.b.j.b$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/j/b$a.class */
    public static final class C8396a extends j0 {

        /* renamed from: b */
        public final j0 f26077b;

        public C8396a(j0 j0Var) {
            l.e(j0Var, "body");
            this.f26077b = j0Var;
        }

        /* renamed from: a */
        public long m28616a() {
            return -1L;
        }

        /* renamed from: b */
        public c0 m28615b() {
            return this.f26077b.b();
        }

        /* renamed from: c */
        public void m28614c(g gVar) throws IOException {
            u uVar;
            l.e(gVar, "sink");
            n nVar = new n(gVar);
            l.f(nVar, "$this$buffer");
            try {
                this.f26077b.c(new u(nVar));
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    /* renamed from: a */
    public k0 m28617a(b0.a aVar) throws IOException {
        l.e(aVar, "chain");
        g0 request = aVar.request();
        j0 j0Var = request.e;
        if (j0Var != null) {
            if (!r.n("gzip", request.b("Content-Encoding"), true)) {
                j0Var = null;
            }
            if (j0Var != null) {
                g0.a aVar2 = new g0.a(request);
                aVar2.e(request.c, new C8396a(j0Var));
                return aVar.a(aVar2.b());
            }
        }
        return aVar.a(request);
    }
}
