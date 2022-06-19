package p193e.p194a.p717f.p718a.p721b;

import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.service.CallState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$onNewCall$1", f = "OngoingCallPresenter.kt", l = {553}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.r */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/r.class */
public final class C13607r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39450e;

    /* renamed from: f */
    public final /* synthetic */ C13590j f39451f;

    /* renamed from: g */
    public final /* synthetic */ String f39452g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13607r(C13590j c13590j, String str, d dVar) {
        super(2, dVar);
        this.f39451f = c13590j;
        this.f39452g = str;
    }

    /* renamed from: i */
    public final d<s> m21500i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13607r(this.f39451f, this.f39452g, dVar);
    }

    /* renamed from: k */
    public final Object m21499k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13607r(this.f39451f, this.f39452g, dVar).m21498s(s.a);
    }

    /* renamed from: s */
    public final Object m21498s(Object obj) {
        a aVar = a.a;
        int i = this.f39450e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            String str = this.f39452g;
            if (l.a(str, CallState.STATE_DIALING.name())) {
                C13590j c13590j = this.f39451f;
                c13590j.m21400Nj();
                c13590j.m21537bk();
                int i2 = c13590j.f39373m;
                if (i2 != -1) {
                    c13590j.m21538ak(C4013R.string.incallui_status_dialing, i2);
                }
            } else if (l.a(str, CallState.STATE_ACTIVE.name())) {
                this.f39451f.m21540Yj();
            }
            C13590j c13590j2 = this.f39451f;
            this.f39450e = 1;
            if (c13590j2.m21544Uj(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C13590j c13590j3 = this.f39451f;
        C19291g.m13599P0(c13590j3, c13590j3.f39380t.mo21236a(), new C13602m(c13590j3, null));
        return s.a;
    }
}
