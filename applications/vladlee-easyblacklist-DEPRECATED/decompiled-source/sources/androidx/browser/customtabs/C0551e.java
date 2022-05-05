package androidx.browser.customtabs;

import android.os.IBinder;
import android.support.p013a.AbstractC0152a;
/* renamed from: androidx.browser.customtabs.e */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/e.class */
public final class C0551e {

    /* renamed from: a */
    final AbstractC0152a f2534a;

    /* renamed from: b */
    private final C0546a f2535b = new C0552f(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0551e(AbstractC0152a aVar) {
        this.f2534a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final IBinder m8869a() {
        return this.f2534a.asBinder();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0551e)) {
            return false;
        }
        return ((C0551e) obj).m8869a().equals(this.f2534a.asBinder());
    }

    public final int hashCode() {
        return m8869a().hashCode();
    }
}
