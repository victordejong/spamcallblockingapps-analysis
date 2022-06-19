package p193e.p194a.p947k.p948a.p954e.p955k;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p947k.p969c.AbstractC15992h0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.k.a.e.k.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/k/f.class */
public final class C15676f extends AbstractC20574a<AbstractC15674d> implements AbstractC15673c {

    /* renamed from: d */
    public final AbstractC15992h0 f44240d;

    /* renamed from: e */
    public final f f44241e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15676f(AbstractC15992h0 abstractC15992h0, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC15992h0, "receiveVideoSettingsManager");
        l.e(fVar, "coroutineContext");
        this.f44240d = abstractC15992h0;
        this.f44241e = fVar;
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a
    public f getCoroutineContext() {
        return this.f44241e;
    }
}
