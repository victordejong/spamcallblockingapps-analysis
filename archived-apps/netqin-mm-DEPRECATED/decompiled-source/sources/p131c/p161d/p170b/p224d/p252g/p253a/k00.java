package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzdtj;
import com.google.android.gms.internal.ads.zzejz;
@VisibleForTesting
/* renamed from: c.d.b.d.g.a.k00 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/k00.class */
public final class k00 implements j00 {

    /* renamed from: a */
    public static final zzcf.zza f13826a;

    static {
        zzcf.zza.C10493zza u = zzcf.zza.m14539u();
        u.m14496f("E");
        f13826a = (zzcf.zza) ((zzejz) u.mo12342K());
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.j00
    /* renamed from: a */
    public final zzcf.zza mo26735a() {
        return f13826a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.j00
    /* renamed from: a */
    public final zzcf.zza mo26734a(Context context) throws PackageManager.NameNotFoundException {
        return zzdtj.m13201a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }
}
