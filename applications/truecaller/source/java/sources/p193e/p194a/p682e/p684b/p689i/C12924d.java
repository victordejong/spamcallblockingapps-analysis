package p193e.p194a.p682e.p684b.p689i;

import com.truecaller.TrueApp;
import com.truecaller.p183ui.settings.appearance.ThemeType;
import com.truecaller.settings.CallingSettings;
import java.util.HashMap;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.e.b.i.d */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/i/d.class */
public final class C12924d extends AbstractC20574a<AbstractC12923c> implements AbstractC20580e {

    /* renamed from: d */
    public final f f37529d;

    /* renamed from: e */
    public final CallingSettings f37530e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12924d(@Named("UI") f fVar, CallingSettings callingSettings) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(callingSettings, "callingSettings");
        this.f37529d = fVar;
        this.f37530e = callingSettings;
    }

    /* renamed from: Ij */
    public void m22403Ij(String str, String str2, String str3) {
        l.e(str, "analyticsContext");
        l.e(str2, "setting");
        l.e(str3, "state");
        HashMap hashMap = new HashMap();
        hashMap.put("Context", str);
        hashMap.put("Setting", str2);
        hashMap.put("State", str3);
        TrueApp m36032b0 = TrueApp.m36032b0();
        l.d(m36032b0, "TrueApp.getApp()");
        C22128a.m8711G0("SettingChanged", null, hashMap, null, "event.build()", m36032b0.f9587d);
    }

    /* renamed from: Jj */
    public void m22402Jj(ThemeType themeType) {
        l.e(themeType, "themeType");
        AbstractC12923c abstractC12923c = (AbstractC12923c) this.f57683a;
        if (abstractC12923c != null) {
            abstractC12923c.mo22404v(themeType);
        }
    }
}
