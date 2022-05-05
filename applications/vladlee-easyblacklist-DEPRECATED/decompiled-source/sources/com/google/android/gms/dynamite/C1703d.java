package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/d.class */
final class C1703d implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.zzb zza(Context context, String str, DynamiteModule.VersionPolicy.zza zzaVar) {
        int i;
        DynamiteModule.VersionPolicy.zzb zzbVar = new DynamiteModule.VersionPolicy.zzb();
        zzbVar.zzir = zzaVar.getLocalVersion(context, str);
        zzbVar.zzis = zzaVar.zza(context, str, true);
        if (zzbVar.zzir == 0 && zzbVar.zzis == 0) {
            i = 0;
        } else if (zzbVar.zzir >= zzbVar.zzis) {
            i = -1;
        } else {
            zzbVar.zzit = 1;
            return zzbVar;
        }
        zzbVar.zzit = i;
        return zzbVar;
    }
}
