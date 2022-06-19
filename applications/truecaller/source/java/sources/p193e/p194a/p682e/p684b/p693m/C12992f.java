package p193e.p194a.p682e.p684b.p693m;

import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.p183ui.settings.SettingsCategory;
import javax.inject.Inject;
import p193e.p194a.p1066n.AbstractC18320e;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p684b.AbstractC12919g;
import s1.z.c.l;
/* renamed from: e.a.e.b.m.f */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/m/f.class */
public final class C12992f extends AbstractC20576b<AbstractC12991e> implements AbstractC12989c {

    /* renamed from: b */
    public final AbstractC12919g f37715b;

    /* renamed from: c */
    public final AbstractC18320e f37716c;

    /* renamed from: d */
    public final CallRecordingManager f37717d;

    /* renamed from: e */
    public final AbstractC12990d f37718e;

    @Inject
    public C12992f(C12988b c12988b, AbstractC12919g abstractC12919g, AbstractC18320e abstractC18320e, CallRecordingManager callRecordingManager, AbstractC12990d abstractC12990d) {
        l.e(c12988b, "mainSettingsHelper");
        l.e(abstractC12919g, "settingsUIPref");
        l.e(abstractC18320e, "backupAvailabilityProvider");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(abstractC12990d, "router");
        this.f37715b = abstractC12919g;
        this.f37716c = abstractC18320e;
        this.f37717d = callRecordingManager;
        this.f37718e = abstractC12990d;
    }

    @Override // p193e.p194a.p682e.p684b.p693m.AbstractC12989c
    /* renamed from: Gc */
    public void mo22276Gc(SettingsCategory settingsCategory, String str) {
        l.e(settingsCategory, "settingsCategory");
        C12864a2.m22552h0(this.f37718e, settingsCategory, null, str, 2, null);
    }

    @Override // p193e.p194a.p682e.p684b.p693m.AbstractC12989c
    /* renamed from: t4 */
    public void mo22275t4() {
        AbstractC12991e abstractC12991e = (AbstractC12991e) this.f57683a;
        if (abstractC12991e != null) {
            abstractC12991e.mo22277wk(this.f37715b.mo22420a());
        }
        boolean z = this.f37715b.mo22420a() && this.f37716c.mo15284a();
        AbstractC12991e abstractC12991e2 = (AbstractC12991e) this.f57683a;
        if (abstractC12991e2 != null) {
            abstractC12991e2.mo22278fy(z);
        }
    }
}
