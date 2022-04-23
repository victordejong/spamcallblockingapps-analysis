package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/n.class */
final class RunnableC2901n implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Task f17409a;

    /* renamed from: b */
    private final /* synthetic */ C2900m f17410b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2901n(C2900m mVar, Task task) {
        this.f17410b = mVar;
        this.f17409a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnSuccessListener onSuccessListener;
        OnSuccessListener onSuccessListener2;
        obj = this.f17410b.f17407b;
        synchronized (obj) {
            onSuccessListener = this.f17410b.f17408c;
            if (onSuccessListener != null) {
                onSuccessListener2 = this.f17410b.f17408c;
                onSuccessListener2.onSuccess(this.f17409a.getResult());
            }
        }
    }
}
