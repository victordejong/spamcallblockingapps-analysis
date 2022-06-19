package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import com.truecaller.startup_dialogs.fragments.BottomPopupDialogFragment;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p679d5.AbstractC12607b;
import p193e.p194a.p937j4.p939b.p940a.C15569f;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.d5.h.s */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/s.class */
public final class C12666s implements AbstractC12607b {

    /* renamed from: a */
    public final StartupDialogType f36923a = StartupDialogType.POPUP_SOFTWARE_UPDATE;

    /* renamed from: b */
    public final AbstractC21881d f36924b;

    /* renamed from: c */
    public final C15569f f36925c;

    /* renamed from: d */
    public final C8601l0 f36926d;

    /* renamed from: e */
    public final String f36927e;

    @Inject
    public C12666s(AbstractC21881d abstractC21881d, C15569f c15569f, C8601l0 c8601l0, String str) {
        l.e(abstractC21881d, "generalSettings");
        l.e(c15569f, "notificationDao");
        l.e(c8601l0, "timestampUtil");
        l.e(str, "currentAppVersion");
        this.f36924b = abstractC21881d;
        this.f36925c = c15569f;
        this.f36926d = c8601l0;
        this.f36927e = str;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: a */
    public Intent mo22769a(Activity activity) {
        l.e(activity, "fromActivity");
        C17422k.m16063o(activity);
        return null;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: b */
    public StartupDialogType mo22768b() {
        return this.f36923a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        this.f36924b.putLong("key_new_version_last_time", this.f36926d.m28258c());
        this.f36924b.m8947l("key_new_version_promo_times");
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    public Object mo22765e(d<? super Boolean> dVar) {
        Boolean bool = Boolean.FALSE;
        InternalTruecallerNotification m18667m = this.f36925c.m18667m();
        Boolean bool2 = bool;
        if (m18667m != null) {
            l.d(m18667m, "notificationDao.software…dateIfAny ?: return false");
            String m34847j = m18667m.m34847j("v");
            bool2 = bool;
            if (m34847j != null) {
                l.d(m34847j, "notification.getApplicat….VERSION) ?: return false");
                if (this.f36927e.compareTo(m34847j) >= 0) {
                    return bool;
                }
                long j = this.f36924b.getLong("key_new_version_last_time", 0L);
                int i = this.f36924b.getInt("key_new_version_promo_times", 0);
                bool2 = Boolean.valueOf(i != 0 ? i != 1 ? this.f36926d.m28260a(j, 30L, TimeUnit.DAYS) : this.f36926d.m28260a(j, 7L, TimeUnit.DAYS) : this.f36926d.m28260a(j, 1L, TimeUnit.DAYS));
            }
        }
        return bool2;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        BottomPopupDialogFragment.Action action = BottomPopupDialogFragment.Action.SOFTWARE_UPDATE;
        l.e(action, "action");
        BottomPopupDialogFragment bottomPopupDialogFragment = new BottomPopupDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("action", action.name());
        bottomPopupDialogFragment.setArguments(bundle);
        return bottomPopupDialogFragment;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return false;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return false;
    }
}
