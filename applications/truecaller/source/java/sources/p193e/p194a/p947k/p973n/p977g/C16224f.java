package p193e.p194a.p947k.p973n.p977g;

import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoRepositoryImpl$addSingleVideo$2", f = "OutgoingVideoRepository.kt", l = {65}, m = "invokeSuspend")
/* renamed from: e.a.k.n.g.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/g/f.class */
public final class C16224f extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f45736e;

    /* renamed from: f */
    public final /* synthetic */ C16228j f45737f;

    /* renamed from: g */
    public final /* synthetic */ OutgoingVideoDetails f45738g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16224f(C16228j c16228j, OutgoingVideoDetails outgoingVideoDetails, d dVar) {
        super(1, dVar);
        this.f45737f = c16228j;
        this.f45738g = outgoingVideoDetails;
    }

    /* renamed from: d */
    public final Object m17716d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16224f(this.f45737f, this.f45738g, dVar).m17714s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17715l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16224f(this.f45737f, this.f45738g, dVar);
    }

    /* renamed from: s */
    public final Object m17714s(Object obj) {
        a aVar = a.a;
        int i = this.f45736e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16211c abstractC16211c = (AbstractC16211c) this.f45737f.f45747a.get();
            C16209a m17704a = C16228j.m17704a(this.f45737f, this.f45738g);
            this.f45736e = 1;
            if (abstractC16211c.mo17723b(m17704a, this) == aVar) {
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
