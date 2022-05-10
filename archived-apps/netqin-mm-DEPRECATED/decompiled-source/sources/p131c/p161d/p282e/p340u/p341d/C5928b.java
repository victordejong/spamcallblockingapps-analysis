package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/b.class */
public final class C5928b extends AbstractC5946t<Boolean> {

    /* renamed from: a */
    public static C5928b f19288a;

    /* renamed from: e */
    public static C5928b m22642e() {
        C5928b bVar;
        synchronized (C5928b.class) {
            try {
                if (f19288a == null) {
                    f19288a = new C5928b();
                }
                bVar = f19288a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: b */
    public String mo22607b() {
        return "firebase_performance_collection_deactivated";
    }

    /* renamed from: d */
    public Boolean m22643d() {
        return false;
    }
}
