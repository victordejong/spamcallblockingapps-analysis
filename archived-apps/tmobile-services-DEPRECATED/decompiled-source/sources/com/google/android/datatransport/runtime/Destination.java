package com.google.android.datatransport.runtime;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/Destination.class */
public interface Destination {
    @Nullable
    byte[] getExtras();

    @NonNull
    String getName();
}
