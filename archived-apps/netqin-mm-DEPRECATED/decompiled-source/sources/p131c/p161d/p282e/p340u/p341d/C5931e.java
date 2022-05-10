package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/e.class */
public final class C5931e extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5931e f19291a;

    /* renamed from: e */
    public static C5931e m22637e() {
        C5931e eVar;
        synchronized (C5931e.class) {
            try {
                if (f19291a == null) {
                    f19291a = new C5931e();
                }
                eVar = f19291a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.NetworkEventCountForeground";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_rl_network_event_count_fg";
    }

    /* renamed from: d */
    public Long m22638d() {
        return 700L;
    }
}
