package p193e.p194a.p437c.p552i.p569m;

import com.truecaller.insights.models.states.InsightState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.core.sync.InsightsSyncManagerImpl$setLastSyncedMessageId$1", f = "InsightsSyncManager.kt", l = {197, 199}, m = "invokeSuspend")
/* renamed from: e.a.c.i.m.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/m/e.class */
public final class C10434e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f31085e;

    /* renamed from: f */
    public final /* synthetic */ C10425d f31086f;

    /* renamed from: g */
    public final /* synthetic */ String f31087g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10434e(C10425d c10425d, String str, d dVar) {
        super(2, dVar);
        this.f31086f = c10425d;
        this.f31087g = str;
    }

    /* renamed from: i */
    public final d<s> m26152i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C10434e(this.f31086f, this.f31087g, dVar);
    }

    /* renamed from: k */
    public final Object m26151k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C10434e(this.f31086f, this.f31087g, dVar).m26150s(s.a);
    }

    /* renamed from: s */
    public final Object m26150s(Object obj) {
        a aVar = a.a;
        int i = this.f31085e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC10009n abstractC10009n = this.f31086f.f31032f;
            this.f31085e = 1;
            Object mo26929c = abstractC10009n.mo26929c(this);
            obj = mo26929c;
            if (mo26929c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        InsightState insightState = (InsightState) obj;
        insightState.setLastUpdatedData(this.f31087g);
        AbstractC10009n abstractC10009n2 = this.f31086f.f31032f;
        this.f31085e = 2;
        if (abstractC10009n2.mo26914r(insightState, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
