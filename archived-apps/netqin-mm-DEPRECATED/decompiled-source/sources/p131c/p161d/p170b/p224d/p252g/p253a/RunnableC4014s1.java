package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzaki;
/* renamed from: c.d.b.d.g.a.s1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/s1.class */
public final /* synthetic */ class RunnableC4014s1 implements Runnable {

    /* renamed from: a */
    public final zzaki f15059a;

    public RunnableC4014s1(zzaki zzakiVar) {
        this.f15059a = zzakiVar;
    }

    /* renamed from: a */
    public static Runnable m26395a(zzaki zzakiVar) {
        return new RunnableC4014s1(zzakiVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15059a.destroy();
    }
}
