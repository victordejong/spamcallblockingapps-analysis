package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaet.class */
public final class zzaet implements zzafn<Object> {

    /* renamed from: a */
    private final zzaew f10886a;

    public zzaet(zzaew zzaewVar) {
        this.f10886a = zzaewVar;
    }

    /* renamed from: a */
    private static Bundle m4428a(JSONObject jSONObject) {
        String str;
        String valueOf;
        String str2;
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> keys = jSONObject.keys();
        Bundle bundle = new Bundle();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != null) {
                if (obj instanceof Boolean) {
                    bundle.putBoolean(next, ((Boolean) obj).booleanValue());
                } else if (obj instanceof Double) {
                    bundle.putDouble(next, ((Double) obj).doubleValue());
                } else if (obj instanceof Integer) {
                    bundle.putInt(next, ((Integer) obj).intValue());
                } else if (obj instanceof Long) {
                    bundle.putLong(next, ((Long) obj).longValue());
                } else if (obj instanceof String) {
                    bundle.putString(next, (String) obj);
                } else if (obj instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) obj;
                    if (!(jSONArray == null || jSONArray.length() == 0)) {
                        int length = jSONArray.length();
                        Object obj2 = null;
                        for (int i = 0; obj2 == null && i < length; i++) {
                            obj2 = !jSONArray.isNull(i) ? jSONArray.get(i) : null;
                        }
                        if (obj2 == null) {
                            str = "Expected JSONArray with at least 1 non-null element for key:";
                            valueOf = String.valueOf(next);
                            if (valueOf.length() == 0) {
                                str2 = new String("Expected JSONArray with at least 1 non-null element for key:");
                            }
                            str2 = str.concat(valueOf);
                        } else if (obj2 instanceof JSONObject) {
                            Bundle[] bundleArr = new Bundle[length];
                            for (int i2 = 0; i2 < length; i2++) {
                                bundleArr[i2] = !jSONArray.isNull(i2) ? m4428a(jSONArray.optJSONObject(i2)) : null;
                            }
                            bundle.putParcelableArray(next, bundleArr);
                        } else if (obj2 instanceof Number) {
                            double[] dArr = new double[jSONArray.length()];
                            for (int i3 = 0; i3 < length; i3++) {
                                dArr[i3] = jSONArray.optDouble(i3);
                            }
                            bundle.putDoubleArray(next, dArr);
                        } else if (obj2 instanceof CharSequence) {
                            String[] strArr = new String[length];
                            for (int i4 = 0; i4 < length; i4++) {
                                strArr[i4] = !jSONArray.isNull(i4) ? jSONArray.optString(i4) : null;
                            }
                            bundle.putStringArray(next, strArr);
                        } else if (obj2 instanceof Boolean) {
                            boolean[] zArr = new boolean[length];
                            for (int i5 = 0; i5 < length; i5++) {
                                zArr[i5] = jSONArray.optBoolean(i5);
                            }
                            bundle.putBooleanArray(next, zArr);
                        } else {
                            str2 = String.format("JSONArray with unsupported type %s for key:%s", obj2.getClass().getCanonicalName(), next);
                        }
                        zzavs.zzez(str2);
                    }
                } else if (obj instanceof JSONObject) {
                    bundle.putBundle(next, m4428a((JSONObject) obj));
                } else {
                    str = "Unsupported type for key:";
                    valueOf = String.valueOf(next);
                    if (valueOf.length() == 0) {
                        str2 = new String("Unsupported type for key:");
                        zzavs.zzez(str2);
                    }
                    str2 = str.concat(valueOf);
                    zzavs.zzez(str2);
                }
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        if (this.f10886a != null) {
            String str = map.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
            String str2 = str;
            if (str == null) {
                zzavs.zzey("Ad metadata with no name parameter.");
                str2 = "";
            }
            Bundle bundle = null;
            if (map.containsKey("info")) {
                try {
                    bundle = m4428a(new JSONObject(map.get("info")));
                } catch (JSONException e) {
                    zzavs.zzc("Failed to convert ad metadata to JSON.", e);
                    bundle = null;
                }
            }
            if (bundle == null) {
                zzavs.zzex("Failed to convert ad metadata to Bundle.");
            } else {
                this.f10886a.zza(str2, bundle);
            }
        }
    }
}
