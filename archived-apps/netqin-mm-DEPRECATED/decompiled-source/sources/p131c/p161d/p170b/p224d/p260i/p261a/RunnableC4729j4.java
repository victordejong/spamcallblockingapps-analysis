package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzfz;
import com.google.android.gms.measurement.internal.zzij;
import com.google.android.gms.measurement.internal.zzkl;
/* renamed from: c.d.b.d.i.a.j4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/j4.class */
public final class RunnableC4729j4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f17187a;

    /* renamed from: b */
    public final /* synthetic */ String f17188b;

    /* renamed from: c */
    public final /* synthetic */ String f17189c;

    /* renamed from: d */
    public final /* synthetic */ long f17190d;

    /* renamed from: e */
    public final /* synthetic */ zzfz f17191e;

    public RunnableC4729j4(zzfz zzfzVar, String str, String str2, String str3, long j) {
        this.f17191e = zzfzVar;
        this.f17187a = str;
        this.f17188b = str2;
        this.f17189c = str3;
        this.f17190d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkl zzklVar;
        zzkl zzklVar2;
        String str = this.f17187a;
        if (str == null) {
            zzklVar2 = this.f17191e.f30034a;
            zzklVar2.m8783v().m9077C().m8927a(this.f17188b, (zzij) null);
            return;
        }
        zzij zzijVar = new zzij(this.f17189c, str, this.f17190d);
        zzklVar = this.f17191e.f30034a;
        zzklVar.m8783v().m9077C().m8927a(this.f17188b, zzijVar);
    }
}
