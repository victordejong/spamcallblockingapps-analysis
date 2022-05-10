package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdvk;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* renamed from: c.d.b.d.g.a.p6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/p6.class */
public final class C3905p6 extends ScheduledThreadPoolExecutor {
    public C3905p6(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        super.execute(zzdvk.m13107a().mo13109a(runnable));
    }
}
