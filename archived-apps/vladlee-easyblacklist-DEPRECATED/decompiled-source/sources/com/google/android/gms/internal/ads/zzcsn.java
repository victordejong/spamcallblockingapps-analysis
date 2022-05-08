package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsn.class */
public final class zzcsn implements zzcub<zzcsk> {

    /* renamed from: a */
    private final zzdhd f13817a;

    /* renamed from: b */
    private final zzczu f13818b;

    /* renamed from: c */
    private final PackageInfo f13819c;

    /* renamed from: d */
    private final zzavu f13820d;

    public zzcsn(zzdhd zzdhdVar, zzczu zzczuVar, PackageInfo packageInfo, zzavu zzavuVar) {
        this.f13817a = zzdhdVar;
        this.f13818b = zzczuVar;
        this.f13819c = packageInfo;
        this.f13820d = zzavuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcsk m3698a() {
        final ArrayList<String> arrayList = this.f13818b.zzgmn;
        return arrayList == null ? C2333wl.f10656a : arrayList.isEmpty() ? C2332wk.f10655a : new zzcsk(this, arrayList) { // from class: com.google.android.gms.internal.ads.wm

            /* renamed from: a */
            private final zzcsn f10657a;

            /* renamed from: b */
            private final ArrayList f10658b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10657a = this;
                this.f10658b = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzcty
            public final void zzr(Bundle bundle) {
                this.f10657a.m3697a(this.f10658b, bundle);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3697a(ArrayList arrayList, Bundle bundle) {
        String str;
        JSONArray optJSONArray;
        bundle.putInt("native_version", 3);
        bundle.putStringArrayList("native_templates", arrayList);
        bundle.putStringArrayList("native_custom_templates", this.f13818b.zzgmo);
        String str2 = "landscape";
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcmc)).booleanValue() && this.f13818b.zzddz.versionCode > 3) {
            bundle.putBoolean("enable_native_media_orientation", true);
            int i = this.f13818b.zzddz.zzbjx;
            String str3 = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "unknown" : "square" : "portrait" : "landscape" : "any";
            if (!"unknown".equals(str3)) {
                bundle.putString("native_media_orientation", str3);
            }
        }
        int i2 = this.f13818b.zzddz.zzbjw;
        if (i2 == 0) {
            str2 = "any";
        } else if (i2 == 1) {
            str2 = "portrait";
        } else if (i2 != 2) {
            str2 = "unknown";
        }
        if (!"unknown".equals(str2)) {
            bundle.putString("native_image_orientation", str2);
        }
        bundle.putBoolean("native_multiple_images", this.f13818b.zzddz.zzbjy);
        bundle.putBoolean("use_custom_mute", this.f13818b.zzddz.zzbkb);
        PackageInfo packageInfo = this.f13819c;
        int i3 = packageInfo == null ? 0 : packageInfo.versionCode;
        if (i3 > this.f13820d.zzvz()) {
            this.f13820d.zzwf();
            this.f13820d.zzcp(i3);
        }
        JSONObject zzwe = this.f13820d.zzwe();
        String jSONArray = (zzwe == null || (optJSONArray = zzwe.optJSONArray(this.f13818b.zzgmm)) == null) ? null : optJSONArray.toString();
        if (!TextUtils.isEmpty(jSONArray)) {
            bundle.putString("native_advanced_settings", jSONArray);
        }
        if (this.f13818b.zzgdu > 1) {
            bundle.putInt("max_num_ads", this.f13818b.zzgdu);
        }
        zzagz zzagzVar = this.f13818b.zzdkf;
        if (zzagzVar != null) {
            if (!TextUtils.isEmpty(zzagzVar.zzcyj)) {
                bundle.putString("ad_tag", zzagzVar.zzcyj);
            } else if (zzagzVar.versionCode >= 2) {
                int i4 = zzagzVar.zzbjx;
                str = "l";
                if (i4 != 2) {
                    if (i4 != 3) {
                        str = "l";
                    }
                    str = "p";
                }
                bundle.putString("ia_var", str);
            } else {
                int i5 = zzagzVar.zzcyi;
                str = "l";
                if (i5 != 1) {
                    if (i5 != 2) {
                        int i6 = zzagzVar.zzcyi;
                        StringBuilder sb = new StringBuilder(52);
                        sb.append("Instream ad video aspect ratio ");
                        sb.append(i6);
                        sb.append(" is wrong.");
                        zzayu.zzex(sb.toString());
                        str = "l";
                    }
                    str = "p";
                }
                bundle.putString("ia_var", str);
            }
            bundle.putBoolean("instr", true);
        }
        if (this.f13818b.zzaoo() != null) {
            bundle.putBoolean("has_delayed_banner_listener", true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcsk> zzanc() {
        return this.f13817a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.wj

            /* renamed from: a */
            private final zzcsn f10654a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10654a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10654a.m3698a();
            }
        });
    }
}
