package p193e.p194a.p717f.p718a.p721b.p722a;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p717f.p733y.C13768f;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.manageConference.ManageConferencePresenter$listenToConferenceCallChildren$1", f = "ManageConferencePresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.a.h */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/a/h.class */
public final class C13566h extends i implements p<List<? extends C13768f>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39326e;

    /* renamed from: f */
    public final /* synthetic */ C13567i f39327f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13566h(C13567i c13567i, d dVar) {
        super(2, dVar);
        this.f39327f = c13567i;
    }

    /* renamed from: i */
    public final d<s> m21622i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13566h c13566h = new C13566h(this.f39327f, dVar);
        c13566h.f39326e = obj;
        return c13566h;
    }

    /* renamed from: k */
    public final Object m21621k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13567i c13567i = this.f39327f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        List<C13768f> list = (List) obj;
        if (list.isEmpty()) {
            AbstractC13565g abstractC13565g = (AbstractC13565g) c13567i.f57683a;
            if (abstractC13565g != null) {
                abstractC13565g.close();
            }
        } else {
            AbstractC13565g abstractC13565g2 = (AbstractC13565g) c13567i.f57683a;
            if (abstractC13565g2 != null) {
                abstractC13565g2.mo21623un(list);
            }
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m21620s(Object obj) {
        s sVar = s.a;
        C25225a.m3932a3(obj);
        List<C13768f> list = (List) this.f39326e;
        if (list.isEmpty()) {
            AbstractC13565g abstractC13565g = (AbstractC13565g) this.f39327f.f57683a;
            if (abstractC13565g != null) {
                abstractC13565g.close();
            }
            return sVar;
        }
        AbstractC13565g abstractC13565g2 = (AbstractC13565g) this.f39327f.f57683a;
        if (abstractC13565g2 != null) {
            abstractC13565g2.mo21623un(list);
        }
        return sVar;
    }
}
