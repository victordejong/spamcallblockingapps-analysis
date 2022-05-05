package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.gass.AdShield2Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyu.class */
public final class zzbyu {

    /* renamed from: a */
    private final Context f12733a;

    /* renamed from: b */
    private final zzbyl f12734b;

    /* renamed from: c */
    private final zzdq f12735c;

    /* renamed from: d */
    private final zzazb f12736d;

    /* renamed from: e */
    private final zza f12737e;

    /* renamed from: f */
    private final zzsm f12738f;

    /* renamed from: g */
    private final Executor f12739g;

    /* renamed from: h */
    private final zzaby f12740h;

    /* renamed from: i */
    private final zzbzh f12741i;

    /* renamed from: j */
    private final ScheduledExecutorService f12742j;

    public zzbyu(Context context, zzbyl zzbylVar, zzdq zzdqVar, zzazb zzazbVar, zza zzaVar, zzsm zzsmVar, Executor executor, zzczu zzczuVar, zzbzh zzbzhVar, ScheduledExecutorService scheduledExecutorService) {
        this.f12733a = context;
        this.f12734b = zzbylVar;
        this.f12735c = zzdqVar;
        this.f12736d = zzazbVar;
        this.f12737e = zzaVar;
        this.f12738f = zzsmVar;
        this.f12739g = executor;
        this.f12740h = zzczuVar.zzddz;
        this.f12741i = zzbzhVar;
        this.f12742j = scheduledExecutorService;
    }

