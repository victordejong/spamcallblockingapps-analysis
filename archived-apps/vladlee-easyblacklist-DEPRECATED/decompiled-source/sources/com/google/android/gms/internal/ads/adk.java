package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import com.google.android.gms.internal.ads.zzdnk;
import com.google.android.gms.internal.ads.zzdnl;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adk.class */
final class adk {

    /* renamed from: a */
    private static final Charset f7257a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static zzdnl m5449a(zzdnk zzdnkVar) {
        zzdnl.zza zzer = zzdnl.zzawd().zzer(zzdnkVar.zzavv());
        for (zzdnk.zza zzaVar : zzdnkVar.zzavw()) {
            zzer.zzb((zzdnl.zzb) ((zzdrt) zzdnl.zzb.zzawf().zzhc(zzaVar.zzawa().zzavi()).zza(zzaVar.zzasj()).zza(zzaVar.zzask()).zzes(zzaVar.zzawb()).zzbaf()));
        }
        return (zzdnl) ((zzdrt) zzer.zzbaf());
    }

    /* renamed from: b */
    public static void m5448b(zzdnk zzdnkVar) {
        int zzavv = zzdnkVar.zzavv();
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        for (zzdnk.zza zzaVar : zzdnkVar.zzavw()) {
            if (zzaVar.zzasj() == zzdne.ENABLED) {
                if (!zzaVar.zzavz()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzaVar.zzawb())));
                } else if (zzaVar.zzask() == zzdnw.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzaVar.zzawb())));
                } else if (zzaVar.zzasj() != zzdne.UNKNOWN_STATUS) {
                    z2 = z2;
                    if (zzaVar.zzawb() == zzavv) {
                        if (!z2) {
                            z2 = true;
                        } else {
                            throw new GeneralSecurityException("keyset contains multiple primary keys");
                        }
                    }
                    if (zzaVar.zzawa().zzavk() != zzdna.zzb.ASYMMETRIC_PUBLIC) {
                        z = false;
                    }
                    i++;
                } else {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzaVar.zzawb())));
                }
            }
        }
        if (i == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        } else if (!z2 && !z) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
