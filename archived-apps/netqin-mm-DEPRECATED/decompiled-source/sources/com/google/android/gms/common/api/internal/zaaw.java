package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaw.class */
public interface zaaw {
    /* renamed from: a */
    <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo17538a(T t);

    /* renamed from: a */
    void mo17541a();

    /* renamed from: a */
    void mo17540a(Bundle bundle);

    /* renamed from: a */
    void mo17539a(ConnectionResult connectionResult, Api<?> api, boolean z);

    /* renamed from: b */
    void mo17537b();

    /* renamed from: b */
    void mo17536b(int i);

    /* renamed from: d */
    boolean mo17535d();
}
