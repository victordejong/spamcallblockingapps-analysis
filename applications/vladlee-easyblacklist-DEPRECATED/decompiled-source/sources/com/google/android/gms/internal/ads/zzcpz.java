package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpz.class */
public final class zzcpz implements zzcty<Bundle> {

    /* renamed from: a */
    private final zzczu f13717a;

    public zzcpz(zzczu zzczuVar) {
        Preconditions.checkNotNull(zzczuVar, "the targeting must not be null");
        this.f13717a = zzczuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzug zzugVar = this.f13717a.zzgml;
        bundle2.putString("slotname", this.f13717a.zzgmm);
        boolean z = true;
        if (this.f13717a.zzgms.contains("new_rewarded")) {
            bundle2.putBoolean("is_new_rewarded", true);
        }
        zzdaa.zza(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzugVar.zzcby)), zzugVar.zzcby != -1);
        zzdaa.zza(bundle2, "extras", zzugVar.extras);
        zzdaa.zza(bundle2, "cust_gender", Integer.valueOf(zzugVar.zzcbz), zzugVar.zzcbz != -1);
        zzdaa.zza(bundle2, "kw", zzugVar.zzcca);
        zzdaa.zza(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zzugVar.zzabo), zzugVar.zzabo != -1);
        if (zzugVar.zzccb) {
            bundle2.putBoolean("test_request", zzugVar.zzccb);
        }
        zzdaa.zza(bundle2, "d_imp_hdr", (Integer) 1, zzugVar.versionCode >= 2 && zzugVar.zzbkh);
        zzdaa.zza(bundle2, "ppid", zzugVar.zzccc, zzugVar.versionCode >= 2 && !TextUtils.isEmpty(zzugVar.zzccc));
        if (zzugVar.zzmi != null) {
            Location location = zzugVar.zzmi;
            float accuracy = location.getAccuracy();
            long time = location.getTime();
            long latitude = (long) (location.getLatitude() * 1.0E7d);
            long longitude = (long) (location.getLongitude() * 1.0E7d);
            Bundle bundle3 = new Bundle();
            bundle3.putFloat("radius", Float.valueOf(accuracy * 1000.0f).floatValue());
            bundle3.putLong("lat", Long.valueOf(latitude).longValue());
            bundle3.putLong("long", Long.valueOf(longitude).longValue());
            bundle3.putLong("time", Long.valueOf(time * 1000).longValue());
            bundle2.putBundle("uule", bundle3);
        }
        zzdaa.zza(bundle2, ImagesContract.URL, zzugVar.zzcce);
        zzdaa.zza(bundle2, "neighboring_content_urls", zzugVar.zzccl);
        zzdaa.zza(bundle2, "custom_targeting", zzugVar.zzccg);
        zzdaa.zza(bundle2, "category_exclusions", zzugVar.zzcch);
        zzdaa.zza(bundle2, "request_agent", zzugVar.zzcci);
        zzdaa.zza(bundle2, "request_pkg", zzugVar.zzccj);
        zzdaa.zza(bundle2, "is_designed_for_families", Boolean.valueOf(zzugVar.zzcck), zzugVar.versionCode >= 7);
        if (zzugVar.versionCode >= 8) {
            int i = zzugVar.zzabp;
            if (zzugVar.zzabp == -1) {
                z = false;
            }
            zzdaa.zza(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(i), z);
            zzdaa.zza(bundle2, "max_ad_content_rating", zzugVar.zzabq);
        }
    }
}
