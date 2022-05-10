package p131c.p161d.p170b.p224d.p251f;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: c.d.b.d.f.a */
/* loaded from: classes-dex2jar.jar:c/d/b/d/f/a.class */
public final class C3328a implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    /* renamed from: a */
    public final DynamiteModule.VersionPolicy.zza mo16981a(Context context, String str, DynamiteModule.VersionPolicy.zzb zzbVar) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.zza zzaVar = new DynamiteModule.VersionPolicy.zza();
        int a = zzbVar.mo16979a(context, str, true);
        zzaVar.f23605b = a;
        if (a != 0) {
            zzaVar.f23606c = 1;
        } else {
            int a2 = zzbVar.mo16980a(context, str);
            zzaVar.f23604a = a2;
            if (a2 != 0) {
                zzaVar.f23606c = -1;
            }
        }
        return zzaVar;
    }
}
