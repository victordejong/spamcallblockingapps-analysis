package p131c.p161d.p170b.p224d.p252g.p257e;

import android.location.Location;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.zzy;
/* renamed from: c.d.b.d.g.e.e */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/e/e.class */
public final class BinderC4450e extends zzy {

    /* renamed from: a */
    public final ListenerHolder<LocationListener> f16673a;

    @Override // com.google.android.gms.location.zzx
    public final void onLocationChanged(Location location) {
        synchronized (this) {
            this.f16673a.m17625a(new C4451f(this, location));
        }
    }
}
