package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabx.class */
final /* synthetic */ class zabx implements RemoteCall {

    /* renamed from: a */
    private final RegistrationMethods.Builder f7251a;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    /* renamed from: a */
    public final void mo14761a(Object obj, Object obj2) {
        this.f7251a.m14866b((Api.AnyClient) obj, (TaskCompletionSource) obj2);
    }
}
