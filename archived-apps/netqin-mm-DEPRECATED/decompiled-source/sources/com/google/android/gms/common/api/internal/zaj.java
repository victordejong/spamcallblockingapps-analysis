package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.Set;
import p012b.p035f.C0780a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaj.class */
public final class zaj {

    /* renamed from: a */
    public final C0780a<ApiKey<?>, ConnectionResult> f23286a;

    /* renamed from: b */
    public final C0780a<ApiKey<?>, String> f23287b;

    /* renamed from: c */
    public final TaskCompletionSource<Map<ApiKey<?>, String>> f23288c;

    /* renamed from: d */
    public int f23289d;

    /* renamed from: e */
    public boolean f23290e;

    /* renamed from: a */
    public final Set<ApiKey<?>> m17476a() {
        return this.f23286a.keySet();
    }

    /* renamed from: a */
    public final void m17475a(ApiKey<?> apiKey, ConnectionResult connectionResult, String str) {
        this.f23286a.put(apiKey, connectionResult);
        this.f23287b.put(apiKey, str);
        this.f23289d--;
        if (!connectionResult.m17830y()) {
            this.f23290e = true;
        }
        if (this.f23289d != 0) {
            return;
        }
        if (this.f23290e) {
            this.f23288c.m8599a(new AvailabilityException(this.f23286a));
            return;
        }
        this.f23288c.m8598a((TaskCompletionSource<Map<ApiKey<?>, String>>) this.f23287b);
    }
}
