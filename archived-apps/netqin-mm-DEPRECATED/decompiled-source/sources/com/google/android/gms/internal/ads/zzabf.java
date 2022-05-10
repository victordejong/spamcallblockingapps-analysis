package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.zzp;
import com.inmobi.ads.C8303s;
import com.inmobi.ads.C8310v;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabf.class */
public final class zzabf {

    /* renamed from: a */
    public String f23924a = zzacp.f23967b.mo16862a();

    /* renamed from: b */
    public Map<String, String> f23925b;

    /* renamed from: c */
    public Context f23926c;

    /* renamed from: d */
    public String f23927d;

    public zzabf(Context context, String str) {
        this.f23926c = null;
        this.f23927d = null;
        this.f23926c = context;
        this.f23927d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f23925b = linkedHashMap;
        linkedHashMap.put(C8303s.f32309d, "gmob_sdk");
        this.f23925b.put(C8310v.f32322d, "3");
        this.f23925b.put("os", Build.VERSION.RELEASE);
        this.f23925b.put("api_v", Build.VERSION.SDK);
        Map<String, String> map = this.f23925b;
        zzp.m17969c();
        map.put("device", zzayu.m16105c());
        this.f23925b.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.f23925b;
        zzp.m17969c();
        map2.put("is_lite_sdk", zzayu.m16083k(context) ? "1" : "0");
        Future<zzatl> a = zzp.m17958n().m16359a(this.f23926c);
        try {
            this.f23925b.put("network_coarse", Integer.toString(a.get().f24505j));
            this.f23925b.put("network_fine", Integer.toString(a.get().f24506k));
        } catch (Exception e) {
            zzp.m17965g().m16188a(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* renamed from: a */
    public final Context m16910a() {
        return this.f23926c;
    }

    /* renamed from: b */
    public final String m16909b() {
        return this.f23927d;
    }

    /* renamed from: c */
    public final String m16908c() {
        return this.f23924a;
    }

    /* renamed from: d */
    public final Map<String, String> m16907d() {
        return this.f23925b;
    }
}
