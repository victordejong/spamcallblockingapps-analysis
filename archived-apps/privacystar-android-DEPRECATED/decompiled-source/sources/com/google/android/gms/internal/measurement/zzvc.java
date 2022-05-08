package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzvc.class */
final class zzvc {
    private static final zzva<?> zzbvo = new zzvb();
    private static final zzva<?> zzbvp = zzvq();

    private static zzva<?> zzvq() {
        try {
            return (zzva) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzva<?> zzvr() {
        return zzbvo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzva<?> zzvs() {
        if (zzbvp != null) {
            return zzbvp;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
