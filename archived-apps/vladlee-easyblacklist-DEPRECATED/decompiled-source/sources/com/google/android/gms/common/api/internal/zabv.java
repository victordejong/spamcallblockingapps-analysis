package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabv.class */
public final class zabv {
    public final RegisterListenerMethod<Api.AnyClient, ?> zakc;
    public final UnregisterListenerMethod<Api.AnyClient, ?> zakd;

    public zabv(RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod) {
        this.zakc = registerListenerMethod;
        this.zakd = unregisterListenerMethod;
    }
}
