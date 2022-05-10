package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzaa;
import com.google.android.gms.internal.ads.zzaq;
/* renamed from: c.d.b.d.g.a.u */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u.class */
public final class RunnableC4086u implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f15433a;

    /* renamed from: b */
    public final /* synthetic */ long f15434b;

    /* renamed from: c */
    public final /* synthetic */ zzaa f15435c;

    public RunnableC4086u(zzaa zzaaVar, String str, long j) {
        this.f15435c = zzaaVar;
        this.f15433a = str;
        this.f15434b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaq.C7243a aVar;
        zzaq.C7243a aVar2;
        aVar = this.f15435c.f23609a;
        aVar.m16455a(this.f15433a, this.f15434b);
        aVar2 = this.f15435c.f23609a;
        aVar2.m16456a(this.f15435c.toString());
    }
}
