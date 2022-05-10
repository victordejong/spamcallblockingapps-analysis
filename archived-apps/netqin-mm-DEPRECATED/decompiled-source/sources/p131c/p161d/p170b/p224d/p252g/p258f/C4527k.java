package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzt;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.k */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/k.class */
public final class C4527k extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ zzt f16796e;

    /* renamed from: f */
    public final /* synthetic */ zzag f16797f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4527k(zzag zzagVar, zzt zztVar) {
        super(zzagVar);
        this.f16797f = zzagVar;
        this.f16796e = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16797f.f29421i;
        zzvVar.getCurrentScreenName(this.f16796e);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: b */
    public final void mo10432b() {
        this.f16796e.mo9452d(null);
    }
}
