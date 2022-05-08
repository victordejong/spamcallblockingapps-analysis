package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdw.class */
final class zzdw<T> implements zzef<T> {
    private final zzdr zzkc;
    private final boolean zzkd;
    private final zzex<?, ?> zzkm;
    private final zzca<?> zzkn;

    private zzdw(zzex<?, ?> zzexVar, zzca<?> zzcaVar, zzdr zzdrVar) {
        this.zzkm = zzexVar;
        this.zzkd = zzcaVar.zze(zzdrVar);
        this.zzkn = zzcaVar;
        this.zzkc = zzdrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> zzdw<T> zza(zzex<?, ?> zzexVar, zzca<?> zzcaVar, zzdr zzdrVar) {
        return new zzdw<>(zzexVar, zzcaVar, zzdrVar);
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final boolean equals(T t, T t2) {
        if (!this.zzkm.zzm(t).equals(this.zzkm.zzm(t2))) {
            return false;
        }
        if (this.zzkd) {
            return this.zzkn.zza(t).equals(this.zzkn.zza(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final int hashCode(T t) {
        int hashCode = this.zzkm.zzm(t).hashCode();
        int i = hashCode;
        if (this.zzkd) {
            i = (hashCode * 53) + this.zzkn.zza(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final void zza(T t, zzfr zzfrVar) throws IOException {
        int zzap;
        Object value;
        Iterator<Map.Entry<?, Object>> it = this.zzkn.zza(t).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            zzcf zzcfVar = (zzcf) next.getKey();
            if (zzcfVar.zzar() != zzfq.MESSAGE || zzcfVar.zzas() || zzcfVar.zzat()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof zzcx) {
                zzap = zzcfVar.zzap();
                value = ((zzcx) next).zzbg().zzl();
            } else {
                zzap = zzcfVar.zzap();
                value = next.getValue();
            }
            zzfrVar.zza(zzap, value);
        }
        zzex<?, ?> zzexVar = this.zzkm;
        zzexVar.zzc(zzexVar.zzm(t), zzfrVar);
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final void zzc(T t) {
        this.zzkm.zzc(t);
        this.zzkn.zzc(t);
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final void zzc(T t, T t2) {
        zzeh.zza(this.zzkm, t, t2);
        if (this.zzkd) {
            zzeh.zza(this.zzkn, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final int zzj(T t) {
        zzex<?, ?> zzexVar = this.zzkm;
        int zzn = zzexVar.zzn(zzexVar.zzm(t)) + 0;
        int i = zzn;
        if (this.zzkd) {
            i = zzn + this.zzkn.zza(t).zzao();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final boolean zzk(T t) {
        return this.zzkn.zza(t).isInitialized();
    }
}
