package com.google.android.gms.internal.icing;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbz.class */
public final class zzbz {
    private static volatile boolean zzel = false;
    private static final Class<?> zzem = zzah();
    static final zzbz zzen = new zzbz(true);
    private final Map<Object, Object> zzeo;

    zzbz() {
        this.zzeo = new HashMap();
    }

    private zzbz(boolean z) {
        this.zzeo = Collections.emptyMap();
    }

    private static Class<?> zzah() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static zzbz zzai() {
        return zzby.zzag();
    }
}
