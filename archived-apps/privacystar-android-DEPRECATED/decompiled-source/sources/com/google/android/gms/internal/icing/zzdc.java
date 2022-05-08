package com.google.android.gms.internal.icing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdc.class */
public abstract class zzdc {
    private static final zzdc zzjj = new zzde();
    private static final zzdc zzjk = new zzdf();

    private zzdc() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzdc zzbj() {
        return zzjj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzdc zzbk() {
        return zzjk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(Object obj, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> void zza(Object obj, Object obj2, long j);
}
