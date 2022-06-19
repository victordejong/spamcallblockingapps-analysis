package p193e.p194a.p773g.p774a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$onBizSurveyResult$1", f = "AfterCallBasePresenter.kt", l = {1376}, m = "invokeSuspend")
/* renamed from: e.a.g.a.s */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/s.class */
public final class C14224s extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41102e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC14205m f41103f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14224s(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f41103f = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20367i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14224s(this.f41103f, dVar);
    }

    /* renamed from: k */
    public final Object m20366k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14224s(this.f41103f, dVar).m20365s(s.a);
    }

    /* renamed from: s */
    public final Object m20365s(Object obj) {
        a aVar = a.a;
        int i = this.f41102e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Contact contact = this.f41103f.m20451Oj().f11539f;
            if (contact != null) {
                AbstractC14205m abstractC14205m = this.f41103f;
                String str = abstractC14205m.m20451Oj().f11535b;
                l.d(contact, AnalyticsConstants.CONTACT);
                this.f41102e = 1;
                if (abstractC14205m.m20437Zj(str, contact, this) == aVar) {
                    return aVar;
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
