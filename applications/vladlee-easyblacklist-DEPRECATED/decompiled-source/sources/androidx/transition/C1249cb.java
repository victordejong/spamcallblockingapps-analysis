package androidx.transition;

import android.os.IBinder;
/* renamed from: androidx.transition.cb */
/* loaded from: classes-dex2jar.jar:androidx/transition/cb.class */
final class C1249cb implements AbstractC1251cd {

    /* renamed from: a */
    private final IBinder f5303a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1249cb(IBinder iBinder) {
        this.f5303a = iBinder;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C1249cb) && ((C1249cb) obj).f5303a.equals(this.f5303a);
    }

    public final int hashCode() {
        return this.f5303a.hashCode();
    }
}
