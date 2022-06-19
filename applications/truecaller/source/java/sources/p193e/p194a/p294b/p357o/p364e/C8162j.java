package p193e.p194a.p294b.p357o.p364e;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.o.e.j */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/e/j.class */
public final class C8162j extends AbstractC20574a<AbstractC8161i> implements Object {

    /* renamed from: d */
    public final f f25281d;

    /* renamed from: e */
    public final f f25282e;

    /* renamed from: f */
    public final C20592g f25283f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8162j(@Named("IO") f fVar, @Named("UI") f fVar2, C20592g c20592g) {
        super(fVar2);
        l.e(fVar, "asyncIoContext");
        l.e(fVar2, "uiContext");
        l.e(c20592g, "featuresRegistry");
        this.f25281d = fVar;
        this.f25282e = fVar2;
        this.f25283f = c20592g;
    }
}
