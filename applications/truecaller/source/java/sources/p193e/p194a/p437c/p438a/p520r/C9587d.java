package p193e.p194a.p437c.p438a.p520r;

import com.truecaller.insights.commons.model.InsightsFilterType;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.utils.InsightsFilterUtilsKt$filterBlockedSenders$blockSenderPredicate$1$1", f = "InsightsFilterUtils.kt", l = {23}, m = "invokeSuspend")
/* renamed from: e.a.c.a.r.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/r/d.class */
public final class C9587d extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public int f29001e;

    /* renamed from: f */
    public final /* synthetic */ C9588e f29002f;

    /* renamed from: g */
    public final /* synthetic */ c0 f29003g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9587d(C9588e c9588e, c0 c0Var, d dVar) {
        super(2, dVar);
        this.f29002f = c9588e;
        this.f29003g = c0Var;
    }

    /* renamed from: i */
    public final d<s> m27411i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9587d(this.f29002f, this.f29003g, dVar);
    }

    /* renamed from: k */
    public final Object m27410k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9587d(this.f29002f, this.f29003g, dVar).m27409s(s.a);
    }

    /* renamed from: s */
    public final Object m27409s(Object obj) {
        a aVar = a.a;
        int i = this.f29001e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f29001e = 1;
            Object mo19539c = this.f29002f.f29004b.mo19539c((String) this.f29003g.a, this);
            obj = mo19539c;
            if (mo19539c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return Boolean.valueOf(C17891a1.C17902k.m15689C0((InsightsFilterType) obj));
    }
}
