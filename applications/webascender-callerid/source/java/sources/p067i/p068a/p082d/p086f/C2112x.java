package p067i.p068a.p082d.p086f;

import java.util.List;
import java.util.function.Supplier;
import p067i.p068a.p082d.p083c.AbstractC2083d;
import p067i.p068a.p082d.p083c.C2084e;
import p067i.p068a.p082d.p085e.AbstractC2093d;
import p067i.p068a.p082d.p086f.p088b0.AbstractC2099h;
/* renamed from: i.a.d.f.x */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/x.class */
final class C2112x {

    /* renamed from: b */
    private final AbstractC2083d f5725b;

    /* renamed from: c */
    private final AbstractC2105h f5726c;

    /* renamed from: d */
    private final AbstractC2093d f5727d;

    /* renamed from: e */
    private final Supplier<AbstractC2108s> f5728e;

    /* renamed from: f */
    private final AbstractC2099h f5729f;

    /* renamed from: g */
    private final AbstractC2111v f5730g;

    /* renamed from: a */
    private final Object f5724a = new Object();

    /* renamed from: h */
    private volatile C2084e f5731h = null;

    C2112x(AbstractC2083d abstractC2083d, AbstractC2105h abstractC2105h, AbstractC2093d abstractC2093d, Supplier<AbstractC2108s> supplier, AbstractC2099h abstractC2099h, List<AbstractC2111v> list) {
        this.f5725b = abstractC2083d;
        this.f5726c = abstractC2105h;
        this.f5727d = abstractC2093d;
        this.f5728e = supplier;
        this.f5729f = abstractC2099h;
        this.f5730g = C2110u.m200d(list);
    }

    /* renamed from: a */
    AbstractC2111v m194a() {
        return this.f5730g;
    }

    /* renamed from: b */
    AbstractC2083d m193b() {
        return this.f5725b;
    }

    /* renamed from: c */
    AbstractC2105h m192c() {
        return this.f5726c;
    }

    /* renamed from: d */
    AbstractC2093d m191d() {
        return this.f5727d;
    }

    /* renamed from: e */
    AbstractC2099h m190e() {
        return this.f5729f;
    }

    /* renamed from: f */
    AbstractC2108s m189f() {
        return this.f5728e.get();
    }

    /* renamed from: g */
    boolean m188g() {
        return this.f5731h != null;
    }

    /* renamed from: h */
    C2084e m187h() {
        synchronized (this.f5724a) {
            if (this.f5731h != null) {
                return this.f5731h;
            }
            this.f5731h = this.f5730g.shutdown();
            return this.f5731h;
        }
    }
}
