package p000a.p001a.p002a.p003a.p004a.p006b;

import android.os.SystemClock;
import android.util.Log;
/* renamed from: a.a.a.a.a.b.ae */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/ae.class */
public final class C0015ae {

    /* renamed from: a */
    private final String f22a;

    /* renamed from: b */
    private final String f23b;

    /* renamed from: c */
    private final boolean f24c;

    /* renamed from: d */
    private long f25d;

    /* renamed from: e */
    private long f26e;

    public C0015ae(String str, String str2) {
        this.f22a = str;
        this.f23b = str2;
        this.f24c = !Log.isLoggable(str2, 2);
    }

    /* renamed from: a */
    public final void m10378a() {
        synchronized (this) {
            if (!this.f24c) {
                this.f25d = SystemClock.elapsedRealtime();
                this.f26e = 0L;
            }
        }
    }

    /* renamed from: b */
    public final void m10377b() {
        synchronized (this) {
            if (!this.f24c) {
                if (this.f26e == 0) {
                    this.f26e = SystemClock.elapsedRealtime() - this.f25d;
                    String str = this.f23b;
                    Log.v(str, this.f22a + ": " + this.f26e + "ms");
                }
            }
        }
    }
}
