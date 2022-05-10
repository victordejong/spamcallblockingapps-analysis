package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.n */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/n.class */
public final class C5940n extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5940n f19300a;

    /* renamed from: e */
    public static C5940n m22619e() {
        C5940n nVar;
        synchronized (C5940n.class) {
            try {
                if (f19300a == null) {
                    f19300a = new C5940n();
                }
                nVar = f19300a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: b */
    public String mo22607b() {
        return "sessions_memory_capture_frequency_fg_ms";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_session_gauge_memory_capture_frequency_fg_ms";
    }

    /* renamed from: d */
    public Long m22620d() {
        return 100L;
    }
}
