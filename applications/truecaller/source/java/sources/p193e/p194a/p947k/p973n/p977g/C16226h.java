package p193e.p194a.p947k.p973n.p977g;

import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoRepositoryImpl$getLastVideo$2", f = "OutgoingVideoRepository.kt", l = {78}, m = "invokeSuspend")
/* renamed from: e.a.k.n.g.h */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/g/h.class */
public final class C16226h extends i implements l<d<? super OutgoingVideoDetails>, Object> {

    /* renamed from: e */
    public int f45742e;

    /* renamed from: f */
    public final /* synthetic */ C16228j f45743f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16226h(C16228j c16228j, d dVar) {
        super(1, dVar);
        this.f45743f = c16228j;
    }

    /* renamed from: d */
    public final Object m17710d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16226h(this.f45743f, dVar).m17708s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17709l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16226h(this.f45743f, dVar);
    }

    /* renamed from: s */
    public final Object m17708s(Object obj) {
        a aVar = a.a;
        int i = this.f45742e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f45742e = 1;
            Object mo17719f = ((AbstractC16211c) this.f45743f.f45747a.get()).mo17719f(this);
            obj = mo17719f;
            if (mo17719f == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C16209a c16209a = (C16209a) obj;
        return c16209a != null ? C16228j.m17703b(this.f45743f, c16209a) : null;
    }
}
