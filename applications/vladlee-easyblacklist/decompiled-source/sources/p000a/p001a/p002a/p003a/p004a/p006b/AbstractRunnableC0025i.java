package p000a.p001a.p002a.p003a.p004a.p006b;

import android.os.Process;
/* renamed from: a.a.a.a.a.b.i */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/i.class */
public abstract class AbstractRunnableC0025i implements Runnable {
    protected abstract void onRun();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        onRun();
    }
}
