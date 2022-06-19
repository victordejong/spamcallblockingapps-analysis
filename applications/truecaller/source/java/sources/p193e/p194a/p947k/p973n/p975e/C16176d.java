package p193e.p194a.p947k.p973n.p975e;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl$removeAll$2", f = "HiddenContactRepository.kt", l = {56}, m = "invokeSuspend")
/* renamed from: e.a.k.n.e.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/e/d.class */
public final class C16176d extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f45642e;

    /* renamed from: f */
    public final /* synthetic */ C16167b f45643f;

    /* renamed from: g */
    public final /* synthetic */ List f45644g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16176d(C16167b c16167b, List list, d dVar) {
        super(1, dVar);
        this.f45643f = c16167b;
        this.f45644g = list;
    }

    /* renamed from: d */
    public final Object m17763d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16176d(this.f45643f, this.f45644g, dVar).m17761s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17762l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16176d(this.f45643f, this.f45644g, dVar);
    }

    /* renamed from: s */
    public final Object m17761s(Object obj) {
        a aVar = a.a;
        int i = this.f45642e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16177e abstractC16177e = this.f45643f.f45617a;
            List<String> list = this.f45644g;
            this.f45642e = 1;
            if (abstractC16177e.mo17759b(list, this) == aVar) {
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
