package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/h.class */
final class RunnableC2895h implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C2894g f17395a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2895h(C2894g gVar) {
        this.f17395a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCanceledListener onCanceledListener;
        OnCanceledListener onCanceledListener2;
        obj = this.f17395a.f17393b;
        synchronized (obj) {
            onCanceledListener = this.f17395a.f17394c;
            if (onCanceledListener != null) {
                onCanceledListener2 = this.f17395a.f17394c;
                onCanceledListener2.onCanceled();
            }
        }
    }
}
