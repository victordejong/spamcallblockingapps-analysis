package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzvr;
import com.google.android.gms.internal.ads.zzwm;
import com.google.android.gms.internal.ads.zzyn;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/ResponseInfo.class */
public final class ResponseInfo {

    /* renamed from: a */
    public final zzyn f22679a;

    /* renamed from: b */
    public final List<AdapterResponseInfo> f22680b = new ArrayList();

    public ResponseInfo(zzyn zzynVar) {
        this.f22679a = zzynVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23861n4)).booleanValue()) {
            try {
                List<zzvr> t1 = this.f22679a.mo11113t1();
                if (t1 != null) {
                    for (zzvr zzvrVar : t1) {
                        this.f22680b.add(AdapterResponseInfo.m18125a(zzvrVar));
                    }
                }
            } catch (RemoteException e) {
                zzbbq.m15855b("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
    }

    /* renamed from: a */
    public static ResponseInfo m18093a(zzyn zzynVar) {
        if (zzynVar != null) {
            return new ResponseInfo(zzynVar);
        }
        return null;
    }

    /* renamed from: a */
    public final String m18094a() {
        try {
            return this.f22679a.mo11114a();
        } catch (RemoteException e) {
            zzbbq.m15855b("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    /* renamed from: b */
    public final String m18092b() {
        try {
            return this.f22679a.mo11115K1();
        } catch (RemoteException e) {
            zzbbq.m15855b("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    /* renamed from: c */
    public final JSONObject m18091c() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String b = m18092b();
        if (b == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", b);
        }
        String a = m18094a();
        if (a == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", a);
        }
        JSONArray jSONArray = new JSONArray();
        for (AdapterResponseInfo adapterResponseInfo : this.f22680b) {
            jSONArray.put(adapterResponseInfo.m18126a());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        return jSONObject;
    }

    public final String toString() {
        String str;
        try {
            str = m18091c().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
