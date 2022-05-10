package p131c.p161d.p170b.p224d.p251f;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: c.d.b.d.f.e */
/* loaded from: classes-dex2jar.jar:c/d/b/d/f/e.class */
public final class C3332e implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    /* renamed from: a */
    public final DynamiteModule.VersionPolicy.zza mo16981a(Context context, String str, DynamiteModule.VersionPolicy.zzb zzbVar) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.zza zzaVar = new DynamiteModule.VersionPolicy.zza();
        int a = zzbVar.mo16980a(context, str);
        zzaVar.f23604a = a;
        if (a != 0) {
            zzaVar.f23605b = zzbVar.mo16979a(context, str, false);
        } else {
            zzaVar.f23605b = zzbVar.mo16979a(context, str, true);
        }
        if (zzaVar.f23604a == 0 && zzaVar.f23605b == 0) {
            zzaVar.f23606c = 0;
        } else if (zzaVar.f23604a >= zzaVar.f23605b) {
            zzaVar.f23606c = -1;
        } else {
            zzaVar.f23606c = 1;
        }
        return zzaVar;
    }
}
