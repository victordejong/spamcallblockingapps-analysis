package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aeh.class */
final class aeh {
    /* renamed from: a */
    public static zzdow m5447a(zzdmd zzdmdVar) {
        int i = aek.f7279c[zzdmdVar.ordinal()];
        if (i == 1) {
            return zzdow.UNCOMPRESSED;
        }
        if (i == 2) {
            return zzdow.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
        }
        if (i == 3) {
            return zzdow.COMPRESSED;
        }
        String valueOf = String.valueOf(zzdmdVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("unknown point format: ");
        sb.append(valueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    /* renamed from: a */
    public static zzdox m5445a(zzdmr zzdmrVar) {
        int i = aek.f7278b[zzdmrVar.ordinal()];
        if (i == 1) {
            return zzdox.NIST_P256;
        }
        if (i == 2) {
            return zzdox.NIST_P384;
        }
        if (i == 3) {
            return zzdox.NIST_P521;
        }
        String valueOf = String.valueOf(zzdmrVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
        sb.append("unknown curve type: ");
        sb.append(valueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    /* renamed from: a */
    public static String m5444a(zzdmt zzdmtVar) {
        int i = aek.f7277a[zzdmtVar.ordinal()];
        if (i == 1) {
            return "HmacSha1";
        }
        if (i == 2) {
            return "HmacSha256";
        }
        if (i == 3) {
            return "HmacSha512";
        }
        String valueOf = String.valueOf(zzdmtVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
        sb.append("hash unsupported for HMAC: ");
        sb.append(valueOf);
        throw new NoSuchAlgorithmException(sb.toString());
    }

    /* renamed from: a */
    public static void m5446a(zzdmj zzdmjVar) {
        zzdov.zza(m5445a(zzdmjVar.zzauh().zzauu()));
        m5444a(zzdmjVar.zzauh().zzauv());
        if (zzdmjVar.zzauj() != zzdmd.UNKNOWN_FORMAT) {
            zzdit.zza(zzdmjVar.zzaui().zzauc());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }
}
