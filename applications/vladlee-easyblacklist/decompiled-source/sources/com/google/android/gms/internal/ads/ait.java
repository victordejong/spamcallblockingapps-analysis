package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ait.class */
final class ait implements air {
    @Override // com.google.android.gms.internal.ads.air
    /* renamed from: a */
    public final Object mo5306a() {
        return zzdsy.zzbba().zzbbb();
    }

    @Override // com.google.android.gms.internal.ads.air
    /* renamed from: a */
    public final Object mo5304a(Object obj, Object obj2) {
        zzdsy zzdsyVar = (zzdsy) obj;
        zzdsy zzdsyVar2 = (zzdsy) obj2;
        zzdsy zzdsyVar3 = zzdsyVar;
        if (!zzdsyVar2.isEmpty()) {
            zzdsyVar3 = zzdsyVar;
            if (!zzdsyVar.isMutable()) {
                zzdsyVar3 = zzdsyVar.zzbbb();
            }
            zzdsyVar3.zza(zzdsyVar2);
        }
        return zzdsyVar3;
    }

    @Override // com.google.android.gms.internal.ads.air
    /* renamed from: a */
    public final Map<?, ?> mo5305a(Object obj) {
        return (zzdsy) obj;
    }

    @Override // com.google.android.gms.internal.ads.air
    /* renamed from: b */
    public final aiq<?, ?> mo5303b() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.air
    /* renamed from: b */
    public final Map<?, ?> mo5302b(Object obj) {
        return (zzdsy) obj;
    }

    @Override // com.google.android.gms.internal.ads.air
    /* renamed from: c */
    public final boolean mo5301c(Object obj) {
        return !((zzdsy) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.ads.air
    /* renamed from: d */
    public final Object mo5300d(Object obj) {
        ((zzdsy) obj).zzaxq();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.air
    /* renamed from: e */
    public final int mo5299e(Object obj) {
        zzdsy zzdsyVar = (zzdsy) obj;
        if (zzdsyVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzdsyVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
