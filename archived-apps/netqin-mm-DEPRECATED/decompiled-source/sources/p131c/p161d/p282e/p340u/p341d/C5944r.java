package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.r */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/r.class */
public final class C5944r extends AbstractC5946t<Float> {

    /* renamed from: a */
    public static C5944r f19304a;

    /* renamed from: e */
    public static C5944r m22611e() {
        C5944r rVar;
        synchronized (C5944r.class) {
            try {
                if (f19304a == null) {
                    f19304a = new C5944r();
                }
                rVar = f19304a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.TraceSamplingRate";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_vc_trace_sampling_rate";
    }

    /* renamed from: d */
    public Float m22612d() {
        return Float.valueOf(1.0f);
    }
}
