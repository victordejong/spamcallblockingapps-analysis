package p193e.p194a.p619d.p670z.p672c;

import com.truecaller.voip.VoipGroupPushNotification;
import com.truecaller.voip.groupcall.call.CallDirection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import p193e.p194a.p619d.p637c0.C11513x0;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.i1;
import q3.a.x2.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$showMissedCallNotification$2", f = "InvitationServicePresenter.kt", l = {337}, m = "invokeSuspend")
/* renamed from: e.a.d.z.c.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/c/j.class */
public final class C12398j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f36176e;

    /* renamed from: f */
    public int f36177f;

    /* renamed from: g */
    public final /* synthetic */ C12382e f36178g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC12093b f36179h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12398j(C12382e c12382e, AbstractC12093b abstractC12093b, d dVar) {
        super(2, dVar);
        this.f36178g = c12382e;
        this.f36179h = abstractC12093b;
    }

    /* renamed from: i */
    public final d<s> m23114i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12398j c12398j = new C12398j(this.f36178g, this.f36179h, dVar);
        c12398j.f36176e = obj;
        return c12398j;
    }

    /* renamed from: k */
    public final Object m23113k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12398j c12398j = new C12398j(this.f36178g, this.f36179h, dVar);
        c12398j.f36176e = obj;
        return c12398j.m23112s(s.a);
    }

    /* renamed from: s */
    public final Object m23112s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f36177f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f36176e;
            VoipGroupPushNotification voipGroupPushNotification = this.f36178g.f36118d;
            if (voipGroupPushNotification == null) {
                return sVar;
            }
            AbstractC12093b abstractC12093b = this.f36179h;
            List<C11513x0> mo23560f = abstractC12093b.mo23560f((C11161a) abstractC12093b.mo23625g().getValue());
            ArrayList arrayList = new ArrayList();
            for (C11513x0 c11513x0 : mo23560f) {
                String str = c11513x0.f33804a;
                if (str != null) {
                    arrayList.add(str);
                }
            }
            Map<String, i1<AbstractC11416j>> mo24749d = this.f36178g.f36125k.mo24749d(i0Var, s1.u.i.d1(arrayList), CallDirection.INCOMING);
            ArrayList arrayList2 = new ArrayList(mo24749d.size());
            for (Map.Entry<String, i1<AbstractC11416j>> entry : mo24749d.entrySet()) {
                arrayList2.add(entry.getValue());
            }
            f<? extends Set<? extends i1<? extends AbstractC11416j>>> kVar = new k<>(s1.u.i.d1(arrayList2));
            C12382e c12382e = this.f36178g;
            ArrayList arrayList3 = new ArrayList();
            for (C11513x0 c11513x02 : mo23560f) {
                String str2 = c11513x02.f33804a;
                if (str2 != null) {
                    arrayList3.add(str2);
                }
            }
            this.f36177f = 1;
            if (c12382e.m23145Nj(kVar, voipGroupPushNotification, arrayList3, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return sVar;
    }
}
