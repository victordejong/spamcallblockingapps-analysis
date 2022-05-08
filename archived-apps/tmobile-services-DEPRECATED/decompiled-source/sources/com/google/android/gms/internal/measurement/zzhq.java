package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhq.class */
final class zzhq {

    /* renamed from: a */
    private static final zzho<?> f8507a = new zzhn();

    /* renamed from: b */
    private static final zzho<?> f8508b = m12441c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzho<?> m12443a() {
        return f8507a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzho<?> m12442b() {
        zzho<?> zzhoVar = f8508b;
        if (zzhoVar != null) {
            return zzhoVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: c */
    private static zzho<?> m12441c() {
        try {
            return (zzho) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
