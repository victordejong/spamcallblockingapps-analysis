package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import java.util.concurrent.TimeUnit;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p679d5.AbstractC12607b;
import s1.z.c.l;
/* renamed from: e.a.d5.h.t */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/t.class */
public abstract class AbstractC12667t implements AbstractC12607b {

    /* renamed from: a */
    public final String f36928a;

    /* renamed from: b */
    public final AbstractC21881d f36929b;

    /* renamed from: c */
    public final C8601l0 f36930c;

    public AbstractC12667t(String str, AbstractC21881d abstractC21881d, C8601l0 c8601l0) {
        l.e(str, "lastShowtimeTimestampKey");
        l.e(abstractC21881d, "generalSettings");
        l.e(c8601l0, "timestampUtil");
        this.f36928a = str;
        this.f36929b = abstractC21881d;
        this.f36930c = c8601l0;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: a */
    public Intent mo22769a(Activity activity) {
        l.e(activity, "fromActivity");
        C17422k.m16063o(activity);
        return null;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
        if (startupDialogDismissReason == StartupDialogDismissReason.USER_PRESSED_DISMISS_BUTTON) {
            long j = this.f36929b.getLong("feature_unimportant_promo_dismissed_delay_days", 14L);
            long m28258c = this.f36930c.m28258c();
            this.f36929b.putLong(this.f36928a, TimeUnit.DAYS.toMillis(j) + m28258c);
        }
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        long m28258c = this.f36930c.m28258c();
        this.f36929b.putLong("key_unimportant_promo_last_time", m28258c);
        this.f36929b.putLong(this.f36928a, m28258c);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return false;
    }
}
