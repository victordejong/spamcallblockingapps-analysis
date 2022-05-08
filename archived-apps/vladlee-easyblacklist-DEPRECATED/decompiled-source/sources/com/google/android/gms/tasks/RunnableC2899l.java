package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/l.class */
final class RunnableC2899l implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Task f17404a;

    /* renamed from: b */
    private final /* synthetic */ C2898k f17405b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2899l(C2898k kVar, Task task) {
        this.f17405b = kVar;
        this.f17404a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnFailureListener onFailureListener;
        OnFailureListener onFailureListener2;
        obj = this.f17405b.f17402b;
        synchronized (obj) {
            onFailureListener = this.f17405b.f17403c;
            if (onFailureListener != null) {
                onFailureListener2 = this.f17405b.f17403c;
                onFailureListener2.onFailure(this.f17404a.getException());
            }
        }
    }
}
