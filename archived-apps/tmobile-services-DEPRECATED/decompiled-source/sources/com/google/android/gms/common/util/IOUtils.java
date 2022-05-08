package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.io.Closeable;
import java.io.IOException;
import javax.annotation.Nullable;
@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/IOUtils.class */
public final class IOUtils {
    private IOUtils() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static void m14325a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
