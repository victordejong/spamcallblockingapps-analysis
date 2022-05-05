package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzce.class */
public final /* synthetic */ class zzce {
    public static <V> V zza(zzcd<V> zzcdVar) {
        V v;
        try {
            v = zzcdVar.zza();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = zzcdVar.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
