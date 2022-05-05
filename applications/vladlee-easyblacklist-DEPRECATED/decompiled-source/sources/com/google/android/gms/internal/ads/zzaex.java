package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaex.class */
public final class zzaex implements zzafn<zzbdi> {
    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbdi zzbdiVar, Map map) {
        zzbdi zzbdiVar2 = zzbdiVar;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                zzavs.zzez("No label given for CSI tick.");
            } else if (TextUtils.isEmpty(str4)) {
                zzavs.zzez("No timestamp given for CSI tick.");
            } else {
                try {
                    long parseLong = Long.parseLong(str4);
                    long currentTimeMillis = zzq.zzkx().currentTimeMillis();
                    long elapsedRealtime = zzq.zzkx().elapsedRealtime();
                    String str5 = str3;
                    if (TextUtils.isEmpty(str3)) {
                        str5 = "native:view_load";
                    }
                    zzbdiVar2.zzyq().zza(str2, str5, elapsedRealtime + (parseLong - currentTimeMillis));
                } catch (NumberFormatException e) {
                    zzavs.zzd("Malformed timestamp for CSI tick.", e);
                }
            }
        } else if ("experiment".equals(str)) {
            String str6 = (String) map.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            if (TextUtils.isEmpty(str6)) {
                zzavs.zzez("No value given for CSI experiment.");
                return;
            }
            zzaae zzqp = zzbdiVar2.zzyq().zzqp();
            if (zzqp == null) {
                zzavs.zzez("No ticker for WebView, dropping experiment ID.");
            } else {
                zzqp.zzh("e", str6);
            }
        } else if ("extra".equals(str)) {
            String str7 = (String) map.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
            String str8 = (String) map.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            if (TextUtils.isEmpty(str8)) {
                zzavs.zzez("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str7)) {
                zzavs.zzez("No name given for CSI extra.");
            } else {
                zzaae zzqp2 = zzbdiVar2.zzyq().zzqp();
                if (zzqp2 == null) {
                    zzavs.zzez("No ticker for WebView, dropping extra parameter.");
                } else {
                    zzqp2.zzh(str7, str8);
                }
            }
        }
    }
}
