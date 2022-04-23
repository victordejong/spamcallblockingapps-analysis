package androidx.p043e.p045b;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* renamed from: androidx.e.b.g */
/* loaded from: classes-dex2jar.jar:androidx/e/b/g.class */
final class C0836g extends FutureTask<Result> {

    /* renamed from: a */
    final /* synthetic */ AbstractC0829d f3429a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0836g(AbstractC0829d dVar, Callable callable) {
        super(callable);
        this.f3429a = dVar;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        try {
            this.f3429a.m7950c(get());
        } catch (InterruptedException e) {
            Log.w("AsyncTask", e);
        } catch (CancellationException e2) {
            this.f3429a.m7950c(null);
        } catch (ExecutionException e3) {
            throw new RuntimeException("An error occurred while executing doInBackground()", e3.getCause());
        } catch (Throwable th) {
            throw new RuntimeException("An error occurred while executing doInBackground()", th);
        }
    }
}
