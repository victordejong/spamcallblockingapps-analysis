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
@e(c = "com.truecaller.insights.ui.qa.presentation.SmartSmsFeatureFilterViewModel$allowSenderForSmartSmsFeatures$1", f = "SmartSmsFeatureFilterViewModel.kt", l = {37}, m = "invokeSuspend")
/* renamed from: e.a.c.a.m.b.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/p.class */
public final class C9281p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f28242e;

    /* renamed from: f */
    public final /* synthetic */ C9276o f28243f;

    /* renamed from: g */
    public final /* synthetic */ String f28244g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9281p(C9276o c9276o, String str, d dVar) {
        super(2, dVar);
        this.f28243f = c9276o;
        this.f28244g = str;
    }

    /* renamed from: i */
    public final d<s> m27750i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9281p(this.f28243f, this.f28244g, dVar);
    }

    /* renamed from: k */
    public final Object m27749k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9281p(this.f28243f, this.f28244g, dVar).m27748s(s.a);
    }

    /* renamed from: s */
    public final Object m27748s(Object obj) {
        a aVar = a.a;
        int i = this.f28242e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10821g abstractC10821g = this.f28243f.f28229f;
                String str = this.f28244g;
                this.f28242e = 1;
                if (abstractC10821g.mo25581h(str, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            this.f28243f.f28228e.mo1001j(SmartSmsFeatureFilterStatus.SUCCESS);
        } catch (Exception e) {
            this.f28243f.f28228e.mo1001j(SmartSmsFeatureFilterStatus.FAILURE);
        }
        return s.a;
    }
}
