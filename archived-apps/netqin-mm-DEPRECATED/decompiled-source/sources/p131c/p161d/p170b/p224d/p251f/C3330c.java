package p131c.p161d.p170b.p224d.p251f;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: c.d.b.d.f.c */
/* loaded from: classes-dex2jar.jar:c/d/b/d/f/c.class */
public final class C3330c implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    /* renamed from: a */
    public final DynamiteModule.VersionPolicy.zza mo16981a(Context context, String str, DynamiteModule.VersionPolicy.zzb zzbVar) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.zza zzaVar = new DynamiteModule.VersionPolicy.zza();
        int a = zzbVar.mo16979a(context, str, false);
        zzaVar.f23605b = a;
        if (a == 0) {
            zzaVar.f23606c = 0;
        } else {
            zzaVar.f23606c = 1;
        }
        return zzaVar;
    }
}
