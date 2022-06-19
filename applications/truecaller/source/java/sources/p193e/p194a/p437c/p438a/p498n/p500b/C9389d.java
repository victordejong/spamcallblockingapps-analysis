package p193e.p194a.p437c.p438a.p498n.p500b;

import com.truecaller.insights.p168ui.models.AdapterItem;
import javax.inject.Named;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1909z.AbstractC27603v;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.n.b.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/d.class */
public final class C9389d extends AbstractC27603v.AbstractC27605b<Long, AdapterItem> {

    /* renamed from: a */
    public final C9390e f28530a;

    /* renamed from: b */
    public final f f28531b;

    /* renamed from: c */
    public final C27010k0<Boolean> f28532c;

    public C9389d(C9390e c9390e, @Named("IO") f fVar, C27010k0<Boolean> c27010k0) {
        l.e(c9390e, "remindersPageFlowUseCase");
        l.e(fVar, "ioContext");
        this.f28530a = c9390e;
        this.f28531b = fVar;
        this.f28532c = c27010k0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [n3.z.v<java.lang.Long, com.truecaller.insights.ui.models.AdapterItem>, e.a.c.a.n.b.c] */
    @Override // p1727n3.p1909z.AbstractC27603v.AbstractC27605b
    /* renamed from: a */
    public AbstractC27603v<Long, AdapterItem> mo20a() {
        return new C9378c(this.f28530a, this.f28531b, this.f28532c);
    }
}
