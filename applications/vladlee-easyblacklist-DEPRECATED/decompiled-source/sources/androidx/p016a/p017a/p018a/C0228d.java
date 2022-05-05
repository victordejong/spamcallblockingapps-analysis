package androidx.p016a.p017a.p018a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: androidx.a.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/a/a/a/d.class */
public final class C0228d extends AbstractC0230f {

    /* renamed from: a */
    private final Object f499a = new Object();

    /* renamed from: b */
    private final ExecutorService f500b = Executors.newFixedThreadPool(2, new ThreadFactoryC0229e(this));

    /* renamed from: c */
    private volatile Handler f501c;

    @Override // androidx.p016a.p017a.p018a.AbstractC0230f
    /* renamed from: a */
    public final void mo9979a(Runnable runnable) {
        this.f500b.execute(runnable);
    }

    @Override // androidx.p016a.p017a.p018a.AbstractC0230f
    /* renamed from: b */
    public final void mo9977b(Runnable runnable) {
        if (this.f501c == null) {
            synchronized (this.f499a) {
                if (this.f501c == null) {
                    this.f501c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.f501c.post(runnable);
    }

    @Override // androidx.p016a.p017a.p018a.AbstractC0230f
    /* renamed from: b */
    public final boolean mo9978b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
