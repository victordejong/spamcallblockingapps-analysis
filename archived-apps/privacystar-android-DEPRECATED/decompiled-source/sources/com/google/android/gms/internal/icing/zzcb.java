package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzck;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcb.class */
final class zzcb extends zzca<Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzca
    public final int zza(Map.Entry<?, ?> entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzca
    public final zzcd<Object> zza(Object obj) {
        return ((zzck.zzc) obj).zzhs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzca
    public final void zza(zzfr zzfrVar, Map.Entry<?, ?> entry) throws IOException {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzca
    public final void zza(Object obj, zzcd<Object> zzcdVar) {
        ((zzck.zzc) obj).zzhs = zzcdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzca
    public final zzcd<Object> zzb(Object obj) {
        zzcd<Object> zza = zza(obj);
        zzcd<Object> zzcdVar = zza;
        if (zza.isImmutable()) {
            zzcdVar = (zzcd) zza.clone();
            zza(obj, zzcdVar);
        }
        return zzcdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzca
    public final void zzc(Object obj) {
        zza(obj).zzp();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzca
    public final boolean zze(zzdr zzdrVar) {
        return zzdrVar instanceof zzck.zzc;
    }
}
