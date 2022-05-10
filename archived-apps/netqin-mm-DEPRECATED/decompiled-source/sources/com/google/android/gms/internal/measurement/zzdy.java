package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdy.class */
public abstract class zzdy<T> implements Serializable {
    public static <T> zzdy<T> zza(T t) {
        zzeb.m9815a(t);
        return new zzea(t);
    }

    public static <T> zzdy<T> zzc() {
        return zzdu.zza;
    }

    public abstract boolean zza();

    public abstract T zzb();
}
