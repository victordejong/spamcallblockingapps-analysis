package p193e.p194a.p717f.p718a.p721b.p725w;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p717f.p731w.AbstractC13734c;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f.a.b.w.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/w/e.class */
public final class C13626e extends AbstractC20574a<AbstractC13624c> implements AbstractC13623b {

    /* renamed from: d */
    public final AbstractC13762c f39479d;

    /* renamed from: e */
    public final AbstractC13734c f39480e;

    /* renamed from: f */
    public final f f39481f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13626e(AbstractC13762c abstractC13762c, AbstractC13734c abstractC13734c, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC13762c, "callManager");
        l.e(abstractC13734c, "callerInfoRepository");
        l.e(fVar, "uiContext");
        this.f39479d = abstractC13762c;
        this.f39480e = abstractC13734c;
        this.f39481f = fVar;
    }
}
