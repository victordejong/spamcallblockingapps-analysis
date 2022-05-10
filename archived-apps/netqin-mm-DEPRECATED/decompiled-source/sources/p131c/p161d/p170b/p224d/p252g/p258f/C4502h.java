package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.h */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/h.class */
public final class C4502h extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ String f16756e;

    /* renamed from: f */
    public final /* synthetic */ zzag f16757f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4502h(zzag zzagVar, String str) {
        super(zzagVar);
        this.f16757f = zzagVar;
        this.f16756e = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16757f.f29421i;
        zzvVar.beginAdUnitExposure(this.f16756e, this.f29423b);
    }
}
