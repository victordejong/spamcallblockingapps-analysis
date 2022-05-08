package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzh.class */
public final class zzh extends zzbq {

    /* renamed from: ID */
    private static final String f201ID = zza.ADWORDS_CLICK_REFERRER.toString();
    private static final String zzayx = zzb.COMPONENT.toString();
    private static final String zzayy = zzb.CONVERSION_ID.toString();
    private final Context zzri;

    public zzh(Context context) {
        super(f201ID, zzayy);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        zzp zzpVar = map.get(zzayy);
        if (zzpVar == null) {
            return zzgj.zzqg();
        }
        String zzc = zzgj.zzc(zzpVar);
        zzp zzpVar2 = map.get(zzayx);
        String zzc2 = zzpVar2 != null ? zzgj.zzc(zzpVar2) : null;
        Context context = this.zzri;
        String str = zzcw.zzbcl.get(zzc);
        String str2 = str;
        if (str == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_click_referrers", 0);
            str2 = sharedPreferences != null ? sharedPreferences.getString(zzc, "") : "";
            zzcw.zzbcl.put(zzc, str2);
        }
        String zzv = zzcw.zzv(str2, zzc2);
        return zzv != null ? zzgj.zzj(zzv) : zzgj.zzqg();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
