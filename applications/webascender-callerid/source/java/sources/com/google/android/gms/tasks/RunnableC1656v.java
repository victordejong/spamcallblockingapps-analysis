package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/v.class */
final class RunnableC1656v implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AbstractC1646g f4639f;

    /* renamed from: g */
    private final /* synthetic */ u f4640g;

    RunnableC1656v(u uVar, AbstractC1646g abstractC1646g) {
        this.f4640g = uVar;
        this.f4639f = abstractC1646g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (u.b(this.f4640g)) {
            if (u.c(this.f4640g) != null) {
                u.c(this.f4640g).onSuccess(this.f4639f.m1456o());
            }
        }
    }
}
