package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/i.class */
public final class C5935i extends AbstractC5946t<Boolean> {

    /* renamed from: a */
    public static C5935i f19295a;

    /* renamed from: e */
    public static C5935i m22629e() {
        C5935i iVar;
        synchronized (C5935i.class) {
            try {
                if (f19295a == null) {
                    f19295a = new C5935i();
                }
                iVar = f19295a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.SdkEnabled";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_enabled";
    }

    /* renamed from: d */
    public Boolean m22630d() {
        return true;
    }
}
