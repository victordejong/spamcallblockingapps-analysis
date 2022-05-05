package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;
/* renamed from: com.google.android.gms.common.api.internal.av */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/av.class */
final class C1599av {

    /* renamed from: a */
    private final int f6360a;

    /* renamed from: b */
    private final ConnectionResult f6361b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1599av(ConnectionResult connectionResult, int i) {
        Preconditions.checkNotNull(connectionResult);
        this.f6361b = connectionResult;
        this.f6360a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m5908a() {
        return this.f6360a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final ConnectionResult m5907b() {
        return this.f6361b;
    }
}
