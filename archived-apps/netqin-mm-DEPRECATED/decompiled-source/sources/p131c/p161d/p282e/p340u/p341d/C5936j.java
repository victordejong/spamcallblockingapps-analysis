package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/j.class */
public final class C5936j extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5936j f19296a;

    /* renamed from: e */
    public static C5936j m22627e() {
        C5936j jVar;
        synchronized (C5936j.class) {
            try {
                if (f19296a == null) {
                    f19296a = new C5936j();
                }
                jVar = f19296a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: b */
    public String mo22607b() {
        return "sessions_cpu_capture_frequency_bg_ms";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_session_gauge_cpu_capture_frequency_bg_ms";
    }

    /* renamed from: d */
    public Long m22628d() {
        return 0L;
    }
}
