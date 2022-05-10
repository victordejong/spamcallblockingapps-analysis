package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzbdh;
/* renamed from: c.d.b.d.g.a.s7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/s7.class */
public final class RunnableC4020s7 implements Runnable {

    /* renamed from: a */
    public zzbdh f15076a;

    /* renamed from: b */
    public boolean f15077b = false;

    public RunnableC4020s7(zzbdh zzbdhVar) {
        this.f15076a = zzbdhVar;
    }

    /* renamed from: a */
    public final void m26391a() {
        this.f15077b = true;
        this.f15076a.m15776o();
    }

    /* renamed from: b */
    public final void m26390b() {
        this.f15077b = false;
        m26389c();
    }

    /* renamed from: c */
    public final void m26389c() {
        zzayu.f24665h.removeCallbacks(this);
        zzayu.f24665h.postDelayed(this, 250L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f15077b) {
            this.f15076a.m15776o();
            m26389c();
        }
    }
}
