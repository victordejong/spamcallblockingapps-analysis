package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.C0834f;
import com.google.android.gms.common.b;
/* renamed from: com.google.android.gms.common.api.internal.w0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/w0.class */
final class RunnableC0875w0 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ b f3454f;

    /* renamed from: g */
    private final /* synthetic */ C0834f.a f3455g;

    RunnableC0875w0(C0834f.a aVar, b bVar) {
        this.f3455g = aVar;
        this.f3454f = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3455g.B(this.f3454f);
    }
}
