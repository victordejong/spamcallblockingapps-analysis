package com.google.android.gms.internal.ads;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdej.class */
public abstract class zzdej<T> implements Serializable {
    public static <T> zzdej<T> zzab(@NullableDecl T t) {
        return t == null ? aay.f7146a : new abb(t);
    }

    @NullableDecl
    public abstract T zzaqt();
}
