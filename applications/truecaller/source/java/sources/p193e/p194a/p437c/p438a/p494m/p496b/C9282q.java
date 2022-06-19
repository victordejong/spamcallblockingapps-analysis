package p193e.p194a.p437c.p438a.p494m.p496b;

import com.truecaller.insights.p168ui.p169qa.presentation.SmartSmsFeatureFilterStatus;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.qa.presentation.SmartSmsFeatureFilterViewModel$blockSenderForSmartSmsFeatures$1", f = "SmartSmsFeatureFilterViewModel.kt", l = {48}, m = "invokeSuspend")
/* renamed from: e.a.c.a.m.b.q */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/q.class */
public final class C9282q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f28245e;

    /* renamed from: f */
    public final /* synthetic */ C9276o f28246f;

    /* renamed from: g */
    public final /* synthetic */ String f28247g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9282q(C9276o c9276o, String str, d dVar) {
        super(2, dVar);
        this.f28246f = c9276o;
        this.f28247g = str;
    }

    /* renamed from: i */
    public final d<s> m27747i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9282q(this.f28246f, this.f28247g, dVar);
    }

    /* renamed from: k */
    public final Object m27746k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9282q(this.f28246f, this.f28247g, dVar).m27745s(s.a);
    }

    /* renamed from: s */
    public final Object m27745s(Object obj) {
        a aVar = a.a;
        int i = this.f28245e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10821g abstractC10821g = this.f28246f.f28229f;
                String str = this.f28247g;
                this.f28245e = 1;
                if (abstractC10821g.mo25583f(str, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            this.f28246f.f28228e.mo1001j(SmartSmsFeatureFilterStatus.SUCCESS);
        } catch (Exception e) {
            this.f28246f.f28228e.mo1001j(SmartSmsFeatureFilterStatus.FAILURE);
        }
        return s.a;
    }
}
