package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.C0834f;
/* renamed from: com.google.android.gms.common.api.internal.x0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/x0.class */
final class RunnableC0876x0 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ int f3456f;

    /* renamed from: g */
    private final /* synthetic */ C0834f.a f3457g;

    RunnableC0876x0(C0834f.a aVar, int i) {
        this.f3457g = aVar;
        this.f3456f = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0834f.a.i(this.f3457g, this.f3456f);
    }
}
