package p131c.p161d.p170b.p224d.p252g.p257e;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzv;
/* renamed from: c.d.b.d.g.e.a */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/e/a.class */
public final class BinderC4446a extends zzv {

    /* renamed from: a */
    public final ListenerHolder<LocationCallback> f16670a;

    @Override // com.google.android.gms.location.zzu
    /* renamed from: a */
    public final void mo9399a(LocationAvailability locationAvailability) {
        this.f16670a.m17625a(new C4448c(this, locationAvailability));
    }

    @Override // com.google.android.gms.location.zzu
    /* renamed from: a */
    public final void mo9398a(LocationResult locationResult) {
        this.f16670a.m17625a(new C4447b(this, locationResult));
    }
}
