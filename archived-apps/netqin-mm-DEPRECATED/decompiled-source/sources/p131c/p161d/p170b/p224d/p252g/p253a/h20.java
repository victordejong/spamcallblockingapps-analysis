package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdxq;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* renamed from: c.d.b.d.g.a.h20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/h20.class */
public final class h20 implements Executor {

    /* renamed from: a */
    public boolean f13233a = true;

    /* renamed from: b */
    public final /* synthetic */ Executor f13234b;

    /* renamed from: c */
    public final /* synthetic */ zzdxq f13235c;

    public h20(Executor executor, zzdxq zzdxqVar) {
        this.f13234b = executor;
        this.f13235c = zzdxqVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f13234b.execute(new j20(this, runnable));
        } catch (RejectedExecutionException e) {
            if (this.f13233a) {
                this.f13235c.mo12971a((Throwable) e);
            }
        }
    }
}
