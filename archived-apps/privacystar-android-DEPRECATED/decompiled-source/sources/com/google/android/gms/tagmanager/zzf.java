package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzf.class */
public final class zzf extends zzbq {

    /* renamed from: ID */
    private static final String f194ID = zza.ADVERTISING_TRACKING_ENABLED.toString();
    private final zza zzayw;

    public zzf(Context context) {
        this(zza.zzn(context));
    }

    @VisibleForTesting
    private zzf(zza zzaVar) {
        super(f194ID, new String[0]);
        this.zzayw = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return zzgj.zzj(Boolean.valueOf(!this.zzayw.isLimitAdTrackingEnabled()));
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return false;
    }
}
