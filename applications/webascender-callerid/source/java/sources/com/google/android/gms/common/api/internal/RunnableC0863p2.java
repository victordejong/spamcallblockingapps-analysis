package com.google.android.gms.common.api.internal;
/* renamed from: com.google.android.gms.common.api.internal.p2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/p2.class */
final class RunnableC0863p2 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ q2 f3440f;

    RunnableC0863p2(q2 q2Var) {
        this.f3440f = q2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        q2.i(this.f3440f).lock();
        try {
            q2.q(this.f3440f);
        } finally {
            q2.i(this.f3440f).unlock();
        }
    }
}
