package com.google.firebase.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.GetTokenResult;
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/firebase/internal/InternalTokenProvider.class */
public interface InternalTokenProvider {
    @KeepForSdk
    Task<GetTokenResult> getAccessToken(boolean z);

    @KeepForSdk
    @Nullable
    String getUid();
}
