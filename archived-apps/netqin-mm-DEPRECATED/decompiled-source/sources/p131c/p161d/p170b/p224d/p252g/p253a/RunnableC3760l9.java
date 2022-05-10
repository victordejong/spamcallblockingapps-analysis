package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.View;
import com.google.android.gms.internal.ads.zzawl;
import com.google.android.gms.internal.ads.zzbgi;
/* renamed from: c.d.b.d.g.a.l9 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/l9.class */
public final class RunnableC3760l9 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f13942a;

    /* renamed from: b */
    public final /* synthetic */ zzawl f13943b;

    /* renamed from: c */
    public final /* synthetic */ int f13944c;

    /* renamed from: d */
    public final /* synthetic */ zzbgi f13945d;

    public RunnableC3760l9(zzbgi zzbgiVar, View view, zzawl zzawlVar, int i) {
        this.f13945d = zzbgiVar;
        this.f13942a = view;
        this.f13943b = zzawlVar;
        this.f13944c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13945d.m15634a(this.f13942a, this.f13943b, this.f13944c - 1);
    }
}
