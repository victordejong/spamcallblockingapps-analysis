package p193e.p194a.p679d5.p680g;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.d5.g.m */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/m.class */
public final class C12634m implements AbstractC12633l {

    /* renamed from: a */
    public Boolean f36801a;

    /* renamed from: b */
    public StartupDialogEvent.Type f36802b;

    /* renamed from: c */
    public final AbstractC19462a f36803c;

    @Inject
    public C12634m(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f36803c = abstractC19462a;
    }

    /* renamed from: a */
    public final void m22804a(StartupDialogEvent.Action action) {
        StartupDialogEvent.Type type = this.f36802b;
        if (type != null) {
            this.f36803c.mo13274b(new StartupDialogEvent(type, action, null, null, this.f36801a, 12));
        }
    }
}
