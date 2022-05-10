package p131c.p132a.p133a.p134a;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzd;
import java.util.Arrays;
import java.util.concurrent.Callable;
/* renamed from: c.a.a.a.t0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/t0.class */
public final class CallableC2024t0 implements Callable<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ C1991f f7895a;

    /* renamed from: b */
    public final /* synthetic */ C2004k f7896b;

    /* renamed from: c */
    public final /* synthetic */ C1987d f7897c;

    public CallableC2024t0(C1987d dVar, C1991f fVar, C2004k kVar) {
        this.f7897c = dVar;
        this.f7895a = fVar;
        this.f7896b = kVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() throws Exception {
        zzd zzdVar;
        Context context;
        zzdVar = this.f7897c.f7809g;
        context = this.f7897c.f7808f;
        return zzdVar.mo9432a(5, context.getPackageName(), Arrays.asList(this.f7895a.m31313a()), this.f7896b.m31267c(), "subs", (String) null);
    }
}
