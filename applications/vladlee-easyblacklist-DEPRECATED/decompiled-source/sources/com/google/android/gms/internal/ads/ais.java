package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ais.class */
final class ais {

    /* renamed from: a */
    private static final air f7433a = m5307c();

    /* renamed from: b */
    private static final air f7434b = new ait();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static air m5309a() {
        return f7433a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static air m5308b() {
        return f7434b;
    }

    /* renamed from: c */
    private static air m5307c() {
        try {
            return (air) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
