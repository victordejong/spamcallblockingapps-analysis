package p131c.p161d.p282e.p340u.p345h;

import android.util.Log;
/* renamed from: c.d.e.u.h.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/h/b.class */
public class C5970b {

    /* renamed from: a */
    public static C5970b f19384a;

    /* renamed from: a */
    public static C5970b m22490a() {
        C5970b bVar;
        synchronized (C5970b.class) {
            try {
                if (f19384a == null) {
                    f19384a = new C5970b();
                }
                bVar = f19384a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    /* renamed from: a */
    public void m22489a(String str) {
        Log.d("FirebasePerformance", str);
    }

    /* renamed from: b */
    public void m22488b(String str) {
        Log.e("FirebasePerformance", str);
    }

    /* renamed from: c */
    public void m22487c(String str) {
        Log.i("FirebasePerformance", str);
    }

    /* renamed from: d */
    public void m22486d(String str) {
        Log.w("FirebasePerformance", str);
    }
}
