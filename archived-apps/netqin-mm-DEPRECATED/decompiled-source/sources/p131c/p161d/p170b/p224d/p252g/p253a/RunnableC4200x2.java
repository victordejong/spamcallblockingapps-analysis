package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.ads.AdRequest$ErrorCode;
import com.google.android.gms.internal.ads.zzanh;
import com.google.android.gms.internal.ads.zzaoi;
import com.google.android.gms.internal.ads.zzaou;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.x2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/x2.class */
public final class RunnableC4200x2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AdRequest$ErrorCode f15985a;

    /* renamed from: b */
    public final /* synthetic */ zzaoi f15986b;

    public RunnableC4200x2(zzaoi zzaoiVar, AdRequest$ErrorCode adRequest$ErrorCode) {
        this.f15986b = zzaoiVar;
        this.f15985a = adRequest$ErrorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzanh zzanhVar;
        try {
            zzanhVar = this.f15986b.f24237a;
            zzanhVar.mo13792a(zzaou.m16520a(this.f15985a));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }
}
