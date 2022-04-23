package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafa.class */
public final class zzafa {
    public static final zzafn<zzbdi> zzcwu = C1835e.f8411a;
    public static final zzafn<zzbdi> zzcwv = C1889g.f8490a;
    public static final zzafn<zzbdi> zzcww = C1862f.f8451a;
    public static final zzafn<zzbdi> zzcwx = new C1997k();
    public static final zzafn<zzbdi> zzcwy = new C1970j();
    public static final zzafn<zzbdi> zzcwz = C1943i.f8588a;
    public static final zzafn<Object> zzcxa = new C2051m();
    public static final zzafn<zzbdi> zzcxb = new C2024l();
    public static final zzafn<zzbdi> zzcxc = C1916h.f8531a;
    public static final zzafn<zzbdi> zzcxd = new C2105o();
    public static final zzafn<zzbdi> zzcxe = new C2078n();
    public static final zzafn<zzbaz> zzcxf = new zzbcg();
    public static final zzafn<zzbaz> zzcxg = new zzbcj();
    public static final zzafn<zzbdi> zzcxh = new zzaex();
    public static final zzaft zzcxi = new zzaft();
    public static final zzafn<zzbdi> zzcxj = new C2159q();
    public static final zzafn<zzbdi> zzcxk = new C2132p();
    public static final zzafn<zzbdi> zzcxl = new C2186r();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4427a(zzahs zzahsVar, Map map) {
        Uri uri;
        String str = (String) map.get("u");
        if (str == null) {
            zzavs.zzez("URL missing from click GMSG.");
            return;
        }
        Uri parse = Uri.parse(str);
        try {
            zzdq zzaad = ((zzbeq) zzahsVar).zzaad();
            uri = parse;
            if (zzaad != null) {
                uri = parse;
                if (zzaad.zzb(parse)) {
                    uri = zzaad.zza(parse, ((zzbei) zzahsVar).getContext(), ((zzbes) zzahsVar).getView(), ((zzbei) zzahsVar).zzyn());
                }
            }
        } catch (zzdt e) {
            String valueOf = String.valueOf(str);
            zzavs.zzez(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        zzbei zzbeiVar = (zzbei) zzahsVar;
        new zzayb(zzbeiVar.getContext(), ((zzbet) zzahsVar).zzyr().zzbma, zzauk.zzb(uri, zzbeiVar.getContext())).zzvr();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4426a(zzbei zzbeiVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzavs.zzez("URL missing from httpTrack GMSG.");
        } else {
            new zzayb(zzbeiVar.getContext(), ((zzbet) zzbeiVar).zzyr().zzbma, str).zzvr();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4425a(zzbeq zzbeqVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            zzdq zzaad = zzbeqVar.zzaad();
            if (zzaad != null) {
                zzaad.zzbw().zza(parseInt, parseInt2, parseInt3);
            }
        } catch (NumberFormatException e) {
            zzavs.zzez("Could not parse touch parameters from gmsg.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final /* synthetic */ void m4424b(zzbei zzbeiVar, Map map) {
        JSONException e;
        String str;
        String optString;
        boolean z;
        PackageManager packageManager = zzbeiVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        optString = jSONObject2.optString("id");
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString("m");
                        String optString5 = jSONObject2.optString("p");
                        String optString6 = jSONObject2.optString("c");
                        jSONObject2.optString("f");
                        jSONObject2.optString("e");
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e2) {
                                String valueOf = String.valueOf(optString7);
                                zzavs.zzc(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e2);
                                intent = null;
                            }
                        }
                        z = true;
                        Intent intent2 = intent;
                        if (intent == null) {
                            Intent intent3 = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent3.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent3.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent3.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent3.setPackage(optString5);
                            }
                            intent2 = intent3;
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                intent2 = intent3;
                                if (split.length == 2) {
                                    intent3.setComponent(new ComponentName(split[0], split[1]));
                                    intent2 = intent3;
                                }
                            }
                        }
                        if (packageManager.resolveActivity(intent2, 65536) == null) {
                            z = false;
                        }
                    } catch (JSONException e3) {
                        e = e3;
                        str = "Error parsing the intent data.";
                    }
                    try {
                        jSONObject.put(optString, z);
                    } catch (JSONException e4) {
                        e = e4;
                        str = "Error constructing openable urls response.";
                        zzavs.zzc(str, e);
                    }
                }
                ((zzahs) zzbeiVar).zzb("openableIntents", jSONObject);
            } catch (JSONException e5) {
                ((zzahs) zzbeiVar).zzb("openableIntents", new JSONObject());
            }
        } catch (JSONException e6) {
            ((zzahs) zzbeiVar).zzb("openableIntents", new JSONObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static final /* synthetic */ void m4423c(zzbei zzbeiVar, Map map) {
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            zzavs.zzez("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = zzbeiVar.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) == null) {
                z = false;
            }
            hashMap.put(str2, Boolean.valueOf(z));
        }
        ((zzahs) zzbeiVar).zza("openableURLs", hashMap);
    }
}
