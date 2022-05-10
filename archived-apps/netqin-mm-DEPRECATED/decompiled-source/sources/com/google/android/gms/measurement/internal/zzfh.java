package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.inmobi.ads.C8303s;
import com.inmobi.ads.C8310v;
import com.inmobi.p497a.C7998l;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p260i.p261a.C4737k3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfh.class */
public final class zzfh {

    /* renamed from: a */
    public final String f29964a;

    /* renamed from: b */
    public final Bundle f29965b = new Bundle();

    /* renamed from: c */
    public boolean f29966c;

    /* renamed from: d */
    public Bundle f29967d;

    /* renamed from: e */
    public final /* synthetic */ C4737k3 f29968e;

    public zzfh(C4737k3 k3Var, String str, Bundle bundle) {
        this.f29968e = k3Var;
        Preconditions.m17281b(str);
        this.f29964a = str;
    }

    /* renamed from: a */
    public final Bundle m9129a() {
        if (!this.f29966c) {
            this.f29966c = true;
            String string = this.f29968e.m24919q().getString(this.f29964a, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            char c = 65535;
                            int hashCode = string3.hashCode();
                            if (hashCode != 100) {
                                if (hashCode != 108) {
                                    if (hashCode == 115 && string3.equals(C8303s.f32309d)) {
                                        c = 0;
                                    }
                                } else if (string3.equals(C7998l.f31218d)) {
                                    c = 2;
                                }
                            } else if (string3.equals("d")) {
                                c = 1;
                            }
                            if (c == 0) {
                                bundle.putString(string2, jSONObject.getString(C8310v.f32322d));
                            } else if (c == 1) {
                                bundle.putDouble(string2, Double.parseDouble(jSONObject.getString(C8310v.f32322d)));
                            } else if (c != 2) {
                                this.f29968e.mo8789p().m9152q().m9142a("Unrecognized persisted bundle type. Type", string3);
                            } else {
                                bundle.putLong(string2, Long.parseLong(jSONObject.getString(C8310v.f32322d)));
                            }
                        } catch (NumberFormatException | JSONException e) {
                            this.f29968e.mo8789p().m9152q().m9143a("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.f29967d = bundle;
                } catch (JSONException e2) {
                    this.f29968e.mo8789p().m9152q().m9143a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.f29967d == null) {
                this.f29967d = this.f29965b;
            }
        }
        return this.f29967d;
    }

    /* renamed from: a */
    public final void m9128a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        SharedPreferences.Editor edit = this.f29968e.m24919q().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f29964a);
        } else {
            edit.putString(this.f29964a, m9127b(bundle2));
        }
        edit.apply();
        this.f29967d = bundle2;
    }

    /* renamed from: b */
    public final String m9127b(Bundle bundle) {
        JSONArray jSONArray = new JSONArray();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", str);
                    jSONObject.put(C8310v.f32322d, String.valueOf(obj));
                    if (obj instanceof String) {
                        jSONObject.put("t", C8303s.f32309d);
                    } else if (obj instanceof Long) {
                        jSONObject.put("t", C7998l.f31218d);
                    } else if (obj instanceof Double) {
                        jSONObject.put("t", "d");
                    } else {
                        this.f29968e.mo8789p().m9152q().m9142a("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                    }
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                    this.f29968e.mo8789p().m9152q().m9142a("Cannot serialize bundle value to SharedPreferences", e);
                }
            }
        }
        return jSONArray.toString();
    }
}
