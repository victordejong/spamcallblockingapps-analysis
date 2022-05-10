package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzt;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.q */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/q.class */
public final class C4569q extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ String f16844e;

    /* renamed from: f */
    public final /* synthetic */ zzt f16845f;

    /* renamed from: g */
    public final /* synthetic */ zzag f16846g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4569q(zzag zzagVar, String str, zzt zztVar) {
        super(zzagVar);
        this.f16846g = zzagVar;
        this.f16844e = str;
        this.f16845f = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16846g.f29421i;
        zzvVar.getMaxUserProperties(this.f16844e, this.f16845f);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: b */
    public final void mo10432b() {
        this.f16845f.mo9452d(null);
    }
}
