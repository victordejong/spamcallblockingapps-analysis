package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.o */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/o.class */
public final class C5941o extends AbstractC5946t<Float> {

    /* renamed from: a */
    public static C5941o f19301a;

    /* renamed from: e */
    public static C5941o m22617e() {
        C5941o oVar;
        synchronized (C5941o.class) {
            try {
                if (f19301a == null) {
                    f19301a = new C5941o();
                }
                oVar = f19301a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return oVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.SessionSamplingRate";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: b */
    public String mo22607b() {
        return "sessions_sampling_percentage";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_vc_session_sampling_rate";
    }

    /* renamed from: d */
    public Float m22618d() {
        return Float.valueOf(0.01f);
    }
}
