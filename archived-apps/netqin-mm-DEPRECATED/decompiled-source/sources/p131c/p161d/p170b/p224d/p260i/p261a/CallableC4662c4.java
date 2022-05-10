package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzfz;
import com.google.android.gms.measurement.internal.zzkl;
import com.google.android.gms.measurement.internal.zzz;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.i.a.c4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/c4.class */
public final class CallableC4662c4 implements Callable<List<zzz>> {

    /* renamed from: a */
    public final /* synthetic */ String f17008a;

    /* renamed from: b */
    public final /* synthetic */ String f17009b;

    /* renamed from: c */
    public final /* synthetic */ String f17010c;

    /* renamed from: d */
    public final /* synthetic */ zzfz f17011d;

    public CallableC4662c4(zzfz zzfzVar, String str, String str2, String str3) {
        this.f17011d = zzfzVar;
        this.f17008a = str;
        this.f17009b = str2;
        this.f17010c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzz> call() throws Exception {
        zzkl zzklVar;
        zzkl zzklVar2;
        zzklVar = this.f17011d.f30034a;
        zzklVar.m8785t();
        zzklVar2 = this.f17011d.f30034a;
        return zzklVar2.m8794k().m25062b(this.f17008a, this.f17009b, this.f17010c);
    }
}
