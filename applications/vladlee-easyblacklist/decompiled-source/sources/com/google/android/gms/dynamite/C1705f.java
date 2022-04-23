package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/f.class */
final class C1705f implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.zzb zza(Context context, String str, DynamiteModule.VersionPolicy.zza zzaVar) {
        int i;
        DynamiteModule.VersionPolicy.zzb zzbVar = new DynamiteModule.VersionPolicy.zzb();
        zzbVar.zzir = zzaVar.getLocalVersion(context, str);
        zzbVar.zzis = zzaVar.zza(context, str, true);
        if (zzbVar.zzir == 0 && zzbVar.zzis == 0) {
            i = 0;
        } else if (zzbVar.zzis >= zzbVar.zzir) {
            zzbVar.zzit = 1;
            return zzbVar;
        } else {
            i = -1;
        }
        zzbVar.zzit = i;
        return zzbVar;
    }
}
