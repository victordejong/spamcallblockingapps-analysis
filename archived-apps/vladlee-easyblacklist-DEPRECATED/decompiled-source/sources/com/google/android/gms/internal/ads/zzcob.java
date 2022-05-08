package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcob.class */
public final class zzcob {

    /* renamed from: a */
    private final Map<String, zzcoi> f13431a = new ConcurrentHashMap();

    /* renamed from: b */
    private final Map<String, Map<String, List<zzcoi>>> f13432b = new ConcurrentHashMap();

    /* renamed from: c */
    private final Executor f13433c;

    /* renamed from: d */
    private JSONObject f13434d;

    public zzcob(Executor executor) {
        this.f13433c = executor;
    }

    /* renamed from: a */
    private static boolean m3724a(JSONArray jSONArray, String str) {
        if (jSONArray == null || str == null) {
            return false;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
            } catch (PatternSyntaxException e) {
                zzq.zzku().zza(e, "RtbAdapterMap.hasAtleastOneRegexMatch");
            }
            if (Pattern.compile(jSONArray.optString(i)).matcher(str).lookingAt()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public final void m3722c() {
        JSONArray optJSONArray;
        synchronized (this) {
            JSONObject zzvo = zzq.zzku().zzvf().zzwa().zzvo();
            if (zzvo != null) {
                try {
                    JSONArray optJSONArray2 = zzvo.optJSONArray("ad_unit_id_settings");
                    this.f13434d = zzvo.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                            String optString = jSONObject.optString("ad_unit_id", "");
                            String optString2 = jSONObject.optString("format", "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                            if (!(optJSONObject == null || (optJSONArray = optJSONObject.optJSONArray("ad_networks")) == null)) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
                                    ArrayList arrayList2 = new ArrayList();
                                    if (jSONObject2 != null) {
                                        JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                                        Bundle bundle = new Bundle();
                                        if (optJSONObject2 != null) {
                                            Iterator<String> keys = optJSONObject2.keys();
                                            while (keys.hasNext()) {
                                                String next = keys.next();
                                                bundle.putString(next, optJSONObject2.optString(next, ""));
                                            }
                                        }
                                        JSONArray optJSONArray3 = jSONObject2.optJSONArray("rtb_adapters");
                                        if (optJSONArray3 != null) {
                                            ArrayList arrayList3 = new ArrayList();
                                            for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                                                String optString3 = optJSONArray3.optString(i3, "");
                                                if (!TextUtils.isEmpty(optString3)) {
                                                    arrayList3.add(optString3);
                                                }
                                            }
                                            ArrayList arrayList4 = arrayList3;
                                            int size = arrayList4.size();
                                            int i4 = 0;
                                            while (i4 < size) {
                                                Object obj = arrayList4.get(i4);
                                                int i5 = i4 + 1;
                                                String str = (String) obj;
                                                zzgi(str);
                                                i4 = i5;
                                                if (this.f13431a.get(str) != null) {
                                                    arrayList2.add(new zzcoi(str, optString2, bundle));
                                                    i4 = i5;
                                                }
                                            }
                                        }
                                    }
                                    arrayList.addAll(arrayList2);
                                }
                            }
                            if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString)) {
                                Map<String, List<zzcoi>> map = this.f13432b.get(optString2);
                                Map<String, List<zzcoi>> map2 = map;
                                if (map == null) {
                                    map2 = new ConcurrentHashMap<>();
                                }
                                this.f13432b.put(optString2, map2);
                                List<zzcoi> list = map2.get(optString);
                                List<zzcoi> list2 = list;
                                if (list == null) {
                                    list2 = new ArrayList<>();
                                }
                                list2.addAll(arrayList);
                                map2.put(optString, list2);
                            }
                        }
                    }
                } catch (JSONException e) {
                    zzavs.zza("Malformed config loading JSON.", e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3723b() {
        this.f13433c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.vb

            /* renamed from: a */
            private final zzcob f10610a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10610a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10610a.m3722c();
            }
        });
    }

    public final void zzamj() {
        zzq.zzku().zzvf().zzb(new Runnable(this) { // from class: com.google.android.gms.internal.ads.va

            /* renamed from: a */
            private final zzcob f10609a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10609a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10609a.m3723b();
            }
        });
        this.f13433c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.uz

            /* renamed from: a */
            private final zzcob f10606a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10606a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10606a.m3725a();
            }
        });
    }

    public final void zzgi(String str) {
        if (!TextUtils.isEmpty(str) && !this.f13431a.containsKey(str)) {
            this.f13431a.put(str, new zzcoi(str, "", new Bundle()));
        }
    }

    public final Map<String, List<Bundle>> zzr(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return Collections.emptyMap();
        }
        Map<String, List<zzcoi>> map = this.f13432b.get(str);
        if (map == null) {
            return Collections.emptyMap();
        }
        List<zzcoi> list = map.get(str2);
        List<zzcoi> list2 = list;
        if (list == null) {
            String str3 = "";
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzckp)).booleanValue()) {
                JSONObject jSONObject = this.f13434d;
                str3 = "";
                if (jSONObject != null) {
                    JSONArray optJSONArray = jSONObject.optJSONArray(str);
                    str3 = "";
                    if (optJSONArray != null) {
                        int i = 0;
                        while (true) {
                            str3 = "";
                            if (i >= optJSONArray.length()) {
                                break;
                            }
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                JSONArray optJSONArray2 = optJSONObject.optJSONArray("including");
                                JSONArray optJSONArray3 = optJSONObject.optJSONArray("excluding");
                                if (m3724a(optJSONArray2, str2) && !m3724a(optJSONArray3, str2)) {
                                    str3 = optJSONObject.optString("effective_ad_unit_id", "");
                                    break;
                                }
                            }
                            i++;
                        }
                    }
                }
            }
            list2 = map.get(str3);
        }
        if (list2 == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (zzcoi zzcoiVar : list2) {
            String str4 = zzcoiVar.zzfge;
            if (!hashMap.containsKey(str4)) {
                hashMap.put(str4, new ArrayList());
            }
            ((List) hashMap.get(str4)).add(zzcoiVar.zzeig);
        }
        return hashMap;
    }
}
