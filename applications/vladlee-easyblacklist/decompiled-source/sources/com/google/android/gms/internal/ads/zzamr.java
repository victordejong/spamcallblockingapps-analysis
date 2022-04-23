package com.google.android.gms.internal.ads;

import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamr.class */
public final class zzamr {
    public static int zza(AdRequest.ErrorCode errorCode) {
        int i = C1793cl.f8337a[errorCode.ordinal()];
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }

    public static MediationAdRequest zza(zzug zzugVar, boolean z) {
        HashSet hashSet = zzugVar.zzcca != null ? new HashSet(zzugVar.zzcca) : null;
        Date date = new Date(zzugVar.zzcby);
        int i = zzugVar.zzcbz;
        return new MediationAdRequest(date, i != 1 ? i != 2 ? AdRequest.Gender.UNKNOWN : AdRequest.Gender.FEMALE : AdRequest.Gender.MALE, hashSet, z, zzugVar.zzmi);
    }
}
