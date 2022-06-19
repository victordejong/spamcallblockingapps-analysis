package p193e.p194a.p947k.p973n.p977g;

import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoRepositoryImpl$getVideoByUrl$2", f = "OutgoingVideoRepository.kt", l = {70}, m = "invokeSuspend")
/* renamed from: e.a.k.n.g.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/g/i.class */
public final class C16227i extends i implements l<d<? super OutgoingVideoDetails>, Object> {

    /* renamed from: e */
    public int f45744e;

    /* renamed from: f */
    public final /* synthetic */ C16228j f45745f;

    /* renamed from: g */
    public final /* synthetic */ String f45746g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16227i(C16228j c16228j, String str, d dVar) {
        super(1, dVar);
        this.f45745f = c16228j;
        this.f45746g = str;
    }

    /* renamed from: d */
    public final Object m17707d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16227i(this.f45745f, this.f45746g, dVar).m17705s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17706l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16227i(this.f45745f, this.f45746g, dVar);
    }

    /* renamed from: s */
    public final Object m17705s(Object obj) {
        a aVar = a.a;
        int i = this.f45744e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16211c abstractC16211c = (AbstractC16211c) this.f45745f.f45747a.get();
            String str = this.f45746g;
            this.f45744e = 1;
            Object mo17718g = abstractC16211c.mo17718g(str, this);
            obj = mo17718g;
            if (mo17718g == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C16209a c16209a = (C16209a) obj;
        return c16209a != null ? C16228j.m17703b(this.f45745f, c16209a) : null;
    }
}
