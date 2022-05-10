package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzdgo;
import com.inmobi.ads.C8176bk;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3744ku;
import p131c.p161d.p170b.p224d.p252g.p253a.C3781lu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgo.class */
public final class zzdgo implements zzdgx<zzdgu<Bundle>> {

    /* renamed from: a */
    public final zzdzb f27296a;

    /* renamed from: b */
    public final Context f27297b;

    public zzdgo(zzdzb zzdzbVar, Context context) {
        this.f27296a = zzdzbVar;
        this.f27297b = context;
    }

    /* renamed from: a */
    public static Bundle m13608a(Context context, JSONArray jSONArray) {
        Object obj;
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString = optJSONObject.optString(C8176bk.f31901b);
            String optString2 = optJSONObject.optString("sk");
            int optInt = optJSONObject.optInt("type", -1);
            int i2 = optInt != 0 ? optInt != 1 ? optInt != 2 ? 0 : C3744ku.f13912c : C3744ku.f13911b : C3744ku.f13910a;
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && i2 != 0) {
                String[] split = optString2.split("/");
                if (split.length > 2 || split.length == 0) {
                    obj = null;
                } else {
                    if (split.length == 1) {
                        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                        str = split[0];
                    } else {
                        sharedPreferences = context.getSharedPreferences(split[0], 0);
                        str = split[1];
                    }
                    obj = sharedPreferences.getAll().get(str);
                }
                if (obj != null) {
                    int i3 = C3781lu.f14001a[i2 - 1];
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 == 3 && (obj instanceof Boolean)) {
                                bundle.putBoolean(optString, ((Boolean) obj).booleanValue());
                            }
                        } else if (obj instanceof Integer) {
                            bundle.putInt(optString, ((Integer) obj).intValue());
                        } else if (obj instanceof Long) {
                            bundle.putLong(optString, ((Long) obj).longValue());
                        } else if (obj instanceof Float) {
                            bundle.putFloat(optString, ((Float) obj).floatValue());
                        }
                    } else if (obj instanceof String) {
                        bundle.putString(optString, (String) obj);
                    }
                }
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgu<Bundle>> mo13576a() {
        return this.f27296a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.ju

            /* renamed from: a */
            public final zzdgo f13817a;

            {
                this.f13817a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13817a.m13607b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdgu m13607b() throws Exception {
        String str = (String) zzwm.m11166e().m16921a(zzabb.f23806e3);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            final Bundle a = m13608a(this.f27297b, new JSONArray(str));
            return new zzdgu(a) { // from class: c.d.b.d.g.a.iu

                /* renamed from: a */
                public final Bundle f13563a;

                {
                    this.f13563a = a;
                }

                @Override // com.google.android.gms.internal.ads.zzdgu
                /* renamed from: a */
                public final void mo13578a(Object obj) {
                    ((Bundle) obj).putBundle("shared_pref", this.f13563a);
                }
            };
        } catch (JSONException e) {
            zzbbq.m15857a("JSON parsing error", e);
            return null;
        }
    }
}
