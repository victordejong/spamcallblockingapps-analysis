package p193e.p194a.p437c.p438a.p471e.p474c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p471e.p474c.AbstractC8990f;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.semicard.domain.SemicardViewModel$disableSmartSms$1", f = "SemicardViewModel.kt", l = {100}, m = "invokeSuspend")
/* renamed from: e.a.c.a.e.c.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/c/c.class */
public final class C8987c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f27311e;

    /* renamed from: f */
    public final /* synthetic */ C8989e f27312f;

    /* renamed from: g */
    public final /* synthetic */ String f27313g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8987c(C8989e c8989e, String str, d dVar) {
        super(2, dVar);
        this.f27312f = c8989e;
        this.f27313g = str;
    }

    /* renamed from: i */
    public final d<s> m27899i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8987c(this.f27312f, this.f27313g, dVar);
    }

    /* renamed from: k */
    public final Object m27898k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8987c(this.f27312f, this.f27313g, dVar).m27897s(s.a);
    }

    /* renamed from: s */
    public final Object m27897s(Object obj) {
        a aVar = a.a;
        int i = this.f27311e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC10821g abstractC10821g = this.f27312f.f27320b;
            String str = this.f27313g;
            this.f27311e = 1;
            if (abstractC10821g.mo25583f(str, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f27312f.f27319a.mo1001j(C25225a.m3962T1(AbstractC8990f.C8994d.f27326a));
        return s.a;
    }
}
