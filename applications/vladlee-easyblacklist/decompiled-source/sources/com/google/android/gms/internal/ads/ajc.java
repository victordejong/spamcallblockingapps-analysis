package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajc.class */
final class ajc {

    /* renamed from: a */
    private static final ajb f7460a = m5248c();

    /* renamed from: b */
    private static final ajb f7461b = new aja();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ajb m5250a() {
        return f7460a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static ajb m5249b() {
        return f7461b;
    }

    /* renamed from: c */
    private static ajb m5248c() {
        try {
            return (ajb) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
