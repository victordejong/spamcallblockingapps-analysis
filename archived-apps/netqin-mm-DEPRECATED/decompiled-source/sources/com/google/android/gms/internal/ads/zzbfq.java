package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfq.class */
public final class zzbfq implements zzahq<zzbdu> {
    /* renamed from: a */
    public static Integer m15659a(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException e) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length());
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzbbq.m15852d(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbdu zzbduVar, Map map) {
        zzbfl zzbflVar;
        zzbdu zzbduVar2 = zzbduVar;
        if (zzbbq.m15859a(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String valueOf = String.valueOf(jSONObject);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 15);
            sb.append("Precache GMSG: ");
            sb.append(valueOf);
            zzbbq.m15858a(sb.toString());
        }
        zzp.m17947y();
        if (!map.containsKey("abort")) {
            String str = (String) map.get("src");
            if (str != null) {
                String[] strArr = {str};
                String str2 = (String) map.get("demuxed");
                if (str2 != null) {
                    try {
                        JSONArray jSONArray = new JSONArray(str2);
                        strArr = new String[jSONArray.length()];
                        for (int i = 0; i < jSONArray.length(); i++) {
                            strArr[i] = jSONArray.getString(i);
                        }
                    } catch (JSONException e) {
                        String valueOf2 = String.valueOf(str2);
                        zzbbq.m15852d(valueOf2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(valueOf2) : new String("Malformed demuxed URL list for precache: "));
                        strArr = null;
                    }
                }
                String[] strArr2 = strArr;
                if (strArr == null) {
                    strArr2 = new String[]{str};
                }
                if (zzbfi.m15670b(zzbduVar2) != null) {
                    zzbbq.m15852d("Precache task is already running.");
                    return;
                } else if (zzbduVar2.mo15562f() == null) {
                    zzbbq.m15852d("Precache requires a dependency provider.");
                    return;
                } else {
                    zzbdv zzbdvVar = new zzbdv((String) map.get("flags"));
                    Integer a = m15659a(map, "player");
                    Integer num = a;
                    if (a == null) {
                        num = 0;
                    }
                    zzbflVar = zzbduVar2.mo15562f().f22792a.mo15657a(zzbduVar2, num.intValue(), null, zzbdvVar);
                    new zzbfg(zzbduVar2, zzbflVar, str, strArr2).m16157b();
                }
            } else {
                zzbfg b = zzbfi.m15670b(zzbduVar2);
                if (b != null) {
                    zzbflVar = b.f24928d;
                } else {
                    zzbbq.m15852d("Precache must specify a source.");
                    return;
                }
            }
            Integer a2 = m15659a(map, "minBufferMs");
            if (a2 != null) {
                zzbflVar.mo15651b(a2.intValue());
            }
            Integer a3 = m15659a(map, "maxBufferMs");
            if (a3 != null) {
                zzbflVar.mo15647c(a3.intValue());
            }
            Integer a4 = m15659a(map, "bufferForPlaybackMs");
            if (a4 != null) {
                zzbflVar.mo15646d(a4.intValue());
            }
            Integer a5 = m15659a(map, "bufferForPlaybackAfterRebufferMs");
            if (a5 != null) {
                zzbflVar.mo15644e(a5.intValue());
            }
        } else if (!zzbfi.m15672a(zzbduVar2)) {
            zzbbq.m15852d("Precache abort but no precache task running.");
        }
    }
}
