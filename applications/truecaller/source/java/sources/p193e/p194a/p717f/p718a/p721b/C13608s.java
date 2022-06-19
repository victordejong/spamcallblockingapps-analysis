package p193e.p194a.p717f.p718a.p721b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$onResume$1", f = "OngoingCallPresenter.kt", l = {149}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.s */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/s.class */
public final class C13608s extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39453e;

    /* renamed from: f */
    public final /* synthetic */ C13590j f39454f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13608s(C13590j c13590j, d dVar) {
        super(2, dVar);
        this.f39454f = c13590j;
    }

    /* renamed from: i */
    public final d<s> m21497i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13608s(this.f39454f, dVar);
    }

    /* renamed from: k */
    public final Object m21496k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13608s(this.f39454f, dVar).m21495s(s.a);
    }

    /* renamed from: s */
    public final Object m21495s(Object obj) {
        a aVar = a.a;
        int i = this.f39453e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C13590j.m21549Pj(this.f39454f);
            AbstractC13738f abstractC13738f = (AbstractC13738f) C19291g.m13593R0(this.f39454f.f39380t.mo21236a());
            if (abstractC13738f != null) {
                AbstractC13738f abstractC13738f2 = abstractC13738f;
                if (!(abstractC13738f instanceof AbstractC13738f.C13740b)) {
                    abstractC13738f2 = null;
                }
                AbstractC13738f.C13740b c13740b = (AbstractC13738f.C13740b) abstractC13738f2;
                if (c13740b != null) {
                    C13590j c13590j = this.f39454f;
                    C13642g c13642g = c13740b.f39794a;
                    this.f39453e = 1;
                    if (c13590j.m21535dk(c13642g, this) == aVar) {
                        return aVar;
                    }
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
