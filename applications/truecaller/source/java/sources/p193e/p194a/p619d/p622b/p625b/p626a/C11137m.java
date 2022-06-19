package p193e.p194a.p619d.p622b.p625b.p626a;

import com.truecaller.log.AssertionUtil;
import com.truecaller.themes.C4621R;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.VoipUserBadge;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipCleverTapAction;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8615v;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@e(c = "com.truecaller.voip.legacy.incoming.ui.LegacyIncomingVoipPresenter$listenUserUpdates$1", f = "LegacyIncomingVoipPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.b.b.a.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/a/m.class */
public final class C11137m extends i implements p<VoipUser, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f32930e;

    /* renamed from: f */
    public final /* synthetic */ C11135l f32931f;

    /* renamed from: e.a.d.b.b.a.m$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/b/a/m$a.class */
    public static final class C11138a extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ VoipUser f32933c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11138a(VoipUser voipUser) {
            super(0);
            C11137m.this = r4;
            this.f32933c = voipUser;
        }

        public Object invoke() {
            C11135l c11135l = C11137m.this.f32931f;
            VoipUserBadge voipUserBadge = this.f32933c.f16289g;
            Objects.requireNonNull(c11135l);
            if (voipUserBadge.f16296d) {
                c11135l.f32927j.mo24710i(VoipAnalyticsCallDirection.INCOMING, VoipCleverTapAction.VOIP_CALL);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11137m(C11135l c11135l, d dVar) {
        super(2, dVar);
        this.f32931f = c11135l;
    }

    /* renamed from: i */
    public final d<s> m25144i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11137m c11137m = new C11137m(this.f32931f, dVar);
        c11137m.f32930e = obj;
        return c11137m;
    }

    /* renamed from: k */
    public final Object m25143k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11137m c11137m = new C11137m(this.f32931f, dVar);
        c11137m.f32930e = obj;
        s sVar = s.a;
        c11137m.m25142s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m25142s(Object obj) {
        AbstractC11134k abstractC11134k;
        C25225a.m3932a3(obj);
        VoipUser voipUser = (VoipUser) this.f32930e;
        AbstractC11134k abstractC11134k2 = (AbstractC11134k) this.f32931f.f57683a;
        if (abstractC11134k2 != null) {
            abstractC11134k2.setProfileName(voipUser.f16285c);
        }
        AbstractC11134k abstractC11134k3 = (AbstractC11134k) this.f32931f.f57683a;
        if (abstractC11134k3 != null) {
            abstractC11134k3.setAvatarConfig(C19291g.m13624H(voipUser));
        }
        AbstractC11134k abstractC11134k4 = (AbstractC11134k) this.f32931f.f57683a;
        if (abstractC11134k4 != null) {
            abstractC11134k4.mo25167D(C19291g.m13626G0(voipUser));
        }
        C11135l c11135l = this.f32931f;
        Objects.requireNonNull(c11135l);
        Integer num = voipUser.f16288f;
        VoipUserBadge voipUserBadge = voipUser.f16289g;
        Integer valueOf = (!voipUserBadge.f16293a || num == null) ? voipUserBadge.f16297e ? Integer.valueOf(C4781R.color.tcx_voip_cred_ripple_color) : voipUserBadge.f16295c ? Integer.valueOf(C4621R.color.tcx_goldTextPrimary) : voipUserBadge.f16296d ? Integer.valueOf(C4781R.color.tcx_voip_priority_color) : (voipUser.f16291i || voipUser.f16292j) ? null : Integer.valueOf(C4781R.color.tcx_voip_identified_color) : Integer.valueOf(C4781R.color.tcx_voip_spam_color);
        if (valueOf != null && (abstractC11134k = (AbstractC11134k) c11135l.f57683a) != null) {
            abstractC11134k.mo25164L0(valueOf.intValue());
        }
        C8615v c8615v = this.f32931f.f32924g;
        C11138a c11138a = new C11138a(voipUser);
        Objects.requireNonNull(c8615v);
        l.e(c11138a, "callback");
        if (c8615v.f26467b != null) {
            AssertionUtil.reportWeirdnessButNeverCrash("Constructor-provided callback is not null. Use invoke()");
        }
        c8615v.m28194b(c11138a);
        return s.a;
    }
}
