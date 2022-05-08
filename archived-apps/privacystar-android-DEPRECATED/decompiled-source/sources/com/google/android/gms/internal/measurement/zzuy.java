package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzuy.class */
public final class zzuy {
    private static final Class<?> zzbvi = zzvk();

    private static final zzuz zzfz(String str) throws Exception {
        return (zzuz) zzbvi.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }

    private static Class<?> zzvk() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static zzuz zzvl() {
        if (zzbvi != null) {
            try {
                return zzfz("getEmptyRegistry");
            } catch (Exception e) {
            }
        }
        return zzuz.zzbvm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.measurement.zzuz zzvm() {
        /*
            java.lang.Class<?> r0 = com.google.android.gms.internal.measurement.zzuy.zzbvi
            if (r0 == 0) goto L_0x000f
            java.lang.String r0 = "loadGeneratedRegistry"
            com.google.android.gms.internal.measurement.zzuz r0 = zzfz(r0)     // Catch: Exception -> 0x0027
            r2 = r0
            goto L_0x0011
        L_0x000f:
            r0 = 0
            r2 = r0
        L_0x0011:
            r0 = r2
            r3 = r0
            r0 = r2
            if (r0 != 0) goto L_0x001b
            com.google.android.gms.internal.measurement.zzuz r0 = com.google.android.gms.internal.measurement.zzuz.zzvm()
            r3 = r0
        L_0x001b:
            r0 = r3
            r2 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0025
            com.google.android.gms.internal.measurement.zzuz r0 = zzvl()
            r2 = r0
        L_0x0025:
            r0 = r2
            return r0
        L_0x0027:
            r3 = move-exception
            goto L_0x000f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzuy.zzvm():com.google.android.gms.internal.measurement.zzuz");
    }
}
