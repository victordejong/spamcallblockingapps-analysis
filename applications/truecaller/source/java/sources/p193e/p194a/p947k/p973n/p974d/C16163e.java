package p193e.p194a.p947k.p973n.p974d;

import java.util.ArrayList;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p971l.C16126d;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.availability.VideoIdAvailabilityRepositoryImpl$addAvailabilities$2", f = "VideoIdAvailabilityRepository.kt", l = {39}, m = "invokeSuspend")
/* renamed from: e.a.k.n.d.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/d/e.class */
public final class C16163e extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f45609e;

    /* renamed from: f */
    public final /* synthetic */ C16165g f45610f;

    /* renamed from: g */
    public final /* synthetic */ List f45611g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16163e(C16165g c16165g, List list, d dVar) {
        super(1, dVar);
        this.f45610f = c16165g;
        this.f45611g = list;
    }

    /* renamed from: d */
    public final Object m17791d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16163e(this.f45610f, this.f45611g, dVar).m17789s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17790l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16163e(this.f45610f, this.f45611g, dVar);
    }

    /* renamed from: s */
    public final Object m17789s(Object obj) {
        a aVar = a.a;
        int i = this.f45609e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            List<C16126d> list = this.f45611g;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C16126d c16126d : list) {
                String str = c16126d.f45438a;
                boolean z = c16126d.f45439b;
                arrayList.add(new C16161c(str, z ? 1 : 0, c16126d.f45440c));
            }
            this.f45609e = 1;
            if (((AbstractC16156a) this.f45610f.f45616b.get()).mo17792b(arrayList, this) == aVar) {
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
