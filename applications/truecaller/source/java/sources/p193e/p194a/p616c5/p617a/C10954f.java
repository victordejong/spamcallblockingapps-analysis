package p193e.p194a.p616c5.p617a;

import com.facebook.AccessToken;
import com.razorpay.AnalyticsConstants;
import com.truecaller.social_login.SocialAccountProfile;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c5.a.f */
/* loaded from: classes13-dex2jar.jar:e/a/c5/a/f.class */
public final class C10954f extends AbstractC20574a<AbstractC10951d> implements AbstractC10950c {

    /* renamed from: d */
    public final List<String> f32466d = C25225a.m3962T1(AnalyticsConstants.EMAIL);

    /* renamed from: e */
    public final String f32467e = "id,first_name,middle_name,last_name,email,location,picture.width(500).height(500)";

    /* renamed from: f */
    public final f f32468f;

    /* renamed from: g */
    public final f f32469g;

    /* renamed from: h */
    public final AbstractC10956h f32470h;

    /* renamed from: i */
    public final C10955g f32471i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C10954f(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC10956h abstractC10956h, C10955g c10955g) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC10956h, "facebookSignInProxy");
        l.e(c10955g, "facebookProfileResponseParser");
        this.f32468f = fVar;
        this.f32469g = fVar2;
        this.f32470h = abstractC10956h;
        this.f32471i = c10955g;
    }

    /* renamed from: Ij */
    public final void m25476Ij(SocialAccountProfile socialAccountProfile, boolean z) {
        AbstractC10951d abstractC10951d = (AbstractC10951d) this.f57683a;
        if (abstractC10951d != null) {
            abstractC10951d.mo25483q(null, z);
        }
    }

    /* renamed from: Jj */
    public final void m25475Jj(boolean z) {
        Objects.requireNonNull((C10958j) this.f32470h);
        AccessToken.C0907c c0907c = AccessToken.f2460l;
        AccessToken m42030b = AccessToken.C0907c.m42030b();
        if (m42030b != null && !m42030b.m42035a()) {
            d.w2(this, (f) null, (j0) null, new C10952e(this, m42030b, null), 3, (Object) null);
        } else if (z) {
            m25476Ij(null, true);
        } else {
            AbstractC10951d abstractC10951d = (AbstractC10951d) this.f57683a;
            if (abstractC10951d == null) {
                return;
            }
            abstractC10951d.mo25484ma(this.f32466d);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.c5.a.d, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC10951d abstractC10951d) {
        AbstractC10951d abstractC10951d2 = abstractC10951d;
        l.e(abstractC10951d2, "presenterView");
        this.f57683a = abstractC10951d2;
        m25475Jj(false);
    }
}
