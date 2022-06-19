package p193e.p194a.p717f.p734z.p737o0.p738b;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.callrecording.CallRecordingManager;
import javax.inject.Inject;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import p193e.p194a.p717f.p733y.AbstractC13792v;
import p193e.p194a.p717f.p734z.p735m0.AbstractC13831a;
import s1.z.c.l;
/* renamed from: e.a.f.z.o0.b.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/o0/b/c.class */
public final class C13848c extends AbstractC20576b<AbstractC13847b> implements AbstractC20580e {

    /* renamed from: b */
    public final AbstractC13762c f40177b;

    /* renamed from: c */
    public final AbstractC13792v f40178c;

    /* renamed from: d */
    public final CallRecordingManager f40179d;

    /* renamed from: e */
    public final AbstractC13831a f40180e;

    @Inject
    public C13848c(AbstractC13762c abstractC13762c, AbstractC13792v abstractC13792v, CallRecordingManager callRecordingManager, AbstractC13831a abstractC13831a) {
        l.e(abstractC13762c, "callManager");
        l.e(abstractC13792v, "ongoingCallHelper");
        l.e(callRecordingManager, "callRecorderManager");
        l.e(abstractC13831a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f40177b = abstractC13762c;
        this.f40178c = abstractC13792v;
        this.f40179d = callRecordingManager;
        this.f40180e = abstractC13831a;
    }
}
