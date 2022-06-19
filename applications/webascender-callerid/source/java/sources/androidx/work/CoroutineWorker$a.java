package androidx.work;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.b1;
/* loaded from: classes-dex2jar.jar:androidx/work/CoroutineWorker$a.class */
final class CoroutineWorker$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ CoroutineWorker f2415f;

    CoroutineWorker$a(CoroutineWorker coroutineWorker) {
        this.f2415f = coroutineWorker;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f2415f.r().isCancelled()) {
            b1.a.a(this.f2415f.s(), (CancellationException) null, 1, (Object) null);
        }
    }
}
