package p193e.p194a.p947k.p973n.p976f;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl$removeVideo$2", f = "IncomingVideoRepository.kt", l = {50}, m = "invokeSuspend")
/* renamed from: e.a.k.n.f.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/f/i.class */
public final class C16208i extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f45706e;

    /* renamed from: f */
    public final /* synthetic */ C16201f f45707f;

    /* renamed from: g */
    public final /* synthetic */ String f45708g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16208i(C16201f c16201f, String str, d dVar) {
        super(1, dVar);
        this.f45707f = c16201f;
        this.f45708g = str;
    }

    /* renamed from: d */
    public final Object m17728d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16208i(this.f45707f, this.f45708g, dVar).m17726s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17727l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16208i(this.f45707f, this.f45708g, dVar);
    }

    /* renamed from: s */
    public final Object m17726s(Object obj) {
        a aVar = a.a;
        int i = this.f45706e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16189b abstractC16189b = (AbstractC16189b) this.f45707f.f45687a.get();
            String str = this.f45708g;
            this.f45706e = 1;
            if (abstractC16189b.mo17749f(str, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
