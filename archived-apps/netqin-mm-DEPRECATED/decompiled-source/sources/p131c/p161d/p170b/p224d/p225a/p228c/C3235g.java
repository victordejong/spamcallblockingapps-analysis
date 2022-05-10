package p131c.p161d.p170b.p224d.p225a.p228c;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzacm;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzdgo;
import com.google.android.gms.internal.ads.zzvg;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: c.d.b.d.a.c.g */
/* loaded from: classes-dex2jar.jar:c/d/b/d/a/c/g.class */
public final class C3235g {

    /* renamed from: a */
    public final Context f11924a;

    /* renamed from: b */
    public final String f11925b;

    /* renamed from: c */
    public final Map<String, String> f11926c = new TreeMap();

    /* renamed from: d */
    public String f11927d;

    /* renamed from: e */
    public String f11928e;

    public C3235g(Context context, String str) {
        this.f11924a = context.getApplicationContext();
        this.f11925b = str;
    }

    /* renamed from: a */
    public final String m27307a() {
        return this.f11927d;
    }

    /* renamed from: a */
    public final void m27306a(zzvg zzvgVar, zzbbx zzbbxVar) {
        this.f11927d = zzvgVar.f29010j.f23627a;
        Bundle bundle = zzvgVar.f29013m;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 != null) {
            String a = zzacm.f23963c.mo16862a();
            for (String str : bundle2.keySet()) {
                if (a.equals(str)) {
                    this.f11928e = bundle2.getString(str);
                } else if (str.startsWith("csa_")) {
                    this.f11926c.put(str.substring(4), bundle2.getString(str));
                }
            }
            this.f11926c.put("SDKVersion", zzbbxVar.f24759a);
            if (zzacm.f23961a.mo16862a().booleanValue()) {
                try {
                    Bundle a2 = zzdgo.m13608a(this.f11924a, new JSONArray(zzacm.f23962b.mo16862a()));
                    for (String str2 : a2.keySet()) {
                        this.f11926c.put(str2, a2.get(str2).toString());
                    }
                } catch (JSONException e) {
                    zzbbq.m15855b("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
                }
            }
        }
    }

    /* renamed from: b */
    public final String m27305b() {
        return this.f11928e;
    }

    /* renamed from: c */
    public final String m27304c() {
        return this.f11925b;
    }

    /* renamed from: d */
    public final Map<String, String> m27303d() {
        return this.f11926c;
    }
}
