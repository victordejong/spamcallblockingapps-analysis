package p193e.p194a.p437c.p438a.p471e.p474c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p471e.p474c.AbstractC8990f;
import p193e.p194a.p437c.p438a.p471e.p475d.AbstractC8995a;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.semicard.domain.SemicardViewModel$resetDefaultStateForSmartSmsFeatures$1", f = "SemicardViewModel.kt", l = {95}, m = "invokeSuspend")
/* renamed from: e.a.c.a.e.c.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/c/d.class */
public final class C8988d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f27314e;

    /* renamed from: f */
    public final /* synthetic */ C8989e f27315f;

    /* renamed from: g */
    public final /* synthetic */ String f27316g;

    /* renamed from: h */
    public final /* synthetic */ boolean f27317h;

    /* renamed from: i */
    public final /* synthetic */ String f27318i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8988d(C8989e c8989e, String str, boolean z, String str2, d dVar) {
        super(2, dVar);
        this.f27315f = c8989e;
        this.f27316g = str;
        this.f27317h = z;
        this.f27318i = str2;
    }

    /* renamed from: i */
    public final d<s> m27896i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8988d(this.f27315f, this.f27316g, this.f27317h, this.f27318i, dVar);
    }

    /* renamed from: k */
    public final Object m27895k(Object obj, Object obj2) {
        return m27896i(obj, (d) obj2).m27894s(s.a);
    }

    /* renamed from: s */
    public final Object m27894s(Object obj) {
        a aVar = a.a;
        int i = this.f27314e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f27315f.m27893c(new AbstractC8995a.AbstractC8996a.C8998b(this.f27316g, this.f27317h, this.f27318i));
            AbstractC10821g abstractC10821g = this.f27315f.f27320b;
            String str = this.f27316g;
            this.f27314e = 1;
            if (abstractC10821g.mo25579j(str, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f27315f.f27319a.mo1001j(s1.u.i.T(new AbstractC8990f[]{AbstractC8990f.C8994d.f27326a, AbstractC8990f.C8992b.f27324a}));
        return s.a;
    }
}
