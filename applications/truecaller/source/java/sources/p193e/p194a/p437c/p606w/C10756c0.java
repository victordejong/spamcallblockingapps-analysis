package p193e.p194a.p437c.p606w;

import com.truecaller.insights.models.InsightsDomain;
import com.truecaller.insights.models.smartcards.ActionStateEntity;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.insights.repository.OtpRepositoryImpl$getLatestValidOtp$1", f = "OtpRepository.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.w.c0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/c0.class */
public final class C10756c0 extends i implements q<InsightsDomain.C4061e, List<? extends ActionStateEntity>, d<? super InsightsDomain.C4061e>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f31943e;

    /* renamed from: f */
    public /* synthetic */ Object f31944f;

    public C10756c0(d dVar) {
        super(3, dVar);
    }

    /* renamed from: h */
    public final Object m25664h(Object obj, Object obj2, Object obj3) {
        List list = (List) obj2;
        d dVar = (d) obj3;
        l.e(list, "actionStates");
        l.e(dVar, "continuation");
        C10756c0 c10756c0 = new C10756c0(dVar);
        c10756c0.f31943e = (InsightsDomain.C4061e) obj;
        c10756c0.f31944f = list;
        return c10756c0.m25663s(s.a);
    }

    /* renamed from: s */
    public final Object m25663s(Object obj) {
        Object obj2;
        C25225a.m3932a3(obj);
        InsightsDomain.C4061e c4061e = (InsightsDomain.C4061e) this.f31943e;
        List list = (List) this.f31944f;
        InsightsDomain.C4061e c4061e2 = null;
        if (c4061e != null) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it.next();
                if (Boolean.valueOf(((ActionStateEntity) obj2).getEntityId() == c4061e.getMsgId()).booleanValue()) {
                    break;
                }
            }
            ActionStateEntity actionStateEntity = (ActionStateEntity) obj2;
            c4061e2 = c4061e;
            if (actionStateEntity != null) {
                c4061e2 = actionStateEntity.getState() != 1 ? InsightsDomain.C4061e.m35238a(c4061e, 0L, 0L, null, null, null, false, null, C10480a.m26044M2(actionStateEntity), null, false, null, 1919) : null;
            }
        }
        return c4061e2;
    }
}
