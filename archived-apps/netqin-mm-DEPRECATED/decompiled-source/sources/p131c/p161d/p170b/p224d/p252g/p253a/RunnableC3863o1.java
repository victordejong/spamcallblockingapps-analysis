package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzaki;
/* renamed from: c.d.b.d.g.a.o1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/o1.class */
public final /* synthetic */ class RunnableC3863o1 implements Runnable {

    /* renamed from: a */
    public final zzaki f14278a;

    public RunnableC3863o1(zzaki zzakiVar) {
        this.f14278a = zzakiVar;
    }

    /* renamed from: a */
    public static Runnable m26613a(zzaki zzakiVar) {
        return new RunnableC3863o1(zzakiVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f14278a.destroy();
    }
}
