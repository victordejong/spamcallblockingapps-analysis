package p000a.p001a.p002a.p003a.p004a.p006b;

import android.content.Context;
import p000a.p001a.p002a.p003a.C0137d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.b.e */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/e.class */
public final class C0019e implements AbstractC0023g {

    /* renamed from: a */
    private final Context f33a;

    public C0019e(Context context) {
        this.f33a = context.getApplicationContext();
    }

    /* renamed from: a */
    private static boolean m10368a(Context context) {
        try {
            return ((Integer) Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", Context.class).invoke(null, context)).intValue() == 0;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: b */
    private String m10367b() {
        try {
            return (String) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("getId", new Class[0]).invoke(m10365d(), new Object[0]);
        } catch (Exception e) {
            C0137d.m10155c().mo10129d("Fabric", "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return null;
        }
    }

    /* renamed from: c */
    private boolean m10366c() {
        try {
            return ((Boolean) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(m10365d(), new Object[0])).booleanValue();
        } catch (Exception e) {
            C0137d.m10155c().mo10129d("Fabric", "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return false;
        }
    }

    /* renamed from: d */
    private Object m10365d() {
        try {
            return Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.f33a);
        } catch (Exception e) {
            C0137d.m10155c().mo10129d("Fabric", "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient");
            return null;
        }
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0023g
    /* renamed from: a */
    public final C0016b mo10361a() {
        if (m10368a(this.f33a)) {
            return new C0016b(m10367b(), m10366c());
        }
        return null;
    }
}
