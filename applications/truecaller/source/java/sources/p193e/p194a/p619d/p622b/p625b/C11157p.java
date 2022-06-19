package p193e.p194a.p619d.p622b.p625b;

import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.util.VoipSearchDirection;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1213s2.AbstractC20194a;
import p193e.p194a.p1213s2.C20200f;
import p193e.p194a.p619d.p637c0.AbstractC11463q1;
import p193e.p194a.p619d.p637c0.C11467r1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$resolveCallerAsync$1", f = "LegacyIncomingVoipServicePresenter.kt", l = {191}, m = "invokeSuspend")
/* renamed from: e.a.d.b.b.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/p.class */
public final class C11157p extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public int f32986e;

    /* renamed from: f */
    public final /* synthetic */ C11139b f32987f;

    /* renamed from: g */
    public final /* synthetic */ String f32988g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11157p(C11139b c11139b, String str, d dVar) {
        super(2, dVar);
        this.f32987f = c11139b;
        this.f32988g = str;
    }

    /* renamed from: i */
    public final d<s> m25093i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11157p(this.f32987f, this.f32988g, dVar);
    }

    /* renamed from: k */
    public final Object m25092k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11157p(this.f32987f, this.f32988g, dVar).m25091s(s.a);
    }

    /* renamed from: s */
    public final Object m25091s(Object obj) {
        Boolean bool = Boolean.FALSE;
        a aVar = a.a;
        int i = this.f32986e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC11463q1 abstractC11463q1 = this.f32987f.f32944n;
            String str = this.f32988g;
            if (str == null) {
                return bool;
            }
            VoipSearchDirection voipSearchDirection = VoipSearchDirection.INCOMING;
            this.f32986e = 1;
            Object m24635a = ((C11467r1) abstractC11463q1).m24635a(str, voipSearchDirection, this);
            obj = m24635a;
            if (m24635a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        VoipUser voipUser = (VoipUser) obj;
        if (voipUser == null) {
            this.f32987f.m25134Pj(VoipState.FAILED, VoipStateReason.GET_PHONE_FAILED);
            return bool;
        }
        C11139b c11139b = this.f32987f;
        Objects.requireNonNull(c11139b);
        if (voipUser.f16287e) {
            c11139b.f32951u.mo11366a();
        } else {
            AbstractC20194a abstractC20194a = c11139b.f32951u;
            l.e(voipUser, "$this$toCallAnnouncementInfo");
            abstractC20194a.mo11365b(new C20200f(voipUser.f16285c, voipUser.f16283a, true, voipUser.f16291i));
        }
        C11139b c11139b2 = this.f32987f;
        c11139b2.f32935e = voipUser;
        c11139b2.f32941k.offer(voipUser);
        this.f32987f.f32937g = true;
        return Boolean.TRUE;
    }
}
