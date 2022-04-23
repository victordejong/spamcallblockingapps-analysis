package p037i.p038a.p052d.p056f;

import java.util.List;
import java.util.function.Supplier;
import p037i.p038a.p052d.p053c.AbstractC0415d;
import p037i.p038a.p052d.p053c.C0416e;
import p037i.p038a.p052d.p055e.AbstractC0425d;
import p037i.p038a.p052d.p056f.p058b0.AbstractC0431h;
/* renamed from: i.a.d.f.x */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/x.class */
final class C0444x {

    /* renamed from: b */
    private final AbstractC0415d f1046b;

    /* renamed from: c */
    private final AbstractC0437h f1047c;

    /* renamed from: d */
    private final AbstractC0425d f1048d;

    /* renamed from: e */
    private final Supplier<AbstractC0440s> f1049e;

    /* renamed from: f */
    private final AbstractC0431h f1050f;

    /* renamed from: g */
    private final AbstractC0443v f1051g;

    /* renamed from: a */
    private final Object f1045a = new Object();

    /* renamed from: h */
    private volatile C0416e f1052h = null;

    C0444x(AbstractC0415d dVar, AbstractC0437h hVar, AbstractC0425d dVar2, Supplier<AbstractC0440s> supplier, AbstractC0431h hVar2, List<AbstractC0443v> list) {
        this.f1046b = dVar;
        this.f1047c = hVar;
        this.f1048d = dVar2;
        this.f1049e = supplier;
        this.f1050f = hVar2;
        this.f1051g = C0442u.m200d(list);
    }

    /* renamed from: a */
    AbstractC0443v m194a() {
        return this.f1051g;
    }

    /* renamed from: b */
    AbstractC0415d m193b() {
        return this.f1046b;
    }

    /* renamed from: c */
    AbstractC0437h m192c() {
        return this.f1047c;
    }

    /* renamed from: d */
    AbstractC0425d m191d() {
        return this.f1048d;
    }

    /* renamed from: e */
    AbstractC0431h m190e() {
        return this.f1050f;
    }

    /* renamed from: f */
    AbstractC0440s m189f() {
        return this.f1049e.get();
    }

    /* renamed from: g */
    boolean m188g() {
        return this.f1052h != null;
    }

    /* renamed from: h */
    C0416e m187h() {
        synchronized (this.f1045a) {
            if (this.f1052h != null) {
                return this.f1052h;
            }
            this.f1052h = this.f1051g.shutdown();
            return this.f1052h;
        }
    }
}
