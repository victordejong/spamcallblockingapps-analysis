package p193e.p194a.p947k.p948a.p961h;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.k.a.h.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/h/d.class */
public final class C15789d extends AbstractC20574a<Object> implements AbstractC20580e {

    /* renamed from: d */
    public final f f44545d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15789d(@Named("UI") f fVar) {
        super(fVar);
        l.e(fVar, "coroutineContext");
        this.f44545d = fVar;
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a
    public f getCoroutineContext() {
        return this.f44545d;
    }
}
