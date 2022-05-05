package androidx.p043e.p045b;

import android.os.Binder;
import android.os.Process;
import androidx.p043e.p045b.AbstractC0829d;
/* renamed from: androidx.e.b.f */
/* loaded from: classes-dex2jar.jar:androidx/e/b/f.class */
final class C0835f extends AbstractC0829d.AbstractCallableC0833d<Params, Result> {

    /* renamed from: a */
    final /* synthetic */ AbstractC0829d f3428a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0835f(AbstractC0829d dVar) {
        this.f3428a = dVar;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [java.lang.Object, Result] */
    @Override // java.util.concurrent.Callable
    public final Result call() {
        this.f3428a.f3416e.set(true);
        boolean z = false;
        try {
            Process.setThreadPriority(10);
            z = this.f3428a.mo7956a();
            z = z;
            Binder.flushPendingCommands();
            return z;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
