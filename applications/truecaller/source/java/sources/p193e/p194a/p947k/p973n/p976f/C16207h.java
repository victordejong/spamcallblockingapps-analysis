package p193e.p194a.p947k.p973n.p976f;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p971l.C16120b;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl$getVideoByUrl$2", f = "IncomingVideoRepository.kt", l = {33}, m = "invokeSuspend")
/* renamed from: e.a.k.n.f.h */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/f/h.class */
public final class C16207h extends i implements l<d<? super C16120b>, Object> {

    /* renamed from: e */
    public int f45703e;

    /* renamed from: f */
    public final /* synthetic */ C16201f f45704f;

    /* renamed from: g */
    public final /* synthetic */ String f45705g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16207h(C16201f c16201f, String str, d dVar) {
        super(1, dVar);
        this.f45704f = c16201f;
        this.f45705g = str;
    }

    /* renamed from: d */
    public final Object m17731d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16207h(this.f45704f, this.f45705g, dVar).m17729s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17730l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16207h(this.f45704f, this.f45705g, dVar);
    }

    /* renamed from: s */
    public final Object m17729s(Object obj) {
        a aVar = a.a;
        int i = this.f45703e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16189b abstractC16189b = (AbstractC16189b) this.f45704f.f45687a.get();
            String str = this.f45705g;
            this.f45703e = 1;
            Object mo17750e = abstractC16189b.mo17750e(str, this);
            obj = mo17750e;
            if (mo17750e == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C16188a c16188a = (C16188a) obj;
        return c16188a != null ? C16201f.m17745a(this.f45704f, c16188a) : null;
    }
}
