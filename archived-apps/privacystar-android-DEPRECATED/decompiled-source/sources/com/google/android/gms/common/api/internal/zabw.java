package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabw.class */
public final class zabw {
    public final RegisterListenerMethod<Api.AnyClient, ?> zajw;
    public final UnregisterListenerMethod<Api.AnyClient, ?> zajx;

    public zabw(@NonNull RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, @NonNull UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod) {
        this.zajw = registerListenerMethod;
        this.zajx = unregisterListenerMethod;
    }
}
