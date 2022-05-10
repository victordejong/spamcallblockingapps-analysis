package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzt;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.m */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/m.class */
public final class C4541m extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ String f16811e;

    /* renamed from: f */
    public final /* synthetic */ String f16812f;

    /* renamed from: g */
    public final /* synthetic */ boolean f16813g;

    /* renamed from: h */
    public final /* synthetic */ zzt f16814h;

    /* renamed from: i */
    public final /* synthetic */ zzag f16815i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4541m(zzag zzagVar, String str, String str2, boolean z, zzt zztVar) {
        super(zzagVar);
        this.f16815i = zzagVar;
        this.f16811e = str;
        this.f16812f = str2;
        this.f16813g = z;
        this.f16814h = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16815i.f29421i;
        zzvVar.getUserProperties(this.f16811e, this.f16812f, this.f16813g, this.f16814h);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: b */
    public final void mo10432b() {
        this.f16814h.mo9452d(null);
    }
}
