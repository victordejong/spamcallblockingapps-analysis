package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrb.class */
public final class zzrb implements Comparator<zzqp> {
    public zzrb(zzqy zzqyVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzqp zzqpVar, zzqp zzqpVar2) {
        zzqp zzqpVar3 = zzqpVar;
        zzqp zzqpVar4 = zzqpVar2;
        if (zzqpVar3.m3098b() < zzqpVar4.m3098b()) {
            return -1;
        }
        if (zzqpVar3.m3098b() > zzqpVar4.m3098b()) {
            return 1;
        }
        if (zzqpVar3.m3099a() < zzqpVar4.m3099a()) {
            return -1;
        }
        if (zzqpVar3.m3099a() > zzqpVar4.m3099a()) {
            return 1;
        }
        float d = (zzqpVar3.m3096d() - zzqpVar3.m3098b()) * (zzqpVar3.m3097c() - zzqpVar3.m3099a());
        float d2 = (zzqpVar4.m3096d() - zzqpVar4.m3098b()) * (zzqpVar4.m3097c() - zzqpVar4.m3099a());
        if (d > d2) {
            return -1;
        }
        return d < d2 ? 1 : 0;
    }
}
