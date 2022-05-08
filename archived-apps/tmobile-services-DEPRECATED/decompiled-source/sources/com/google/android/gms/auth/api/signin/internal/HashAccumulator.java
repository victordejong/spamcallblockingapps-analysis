package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/HashAccumulator.class */
public class HashAccumulator {
    @VisibleForTesting

    /* renamed from: b */
    private static int f6900b = 31;

    /* renamed from: a */
    private int f6901a = 1;

    @KeepForSdk
    /* renamed from: a */
    public HashAccumulator m15143a(Object obj) {
        this.f6901a = (f6900b * this.f6901a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    @KeepForSdk
    /* renamed from: b */
    public int m15142b() {
        return this.f6901a;
    }

    /* renamed from: c */
    public final HashAccumulator m15141c(boolean z) {
        this.f6901a = (f6900b * this.f6901a) + (z ? 1 : 0);
        return this;
    }
}
