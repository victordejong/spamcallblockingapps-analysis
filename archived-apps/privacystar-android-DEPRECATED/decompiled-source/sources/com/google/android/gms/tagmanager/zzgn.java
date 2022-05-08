package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzgn.class */
public final class zzgn {
    private static zzdz<zzp> zza(zzdz<zzp> zzdzVar) {
        try {
            return new zzdz<>(zzgj.zzj(zzee(zzgj.zzc(zzdzVar.getObject()))), zzdzVar.zzoy());
        } catch (UnsupportedEncodingException e) {
            zzdi.zza("Escape URI: unsupported encoding", e);
            return zzdzVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzdz<zzp> zza(zzdz<zzp> zzdzVar, int... iArr) {
        for (int i : iArr) {
            if (!(zzgj.zzh(zzdzVar.getObject()) instanceof String)) {
                zzdi.m329e("Escaping can only be applied to strings.");
            } else if (i != 12) {
                StringBuilder sb = new StringBuilder(39);
                sb.append("Unsupported Value Escaping: ");
                sb.append(i);
                zzdi.m329e(sb.toString());
            } else {
                zzdzVar = zza(zzdzVar);
            }
        }
        return zzdzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzee(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
    }
}
