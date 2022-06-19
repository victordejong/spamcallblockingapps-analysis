package p193e.p194a.p682e.p684b.p690j;

import android.widget.CompoundButton;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdToggleSource;
import com.truecaller.p183ui.settings.callerid.CallerIdSettingsActivity;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
/* renamed from: e.a.e.b.j.c */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/j/c.class */
public final class C12929c implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CallerIdSettingsActivity f37537a;

    public C12929c(CallerIdSettingsActivity callerIdSettingsActivity) {
        this.f37537a = callerIdSettingsActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C12938l c12938l = (C12938l) this.f37537a.m34490qa();
        if (c12938l.f37555n.mo11360c()) {
            c12938l.f37556o.mo11353c(null, AnnounceCallerIdToggleSource.CALLER_ID_SETTINGS, z, c12938l.f37557p.mo16949h(NewFeatureLabelType.ANNOUNCE_CALL));
            c12938l.f37555n.mo11358k(z);
            return;
        }
        AbstractC12935i abstractC12935i = (AbstractC12935i) c12938l.f57683a;
        if (abstractC12935i != null) {
            abstractC12935i.mo22381y4(PremiumLaunchContext.ANNOUNCE_CALLER_ID, "premiumAnnounceCallerId");
        }
        AbstractC12935i abstractC12935i2 = (AbstractC12935i) c12938l.f57683a;
        if (abstractC12935i2 == null) {
            return;
        }
        abstractC12935i2.mo22391a7(false);
    }
}
