package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbgj;
/* renamed from: c.d.b.d.g.a.xg */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/xg.class */
public final /* synthetic */ class RunnableC4214xg implements Runnable {

    /* renamed from: a */
    public final zzbgj f16043a;

    public RunnableC4214xg(zzbgj zzbgjVar) {
        this.f16043a = zzbgjVar;
    }

    /* renamed from: a */
    public static Runnable m26153a(zzbgj zzbgjVar) {
        return new RunnableC4214xg(zzbgjVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16043a.destroy();
    }
}
