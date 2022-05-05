package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/j.class */
final class RunnableC2897j implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Task f17399a;

    /* renamed from: b */
    private final /* synthetic */ C2896i f17400b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2897j(C2896i iVar, Task task) {
        this.f17400b = iVar;
        this.f17399a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCompleteListener onCompleteListener;
        OnCompleteListener onCompleteListener2;
        obj = this.f17400b.f17397b;
        synchronized (obj) {
            onCompleteListener = this.f17400b.f17398c;
            if (onCompleteListener != null) {
                onCompleteListener2 = this.f17400b.f17398c;
                onCompleteListener2.onComplete(this.f17399a);
            }
        }
    }
}
