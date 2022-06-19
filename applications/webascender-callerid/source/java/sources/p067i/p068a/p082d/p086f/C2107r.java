package p067i.p068a.p082d.p086f;

import i.a.d.d.g;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Supplier;
import p067i.p068a.p082d.p083c.AbstractC2083d;
import p067i.p068a.p082d.p085e.AbstractC2093d;
import p067i.p068a.p082d.p086f.p088b0.AbstractC2099h;
import p067i.p068a.p082d.p086f.p088b0.C2098g;
/* renamed from: i.a.d.f.r */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/r.class */
public final class C2107r {

    /* renamed from: g */
    private static final AbstractC2099h f5711g = C2098g.m224c(C2098g.m225b());

    /* renamed from: a */
    private final List<AbstractC2111v> f5712a = new ArrayList();

    /* renamed from: b */
    private AbstractC2083d f5713b = g.c();

    /* renamed from: c */
    private AbstractC2105h f5714c = C2104g.m218a();

    /* renamed from: d */
    private AbstractC2093d f5715d = AbstractC2093d.m234d();

    /* renamed from: e */
    private Supplier<AbstractC2108s> f5716e = C2103c.f5710a;

    /* renamed from: f */
    private AbstractC2099h f5717f = f5711g;

    C2107r() {
    }

    /* renamed from: a */
    public C2107r m215a(AbstractC2111v abstractC2111v) {
        this.f5712a.add(abstractC2111v);
        return this;
    }

    /* renamed from: b */
    public q m214b() {
        return new q(this.f5713b, this.f5714c, this.f5715d, this.f5716e, this.f5717f, this.f5712a);
    }

    /* renamed from: c */
    public C2107r m213c(AbstractC2105h abstractC2105h) {
        Objects.requireNonNull(abstractC2105h, "idGenerator");
        this.f5714c = abstractC2105h;
        return this;
    }

    /* renamed from: d */
    public C2107r m212d(AbstractC2093d abstractC2093d) {
        Objects.requireNonNull(abstractC2093d, "resource");
        this.f5715d = abstractC2093d;
        return this;
    }
}
