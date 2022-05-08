package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.tasks.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/w.class */
public final class RunnableC2910w implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C2908v f17427a;

    /* renamed from: b */
    private final /* synthetic */ Callable f17428b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2910w(C2908v vVar, Callable callable) {
        this.f17427a = vVar;
        this.f17428b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f17427a.m1558a((C2908v) this.f17428b.call());
        } catch (Exception e) {
            this.f17427a.m1559a(e);
        }
    }
}
