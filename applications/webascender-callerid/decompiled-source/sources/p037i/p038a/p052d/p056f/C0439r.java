package p037i.p038a.p052d.p056f;

import i.a.d.d.g;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Supplier;
import p037i.p038a.p052d.p053c.AbstractC0415d;
import p037i.p038a.p052d.p055e.AbstractC0425d;
import p037i.p038a.p052d.p056f.p058b0.AbstractC0431h;
import p037i.p038a.p052d.p056f.p058b0.C0430g;
/* renamed from: i.a.d.f.r */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/r.class */
public final class C0439r {

    /* renamed from: g */
    private static final AbstractC0431h f1032g = C0430g.m224c(C0430g.m225b());

    /* renamed from: a */
    private final List<AbstractC0443v> f1033a = new ArrayList();

    /* renamed from: b */
    private AbstractC0415d f1034b = g.c();

    /* renamed from: c */
    private AbstractC0437h f1035c = C0436g.m218a();

    /* renamed from: d */
    private AbstractC0425d f1036d = AbstractC0425d.m234d();

    /* renamed from: e */
    private Supplier<AbstractC0440s> f1037e = C0435c.f1031a;

    /* renamed from: f */
    private AbstractC0431h f1038f = f1032g;

    C0439r() {
    }

    /* renamed from: a */
    public C0439r m215a(AbstractC0443v vVar) {
        this.f1033a.add(vVar);
        return this;
    }

    /* renamed from: b */
    public q m214b() {
        return new q(this.f1034b, this.f1035c, this.f1036d, this.f1037e, this.f1038f, this.f1033a);
    }

    /* renamed from: c */
    public C0439r m213c(AbstractC0437h hVar) {
        Objects.requireNonNull(hVar, "idGenerator");
        this.f1035c = hVar;
        return this;
    }

    /* renamed from: d */
    public C0439r m212d(AbstractC0425d dVar) {
        Objects.requireNonNull(dVar, "resource");
        this.f1036d = dVar;
        return this;
    }
}
