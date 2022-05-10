package p131c.p161d.p170b.p224d.p252g.p258f;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzt;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.z */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/z.class */
public final class C4626z extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ Activity f16941e;

    /* renamed from: f */
    public final /* synthetic */ zzt f16942f;

    /* renamed from: g */
    public final /* synthetic */ zzag.C7273b f16943g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4626z(zzag.C7273b bVar, Activity activity, zzt zztVar) {
        super(zzag.this);
        this.f16943g = bVar;
        this.f16941e = activity;
        this.f16942f = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = zzag.this.f29421i;
        zzvVar.onActivitySaveInstanceState(ObjectWrapper.m17020a(this.f16941e), this.f16942f, this.f29423b);
    }
}
