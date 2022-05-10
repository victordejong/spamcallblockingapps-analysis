package p131c.p132a.p133a.p134a;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zza;
import com.google.android.gms.internal.play_billing.zzd;
import java.util.concurrent.Callable;
/* renamed from: c.a.a.a.m0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/m0.class */
public final class CallableC2010m0 implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ C1979a f7866a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC1982b f7867b;

    /* renamed from: c */
    public final /* synthetic */ C1987d f7868c;

    public CallableC2010m0(C1987d dVar, C1979a aVar, AbstractC1982b bVar) {
        this.f7868c = dVar;
        this.f7866a = aVar;
        this.f7867b = bVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() throws Exception {
        zzd zzdVar;
        Context context;
        String str;
        try {
            zzdVar = this.f7868c.f7809g;
            context = this.f7868c.f7808f;
            String packageName = context.getPackageName();
            String a = this.f7866a.m31363a();
            C1979a aVar = this.f7866a;
            str = this.f7868c.f7804b;
            Bundle a2 = zzdVar.mo9438a(9, packageName, a, zza.m9447a(aVar, str));
            this.f7868c.m31337a(new RunnableC2008l0(this, zza.m9448a(a2, "BillingClient"), zza.m9443b(a2, "BillingClient")));
            return null;
        } catch (Exception e) {
            this.f7868c.m31337a(new RunnableC2005k0(this, e));
            return null;
        }
    }
}
