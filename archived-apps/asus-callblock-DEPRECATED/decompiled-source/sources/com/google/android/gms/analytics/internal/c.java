package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.a.d;
import com.google.android.gms.common.internal.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    long f3802a;

    /* renamed from: b  reason: collision with root package name */
    private final d f3803b;

    public c(d dVar) {
        b.a(dVar);
        this.f3803b = dVar;
    }

    public c(d dVar, long j) {
        b.a(dVar);
        this.f3803b = dVar;
        this.f3802a = j;
    }

    public final void a() {
        this.f3802a = this.f3803b.b();
    }

    public final boolean a(long j) {
        boolean z = true;
        if (this.f3802a != 0 && this.f3803b.b() - this.f3802a <= j) {
            z = false;
        }
        return z;
    }
}
