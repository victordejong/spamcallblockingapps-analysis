package p000a.p001a.p002a.p003a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import p000a.p001a.p002a.p003a.p004a.p006b.C0024h;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
import p000a.p001a.p002a.p003a.p004a.p006b.C0033n;
import p000a.p001a.p002a.p003a.p004a.p006b.EnumC0034o;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
import p000a.p001a.p002a.p003a.p004a.p010e.C0090b;
import p000a.p001a.p002a.p003a.p004a.p012g.C0112d;
import p000a.p001a.p002a.p003a.p004a.p012g.C0113e;
import p000a.p001a.p002a.p003a.p004a.p012g.C0116h;
import p000a.p001a.p002a.p003a.p004a.p012g.C0122n;
import p000a.p001a.p002a.p003a.p004a.p012g.C0125q;
import p000a.p001a.p002a.p003a.p004a.p012g.C0129t;
import p000a.p001a.p002a.p003a.p004a.p012g.C0134y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.p */
/* loaded from: classes-dex2jar.jar:a/a/a/a/p.class */
public final class C0151p extends AbstractC0147l<Boolean> {

    /* renamed from: a */
    private final AbstractC0101h f342a = new C0090b();

    /* renamed from: b */
    private PackageManager f343b;

    /* renamed from: c */
    private String f344c;

    /* renamed from: d */
    private PackageInfo f345d;

    /* renamed from: e */
    private String f346e;

    /* renamed from: f */
    private String f347f;

    /* renamed from: g */
    private String f348g;

    /* renamed from: h */
    private String f349h;

    /* renamed from: i */
    private String f350i;

    /* renamed from: j */
    private final Future<Map<String, C0149n>> f351j;

    /* renamed from: k */
    private final Collection<AbstractC0147l> f352k;

    public C0151p(Future<Map<String, C0149n>> future, Collection<AbstractC0147l> collection) {
        this.f351j = future;
        this.f352k = collection;
    }

    /* renamed from: a */
    private C0112d m10126a(C0122n nVar, Collection<C0149n> collection) {
        Context context = getContext();
        new C0024h();
        return new C0112d(C0024h.m10360a(context), getIdManager().m10292c(), this.f347f, this.f346e, C0026j.m10337a(C0026j.m10318k(context)), this.f349h, EnumC0034o.m10305a(this.f348g).m10306a(), this.f350i, "0", nVar, collection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Boolean doInBackground() {
        C0125q qVar;
        String i = C0026j.m10320i(getContext());
        C0129t b = m10124b();
        boolean z = false;
        if (b != null) {
            try {
                Map<String, C0149n> a = m10125a(this.f351j != null ? this.f351j.get() : new HashMap<>(), this.f352k);
                C0113e eVar = b.f284a;
                Collection<C0149n> values = a.values();
                if ("new".equals(eVar.f235b)) {
                    if (new C0116h(this, m10123c(), eVar.f236c, this.f342a).mo10167a(m10126a(C0122n.m10179a(getContext(), i), values))) {
                        qVar = C0125q.m10178a();
                    } else {
                        C0137d.m10155c().mo10130c("Fabric", "Failed to create app with Crashlytics service.", null);
                        z = false;
                    }
                } else if ("configured".equals(eVar.f235b)) {
                    qVar = C0125q.m10178a();
                } else {
                    if (eVar.f239f) {
                        C0137d.m10155c().mo10135a("Fabric", "Server says an update is required - forcing a full App update.");
                        new C0134y(this, m10123c(), eVar.f236c, this.f342a).mo10167a(m10126a(C0122n.m10179a(getContext(), i), values));
                    }
                    z = true;
                }
                z = qVar.m10173d();
            } catch (Exception e) {
                C0137d.m10155c().mo10130c("Fabric", "Error performing auto configuration.", e);
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: a */
    private static Map<String, C0149n> m10125a(Map<String, C0149n> map, Collection<AbstractC0147l> collection) {
        for (AbstractC0147l lVar : collection) {
            if (!map.containsKey(lVar.getIdentifier())) {
                map.put(lVar.getIdentifier(), new C0149n(lVar.getIdentifier(), lVar.getVersion(), "binary"));
            }
        }
        return map;
    }

    /* renamed from: b */
    private C0129t m10124b() {
        try {
            C0125q.m10178a().m10176a(this, this.idManager, this.f342a, this.f346e, this.f347f, m10123c(), C0033n.m10308a(getContext())).m10174c();
            return C0125q.m10178a().m10175b();
        } catch (Exception e) {
            C0137d.m10155c().mo10130c("Fabric", "Error dealing with settings", e);
            return null;
        }
    }

    /* renamed from: c */
    private String m10123c() {
        return C0026j.m10326d(getContext(), "com.crashlytics.ApiEndpoint");
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public final String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public final String getVersion() {
        return "1.4.6.29";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public final boolean onPreExecute() {
        try {
            this.f348g = getIdManager().m10287h();
            this.f343b = getContext().getPackageManager();
            this.f344c = getContext().getPackageName();
            this.f345d = this.f343b.getPackageInfo(this.f344c, 0);
            this.f346e = Integer.toString(this.f345d.versionCode);
            this.f347f = this.f345d.versionName == null ? "0.0" : this.f345d.versionName;
            this.f349h = this.f343b.getApplicationLabel(getContext().getApplicationInfo()).toString();
            this.f350i = Integer.toString(getContext().getApplicationInfo().targetSdkVersion);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            C0137d.m10155c().mo10130c("Fabric", "Failed init", e);
            return false;
        }
    }
}
