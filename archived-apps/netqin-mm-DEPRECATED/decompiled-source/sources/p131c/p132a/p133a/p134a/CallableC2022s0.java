package p131c.p132a.p133a.p134a;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzd;
import java.util.concurrent.Callable;
/* renamed from: c.a.a.a.s0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/s0.class */
public final class CallableC2022s0 implements Callable<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ int f7889a;

    /* renamed from: b */
    public final /* synthetic */ C2004k f7890b;

    /* renamed from: c */
    public final /* synthetic */ String f7891c;

    /* renamed from: d */
    public final /* synthetic */ Bundle f7892d;

    /* renamed from: e */
    public final /* synthetic */ C1987d f7893e;

    public CallableC2022s0(C1987d dVar, int i, C2004k kVar, String str, C1991f fVar, Bundle bundle) {
        this.f7893e = dVar;
        this.f7889a = i;
        this.f7890b = kVar;
        this.f7891c = str;
        this.f7892d = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() throws Exception {
        zzd zzdVar;
        Context context;
        zzdVar = this.f7893e.f7809g;
        int i = this.f7889a;
        context = this.f7893e.f7808f;
        return zzdVar.mo9433a(i, context.getPackageName(), this.f7890b.m31267c(), this.f7891c, (String) null, this.f7892d);
    }
}
