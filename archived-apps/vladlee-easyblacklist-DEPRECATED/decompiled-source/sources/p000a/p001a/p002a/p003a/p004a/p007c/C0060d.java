package p000a.p001a.p002a.p003a.p004a.p007c;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.c.d */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/d.class */
public final class C0060d extends FutureTask<Result> {

    /* renamed from: a */
    final /* synthetic */ AbstractC0047a f135a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0060d(AbstractC0047a aVar, Callable callable) {
        super(callable);
        this.f135a = aVar;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        try {
            AbstractC0047a.m10280b(this.f135a, get());
        } catch (InterruptedException e) {
            Log.w("AsyncTask", e);
        } catch (CancellationException e2) {
            AbstractC0047a.m10280b(this.f135a, null);
        } catch (ExecutionException e3) {
            throw new RuntimeException("An error occured while executing doInBackground()", e3.getCause());
        }
    }
}
