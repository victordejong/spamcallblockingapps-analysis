package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzas.class */
public final class zzas extends zzbq {

    /* renamed from: ID */
    private static final String f168ID = zza.CUSTOM_VAR.toString();
    private static final String NAME = zzb.NAME.toString();
    private static final String zzbay = zzb.DEFAULT_VALUE.toString();
    private final DataLayer zzazg;

    public zzas(DataLayer dataLayer) {
        super(f168ID, NAME);
        this.zzazg = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        Object obj = this.zzazg.get(zzgj.zzc(map.get(NAME)));
        if (obj != null) {
            return zzgj.zzj(obj);
        }
        zzp zzpVar = map.get(zzbay);
        return zzpVar != null ? zzpVar : zzgj.zzqg();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return false;
    }
}
