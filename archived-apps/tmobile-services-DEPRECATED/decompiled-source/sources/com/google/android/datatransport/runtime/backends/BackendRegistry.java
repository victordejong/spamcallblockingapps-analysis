package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendRegistry.class */
public interface BackendRegistry {
    @Nullable
    TransportBackend get(String str);
}
