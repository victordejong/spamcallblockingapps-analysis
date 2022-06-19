package com.google.android.datatransport.runtime.scheduling.jobscheduling;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.o */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/o.class */
final /* synthetic */ class RunnableC0756o implements Runnable {

    /* renamed from: f */
    private final C0757q f3228f;

    private RunnableC0756o(C0757q c0757q) {
        this.f3228f = c0757q;
    }

    /* renamed from: a */
    public static Runnable m3794a(C0757q c0757q) {
        return new RunnableC0756o(c0757q);
    }

    @Override // java.lang.Runnable
    public void run() {
        r0.f3232d.m3788a(p.a(this.f3228f));
    }
}
