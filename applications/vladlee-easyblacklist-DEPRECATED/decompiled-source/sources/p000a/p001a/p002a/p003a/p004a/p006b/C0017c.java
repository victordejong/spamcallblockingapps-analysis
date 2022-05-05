package p000a.p001a.p002a.p003a.p004a.p006b;

import android.content.Context;
import android.text.TextUtils;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0107c;
import p000a.p001a.p002a.p003a.p004a.p011f.C0108d;
/* renamed from: a.a.a.a.a.b.c */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/c.class */
final class C0017c {

    /* renamed from: a */
    private final Context f29a;

    /* renamed from: b */
    private final AbstractC0107c f30b;

    public C0017c(Context context) {
        this.f29a = context.getApplicationContext();
        this.f30b = new C0108d(context, "TwitterAdvertisingInfoPreferences");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m10375a(C0016b bVar) {
        boolean b = m10371b(bVar);
        AbstractC0107c cVar = this.f30b;
        cVar.mo10189a(b ? cVar.mo10188b().putString("advertising_id", bVar.f27a).putBoolean("limit_ad_tracking_enabled", bVar.f28b) : cVar.mo10188b().remove("advertising_id").remove("limit_ad_tracking_enabled"));
    }

    /* renamed from: b */
    private AbstractC0023g m10372b() {
        return new C0019e(this.f29a);
    }

    /* renamed from: b */
    private static boolean m10371b(C0016b bVar) {
        return bVar != null && !TextUtils.isEmpty(bVar.f27a);
    }

    /* renamed from: c */
    private AbstractC0023g m10370c() {
        return new C0020f(this.f29a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public C0016b m10369d() {
        String str;
        AbstractC0150o oVar;
        C0016b a = m10372b().mo10361a();
        if (!m10371b(a)) {
            a = m10370c().mo10361a();
            if (!m10371b(a)) {
                oVar = C0137d.m10155c();
                str = "AdvertisingInfo not present";
            } else {
                oVar = C0137d.m10155c();
                str = "Using AdvertisingInfo from Service Provider";
            }
        } else {
            oVar = C0137d.m10155c();
            str = "Using AdvertisingInfo from Reflection Provider";
        }
        oVar.mo10135a("Fabric", str);
        return a;
    }

    /* renamed from: a */
    public final C0016b m10376a() {
        C0016b bVar = new C0016b(this.f30b.mo10190a().getString("advertising_id", ""), this.f30b.mo10190a().getBoolean("limit_ad_tracking_enabled", false));
        if (m10371b(bVar)) {
            C0137d.m10155c().mo10135a("Fabric", "Using AdvertisingInfo from Preference Store");
            new Thread(new C0018d(this, bVar)).start();
            return bVar;
        }
        C0016b d = m10369d();
        m10375a(d);
        return d;
    }
}
