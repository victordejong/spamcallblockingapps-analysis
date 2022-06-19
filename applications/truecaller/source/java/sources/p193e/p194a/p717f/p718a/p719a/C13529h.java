package p193e.p194a.p717f.p718a.p719a;

import com.truecaller.incallui.callui.incoming.IncomingCallUIEvent;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.w2.h;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$acceptCall$1", f = "IncomingCallPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f.a.a.h */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/h.class */
public final class C13529h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C13530i f39220e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13529h(C13530i c13530i, d dVar) {
        super(2, dVar);
        this.f39220e = c13530i;
    }

    /* renamed from: i */
    public final d<s> m21681i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13529h(this.f39220e, dVar);
    }

    /* renamed from: k */
    public final Object m21680k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13530i c13530i = this.f39220e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        AbstractC13528g abstractC13528g = (AbstractC13528g) c13530i.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21704L();
        }
        c13530i.f39228p.mo21190q();
        h<IncomingCallUIEvent> hVar = c13530i.f39223k;
        if (hVar != null) {
            hVar.offer(IncomingCallUIEvent.ACCEPT_CLICK);
            return sVar;
        }
        l.l("uiEventsChannel");
        throw null;
    }

    /* renamed from: s */
    public final Object m21679s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC13528g abstractC13528g = (AbstractC13528g) this.f39220e.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21704L();
        }
        this.f39220e.f39228p.mo21190q();
        h<IncomingCallUIEvent> hVar = this.f39220e.f39223k;
        if (hVar != null) {
            hVar.offer(IncomingCallUIEvent.ACCEPT_CLICK);
            return s.a;
        }
        l.l("uiEventsChannel");
        throw null;
    }
}
