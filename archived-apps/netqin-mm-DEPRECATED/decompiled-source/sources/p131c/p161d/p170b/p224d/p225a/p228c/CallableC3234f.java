package p131c.p161d.p170b.p224d.p225a.p228c;

import android.content.Context;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzeg;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.a.c.f */
/* loaded from: classes-dex2jar.jar:c/d/b/d/a/c/f.class */
public final class CallableC3234f implements Callable<zzeg> {

    /* renamed from: a */
    public final /* synthetic */ zzj f11923a;

    public CallableC3234f(zzj zzjVar) {
        this.f11923a = zzjVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzeg call() throws Exception {
        zzbbx zzbbxVar;
        Context context;
        zzbbxVar = this.f11923a.f22812a;
        String str = zzbbxVar.f24759a;
        context = this.f11923a.f22815d;
        return new zzeg(zzed.m12873a(str, context, false));
    }
}
