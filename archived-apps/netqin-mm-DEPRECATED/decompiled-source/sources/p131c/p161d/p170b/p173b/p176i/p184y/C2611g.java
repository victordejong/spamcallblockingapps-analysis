package p131c.p161d.p170b.p173b.p176i.p184y;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.C2600d;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.y.g */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/g.class */
public final class C2611g implements AbstractC2598b<SchedulerConfig> {

    /* renamed from: a */
    public final AbstractC9866a<AbstractC2541a> f9684a;

    public C2611g(AbstractC9866a<AbstractC2541a> aVar) {
        this.f9684a = aVar;
    }

    /* renamed from: a */
    public static C2611g m29433a(AbstractC9866a<AbstractC2541a> aVar) {
        return new C2611g(aVar);
    }

    /* renamed from: a */
    public static SchedulerConfig m29434a(AbstractC2541a aVar) {
        SchedulerConfig a = AbstractC2610f.m29435a(aVar);
        C2600d.m29451a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public SchedulerConfig get() {
        return m29434a(this.f9684a.get());
    }
}
