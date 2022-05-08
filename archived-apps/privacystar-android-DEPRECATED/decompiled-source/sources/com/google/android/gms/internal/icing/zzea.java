package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzea.class */
final class zzea {
    private static final zzdy zzkp = zzby();
    private static final zzdy zzkq = new zzdz();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzdy zzbw() {
        return zzkp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzdy zzbx() {
        return zzkq;
    }

    private static zzdy zzby() {
        try {
            return (zzdy) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
