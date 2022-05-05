package androidx.core.app;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.app.f */
/* loaded from: classes-dex2jar.jar:androidx/core/app/f.class */
public final class RunnableC0607f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Object f2799a;

    /* renamed from: b */
    final /* synthetic */ Object f2800b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0607f(Object obj, Object obj2) {
        this.f2799a = obj;
        this.f2800b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (C0603c.f2786d != null) {
                C0603c.f2786d.invoke(this.f2799a, this.f2800b, Boolean.FALSE, "AppCompat recreation");
            } else {
                C0603c.f2787e.invoke(this.f2799a, this.f2800b, Boolean.FALSE);
            }
        } catch (RuntimeException e) {
            if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                throw e;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
        }
    }
}
