package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzam.class */
public final class zzam extends zzbq {
    private final zzan zzbao;

    /* renamed from: ID */
    private static final String f167ID = zza.FUNCTION_CALL.toString();
    private static final String zzban = zzb.FUNCTION_CALL_NAME.toString();
    private static final String zzayz = zzb.ADDITIONAL_PARAMS.toString();

    public zzam(zzan zzanVar) {
        super(f167ID, zzban);
        this.zzbao = zzanVar;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String zzc = zzgj.zzc(map.get(zzban));
        HashMap hashMap = new HashMap();
        zzp zzpVar = map.get(zzayz);
        if (zzpVar != null) {
            Object zzh = zzgj.zzh(zzpVar);
            if (!(zzh instanceof Map)) {
                zzdi.zzab("FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.");
                return zzgj.zzqg();
            }
            for (Map.Entry entry : ((Map) zzh).entrySet()) {
                hashMap.put(entry.getKey().toString(), entry.getValue());
            }
        }
        try {
            return zzgj.zzj(this.zzbao.zza(zzc, hashMap));
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(zzc).length() + 34 + String.valueOf(message).length());
            sb.append("Custom macro/tag ");
            sb.append(zzc);
            sb.append(" threw exception ");
            sb.append(message);
            zzdi.zzab(sb.toString());
            return zzgj.zzqg();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return false;
    }
}
