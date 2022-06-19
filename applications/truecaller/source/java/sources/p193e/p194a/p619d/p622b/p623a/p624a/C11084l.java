package p193e.p194a.p619d.p622b.p623a.p624a;

import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.VoipUserBadge;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipCleverTapAction;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8615v;
import p193e.p194a.p619d.p622b.p623a.AbstractC11105d;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@e(c = "com.truecaller.voip.legacy.incall.ui.LegacyVoipPresenter$listenVoipUserUpdates$1", f = "LegacyVoipPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.b.a.a.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/a/l.class */
public final class C11084l extends i implements p<VoipUser, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f32758e;

    /* renamed from: f */
    public final /* synthetic */ C11077j f32759f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11105d f32760g;

    /* renamed from: e.a.d.b.a.a.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/a/l$a.class */
    public static final class C11085a extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ VoipUser f32762c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11085a(VoipUser voipUser) {
            super(0);
            C11084l.this = r4;
            this.f32762c = voipUser;
        }

        public Object invoke() {
            C11084l c11084l = C11084l.this;
            C11077j c11077j = c11084l.f32759f;
            VoipUserBadge voipUserBadge = this.f32762c.f16289g;
            boolean z = c11084l.f32760g.mo25223T1().f35687a;
            Objects.requireNonNull(c11077j);
            if (voipUserBadge.f16296d && !z) {
                c11077j.f32743i.mo24710i(VoipAnalyticsCallDirection.OUTGOING, VoipCleverTapAction.VOIP_CALL);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11084l(C11077j c11077j, AbstractC11105d abstractC11105d, d dVar) {
        super(2, dVar);
        this.f32759f = c11077j;
        this.f32760g = abstractC11105d;
    }

    /* renamed from: i */
    public final d<s> m25294i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11084l c11084l = new C11084l(this.f32759f, this.f32760g, dVar);
        c11084l.f32758e = obj;
        return c11084l;
    }

    /* renamed from: k */
    public final Object m25293k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11084l c11084l = new C11084l(this.f32759f, this.f32760g, dVar);
        c11084l.f32758e = obj;
        s sVar = s.a;
        c11084l.m25292s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m25292s(Object obj) {
        C25225a.m3932a3(obj);
        VoipUser voipUser = (VoipUser) this.f32758e;
        String str = "New voip user update is received. Voip user: " + voipUser;
        AbstractC11076i abstractC11076i = (AbstractC11076i) this.f32759f.f57683a;
        if (abstractC11076i != null) {
            abstractC11076i.setProfileName(voipUser.f16285c);
        }
        AbstractC11076i abstractC11076i2 = (AbstractC11076i) this.f32759f.f57683a;
        if (abstractC11076i2 != null) {
            abstractC11076i2.setAvatarConfig(C19291g.m13624H(voipUser));
        }
        AbstractC11076i abstractC11076i3 = (AbstractC11076i) this.f32759f.f57683a;
        if (abstractC11076i3 != null) {
            abstractC11076i3.mo25323D(C19291g.m13626G0(voipUser));
        }
        AbstractC11076i abstractC11076i4 = (AbstractC11076i) this.f32759f.f57683a;
        if (abstractC11076i4 != null) {
            abstractC11076i4.mo25321Oy();
        }
        C8615v c8615v = this.f32759f.f32739e;
        C11085a c11085a = new C11085a(voipUser);
        Objects.requireNonNull(c8615v);
        l.e(c11085a, "callback");
        if (c8615v.f26467b != null) {
            AssertionUtil.reportWeirdnessButNeverCrash("Constructor-provided callback is not null. Use invoke()");
        }
        c8615v.m28194b(c11085a);
        return s.a;
    }
}
