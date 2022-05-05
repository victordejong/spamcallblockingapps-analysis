package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahx.class */
final class ahx {

    /* renamed from: a */
    private static final ahw<?> f7391a = new ahy();

    /* renamed from: b */
    private static final ahw<?> f7392b = m5364c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ahw<?> m5366a() {
        return f7391a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static ahw<?> m5365b() {
        ahw<?> ahwVar = f7392b;
        if (ahwVar != null) {
            return ahwVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: c */
    private static ahw<?> m5364c() {
        try {
            return (ahw) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
