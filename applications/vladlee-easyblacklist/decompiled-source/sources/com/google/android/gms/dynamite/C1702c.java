package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/c.class */
final class C1702c implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.zzb zza(Context context, String str, DynamiteModule.VersionPolicy.zza zzaVar) {
        DynamiteModule.VersionPolicy.zzb zzbVar = new DynamiteModule.VersionPolicy.zzb();
        zzbVar.zzir = zzaVar.getLocalVersion(context, str);
        if (zzbVar.zzir != 0) {
            zzbVar.zzit = -1;
        } else {
            zzbVar.zzis = zzaVar.zza(context, str, true);
            if (zzbVar.zzis != 0) {
                zzbVar.zzit = 1;
            }
        }
        return zzbVar;
    }
}
