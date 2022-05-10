package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzcof;
import com.google.android.gms.internal.ads.zzdpg;
import com.google.android.gms.internal.ads.zzdya;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.TimeoutException;
/* renamed from: c.d.b.d.g.a.em */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/em.class */
public final /* synthetic */ class C3513em implements zzdya {

    /* renamed from: a */
    public static final zzdya f12848a = new C3513em();

    @Override // com.google.android.gms.internal.ads.zzdya
    /* renamed from: d */
    public final zzdzc mo13006d(Object obj) {
        TimeoutException timeoutException = (TimeoutException) obj;
        return zzdyq.m12987a((Throwable) new zzcof(zzdpg.NETWORK_ERROR, "Timed out waiting for ad response."));
    }
}
