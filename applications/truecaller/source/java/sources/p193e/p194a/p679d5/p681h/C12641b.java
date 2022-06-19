package p193e.p194a.p679d5.p681h;

import androidx.fragment.app.Fragment;
import com.truecaller.startup_dialogs.StartupDialogType;
import e.a.h.a.a;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.z.c.l;
/* renamed from: e.a.d5.h.b */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/b.class */
public final class C12641b extends AbstractC12663q {

    /* renamed from: j */
    public final StartupDialogType f36825j = StartupDialogType.DEFAULT_DIALER_PROMO;

    /* renamed from: k */
    public final AbstractC8432l f36826k;

    /* renamed from: l */
    public final AbstractC19230g f36827l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12641b(AbstractC8432l abstractC8432l, AbstractC19230g abstractC19230g, C8601l0 c8601l0, AbstractC21881d abstractC21881d, AbstractC18951b0 abstractC18951b0, C20592g c20592g) {
        super((AbstractC20597i) c20592g.f58043v2.m10941a(c20592g, C20592g.f57695p6[177]), "feature_default_dialer_promo_last_timestamp", c8601l0, abstractC21881d, abstractC18951b0);
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC18951b0, "dateHelper");
        l.e(c20592g, "featuresRegistry");
        this.f36826k = abstractC8432l;
        this.f36827l = abstractC19230g;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: b */
    public StartupDialogType mo22768b() {
        return this.f36825j;
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q, p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        return new a();
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: u */
    public boolean mo22771u() {
        return this.f36826k.mo28580d() && this.f36827l.mo13777t() && !this.f36827l.mo13791f();
    }
}
