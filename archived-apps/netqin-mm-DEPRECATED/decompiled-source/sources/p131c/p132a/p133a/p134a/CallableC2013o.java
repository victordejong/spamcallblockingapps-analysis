package p131c.p132a.p133a.p134a;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzd;
import java.util.concurrent.Callable;
/* renamed from: c.a.a.a.o */
/* loaded from: classes-dex2jar.jar:c/a/a/a/o.class */
public final class CallableC2013o implements Callable<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ C2004k f7870a;

    /* renamed from: b */
    public final /* synthetic */ String f7871b;

    /* renamed from: c */
    public final /* synthetic */ C1987d f7872c;

    public CallableC2013o(C1987d dVar, C2004k kVar, String str) {
        this.f7872c = dVar;
        this.f7870a = kVar;
        this.f7871b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() throws Exception {
        zzd zzdVar;
        Context context;
        zzdVar = this.f7872c.f7809g;
        context = this.f7872c.f7808f;
        return zzdVar.mo9434a(3, context.getPackageName(), this.f7870a.m31267c(), this.f7871b, (String) null);
    }
}
