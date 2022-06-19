package p193e.p194a.p947k.p973n.p976f;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p971l.C16120b;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl$getVideoByPhoneNumber$2", f = "IncomingVideoRepository.kt", l = {37}, m = "invokeSuspend")
/* renamed from: e.a.k.n.f.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/f/g.class */
public final class C16206g extends i implements l<d<? super C16120b>, Object> {

    /* renamed from: e */
    public int f45700e;

    /* renamed from: f */
    public final /* synthetic */ C16201f f45701f;

    /* renamed from: g */
    public final /* synthetic */ String f45702g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16206g(C16201f c16201f, String str, d dVar) {
        super(1, dVar);
        this.f45701f = c16201f;
        this.f45702g = str;
    }

    /* renamed from: d */
    public final Object m17734d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16206g(this.f45701f, this.f45702g, dVar).m17732s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17733l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16206g(this.f45701f, this.f45702g, dVar);
    }

    /* renamed from: s */
    public final Object m17732s(Object obj) {
        a aVar = a.a;
        int i = this.f45700e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16189b abstractC16189b = (AbstractC16189b) this.f45701f.f45687a.get();
            String str = this.f45702g;
            this.f45700e = 1;
            Object mo17752c = abstractC16189b.mo17752c(str, this);
            obj = mo17752c;
            if (mo17752c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C16188a c16188a = (C16188a) obj;
        return c16188a != null ? C16201f.m17745a(this.f45701f, c16188a) : null;
    }
}
