package p081h.p203i.p204a.p224e.p259j.p275p;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.p.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/p/l.class */
public final class C8544l extends C8533a implements AbstractC8542j {
    public C8544l(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IMarkerDelegate");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8542j
    /* renamed from: M */
    public final int mo17850M() throws RemoteException {
        Parcel a = m17862a(17, m17863G0());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8542j
    /* renamed from: b */
    public final void mo17849b(LatLng latLng) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17856a(G0, latLng);
        m17861b(3, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8542j
    /* renamed from: b */
    public final boolean mo17848b(AbstractC8542j jVar) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, jVar);
        Parcel a = m17862a(16, G0);
        boolean a2 = C8538f.m17859a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8542j
    /* renamed from: e */
    public final void mo17847e(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, bVar);
        m17861b(18, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8542j
    public final LatLng getPosition() throws RemoteException {
        Parcel a = m17862a(4, m17863G0());
        LatLng latLng = (LatLng) C8538f.m17857a(a, LatLng.CREATOR);
        a.recycle();
        return latLng;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8542j
    public final void remove() throws RemoteException {
        m17861b(1, m17863G0());
    }
}
