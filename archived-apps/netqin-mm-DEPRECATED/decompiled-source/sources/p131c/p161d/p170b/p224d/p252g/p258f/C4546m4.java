package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzj;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: c.d.b.d.g.f.m4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/m4.class */
public final class C4546m4 implements zzj {
    public C4546m4() {
    }

    /* renamed from: a */
    public static ExecutorService m25369a(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.measurement.zzj
    /* renamed from: a */
    public final ExecutorService mo9624a(ThreadFactory threadFactory, int i) {
        return m25369a(1, threadFactory, i);
    }
}
