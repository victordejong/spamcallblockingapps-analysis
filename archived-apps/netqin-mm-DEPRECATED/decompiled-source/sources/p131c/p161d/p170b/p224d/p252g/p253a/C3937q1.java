package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzakr;
import com.google.android.gms.internal.ads.zzalp;
import com.google.android.gms.internal.ads.zzbaz;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzeg;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.q1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/q1.class */
public final class C3937q1 implements zzahq<zzalp> {

    /* renamed from: a */
    public final /* synthetic */ zzeg f14574a;

    /* renamed from: b */
    public final /* synthetic */ zzaki f14575b;

    /* renamed from: c */
    public final /* synthetic */ zzbaz f14576c;

    /* renamed from: d */
    public final /* synthetic */ zzakr f14577d;

    public C3937q1(zzakr zzakrVar, zzeg zzegVar, zzaki zzakiVar, zzbaz zzbazVar) {
        this.f14577d = zzakrVar;
        this.f14574a = zzegVar;
        this.f14575b = zzakiVar;
        this.f14576c = zzbazVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzalp zzalpVar, Map map) {
        Object obj;
        int i;
        obj = this.f14577d.f24158a;
        synchronized (obj) {
            zzbbq.m15854c("JS Engine is requesting an update");
            i = this.f14577d.f24165h;
            if (i == 0) {
                zzbbq.m15854c("Starting reload.");
                this.f14577d.f24165h = 2;
                this.f14577d.m16687a(this.f14574a);
            }
            this.f14575b.mo16673a("/requestReload", (zzahq) this.f14576c.m15926a());
        }
    }
}