    /* renamed from: a */
    private static <T> zzdhe<T> m3849a(zzdhe<T> zzdheVar) {
        return zzdgs.zzb(zzdheVar, Exception.class, new zzdgf() { // from class: com.google.android.gms.internal.ads.ou

            /* renamed from: a */
            private final Object f10305a = null;

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                Object obj2 = this.f10305a;
                zzavs.zza("Error during loading assets.", (Exception) obj);
                return zzdgs.zzaj(obj2);
            }
        }, zzazd.zzdwj);
    }

    /* renamed from: a */
    private final zzdhe<List<zzabu>> m3847a(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzdgs.zzaj(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(m3843a(jSONArray.optJSONObject(i), z));
        }
        return zzdgs.zzb(zzdgs.zzg(arrayList), C2120oo.f10294a, this.f12739g);
    }

    /* renamed from: a */
    private final zzdhe<zzabu> m3843a(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzdgs.zzaj(null);
        }
        final String optString = jSONObject.optString(ImagesContract.URL);
        if (TextUtils.isEmpty(optString)) {
            return zzdgs.zzaj(null);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt("width", -1);
        final int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return zzdgs.zzaj(new zzabu(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return m3842a(jSONObject.optBoolean("require"), zzdgs.zzb(this.f12734b.zza(optString, optDouble, optBoolean), new zzded(optString, optDouble, optInt, optInt2) { // from class: com.google.android.gms.internal.ads.oq

            /* renamed from: a */
            private final String f10297a;

            /* renamed from: b */
            private final double f10298b;

            /* renamed from: c */
            private final int f10299c;

            /* renamed from: d */
            private final int f10300d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10297a = optString;
                this.f10298b = optDouble;
                this.f10299c = optInt;
                this.f10300d = optInt2;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                String str = this.f10297a;
                return new zzabu(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.f10298b, this.f10299c, this.f10300d);
            }
        }, this.f12739g));
    }

    /* renamed from: a */
    private static <T> zzdhe<T> m3842a(boolean z, final zzdhe<T> zzdheVar) {
        return z ? zzdgs.zzb(zzdheVar, new zzdgf(zzdheVar) { // from class: com.google.android.gms.internal.ads.ot

            /* renamed from: a */
            private final zzdhe f10304a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10304a = zzdheVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return obj != null ? this.f10304a : zzdgs.zzk(new zzclr("Retrieve required value in native ad response failed.", 0));
            }
        }, zzazd.zzdwj) : m3849a(zzdheVar);
    }

    /* renamed from: a */
    private static zzxy m3846a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        zzxy zzxyVar = null;
        if (!TextUtils.isEmpty(optString)) {
            zzxyVar = TextUtils.isEmpty(optString2) ? null : new zzxy(optString, optString2);
        }
        return zzxyVar;
    }

    /* renamed from: a */
    private static Integer m3845a(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    public static List<zzxy> zzi(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return Collections.emptyList();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            zzxy a = m3846a(optJSONArray.optJSONObject(i));
            if (a != null) {
                arrayList.add(a);
            }
        }
        return arrayList;
    }

    public static zzxy zzj(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return m3846a(optJSONObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzabp m3844a(JSONObject jSONObject, List list) {
        Integer num = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString("text");
        Integer a = m3845a(jSONObject, "bg_color");
        Integer a2 = m3845a(jSONObject, "text_color");
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", 1000);
        int optInt3 = jSONObject.optInt("presentation_ms", AdShield2Logger.EVENTID_ERROR_RUN_VM_INIT);
        if (optInt > 0) {
            num = Integer.valueOf(optInt);
        }
        return new zzabp(optString, list, a, a2, num, optInt3 + optInt2, this.f12740h.zzbjz, optBoolean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3848a(String str) {
        zzq.zzkr();
        zzbdi zza = zzbdr.zza(this.f12733a, zzbey.zzabq(), "native-omid", false, false, this.f12735c, this.f12736d, null, null, this.f12737e, this.f12738f, null, false);
        final zzazi zzl = zzazi.zzl(zza);
        zza.zzaaa().zza(new zzbeu(zzl) { // from class: com.google.android.gms.internal.ads.ov

            /* renamed from: a */
            private final zzazi f10306a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10306a = zzl;
            }

            @Override // com.google.android.gms.internal.ads.zzbeu
            public final void zzak(boolean z) {
                this.f10306a.zzxn();
            }
        });
        zza.loadData(str, "text/html", "UTF-8");
        return zzl;
    }

    public final zzdhe<zzabu> zzc(JSONObject jSONObject, String str) {
        return m3843a(jSONObject.optJSONObject(str), this.f12740h.zzcvo);
    }

    public final zzdhe<List<zzabu>> zzd(JSONObject jSONObject, String str) {
        return m3847a(jSONObject.optJSONArray(str), this.f12740h.zzcvo, this.f12740h.zzbjy);
    }

    public final zzdhe<zzabp> zze(JSONObject jSONObject, String str) {
        final JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return zzdgs.zzaj(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        JSONArray jSONArray = optJSONArray;
        if (optJSONArray == null) {
            jSONArray = optJSONArray;
            if (optJSONObject2 != null) {
                jSONArray = new JSONArray();
                jSONArray.put(optJSONObject2);
            }
        }
        return m3842a(optJSONObject.optBoolean("require"), zzdgs.zzb(m3847a(jSONArray, false, true), new zzded(this, optJSONObject) { // from class: com.google.android.gms.internal.ads.op

            /* renamed from: a */
            private final zzbyu f10295a;

            /* renamed from: b */
            private final JSONObject f10296b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10295a = this;
                this.f10296b = optJSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                return this.f10295a.m3844a(this.f10296b, (List) obj);
            }
        }, this.f12739g));
    }

    public final zzdhe<zzbdi> zzl(JSONObject jSONObject) {
        JSONObject zza = zzaxs.zza(jSONObject, "html_containers", "instream");
        if (zza == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject == null) {
                return zzdgs.zzaj(null);
            }
            if (!TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
                return m3849a(zzdgs.zza(this.f12741i.zzm(optJSONObject), ((Integer) zzve.zzoy().zzd(zzzn.zzcma)).intValue(), TimeUnit.SECONDS, this.f12742j));
            }
            zzavs.zzez("Required field 'vast_xml' is missing");
            return zzdgs.zzaj(null);
        }
        final zzdhe<zzbdi> zzo = this.f12741i.zzo(zza.optString("base_url"), zza.optString("html"));
        return zzdgs.zzb(zzo, new zzdgf(zzo) { // from class: com.google.android.gms.internal.ads.or

            /* renamed from: a */
            private final zzdhe f10301a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10301a = zzo;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                zzdhe zzdheVar = this.f10301a;
                zzbdi zzbdiVar = (zzbdi) obj;
                if (zzbdiVar != null && zzbdiVar.zzyl() != null) {
                    return zzdheVar;
                }
                throw new zzclr("Retrieve video view in instream ad response failed.", 0);
            }
        }, zzazd.zzdwj);
    }
}
