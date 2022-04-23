package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: com.google.android.gms.common.api.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/d.class */
final class C1611d {

    /* renamed from: a */
    private final ApiKey<?> f6392a;

    /* renamed from: b */
    private final TaskCompletionSource<Boolean> f6393b = new TaskCompletionSource<>();

    public C1611d(ApiKey<?> apiKey) {
        this.f6392a = apiKey;
    }

    /* renamed from: a */
    public final ApiKey<?> m5888a() {
        return this.f6392a;
    }

    /* renamed from: b */
    public final TaskCompletionSource<Boolean> m5887b() {
        return this.f6393b;
    }
}
