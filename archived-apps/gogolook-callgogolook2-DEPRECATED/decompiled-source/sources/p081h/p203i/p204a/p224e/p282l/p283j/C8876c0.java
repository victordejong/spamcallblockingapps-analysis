package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractBinderC8540h;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8539g;
import p081h.p203i.p204a.p224e.p259j.p275p.C8533a;
import p081h.p203i.p204a.p224e.p259j.p275p.C8538f;
/* renamed from: h.i.a.e.l.j.c0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/c0.class */
public final class C8876c0 extends C8533a implements AbstractC8874b0 {
    public C8876c0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICreator");
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8874b0
    /* renamed from: A0 */
    public final AbstractC8539g mo16845A0() throws RemoteException {
        Parcel a = m17862a(5, m17863G0());
        AbstractC8539g a2 = AbstractBinderC8540h.m17854a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8874b0
    /* renamed from: a */
    public final AbstractC8871a mo16844a() throws RemoteException {
        AbstractC8871a aVar;
        Parcel a = m17862a(4, m17863G0());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            aVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
            aVar = queryLocalInterface instanceof AbstractC8871a ? (AbstractC8871a) queryLocalInterface : new C8898s(readStrongBinder);
        }
        a.recycle();
        return aVar;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8874b0
    /* renamed from: a */
    public final AbstractC8875c mo16842a(AbstractC7106b bVar, GoogleMapOptions googleMapOptions) throws RemoteException {
        AbstractC8875c cVar;
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, bVar);
        C8538f.m17856a(G0, googleMapOptions);
        Parcel a = m17862a(3, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            cVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
            cVar = queryLocalInterface instanceof AbstractC8875c ? (AbstractC8875c) queryLocalInterface : new C8880e0(readStrongBinder);
        }
        a.recycle();
        return cVar;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8874b0
    /* renamed from: a */
    public final AbstractC8881f mo16841a(AbstractC7106b bVar, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException {
        AbstractC8881f fVar;
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, bVar);
        C8538f.m17856a(G0, streetViewPanoramaOptions);
        Parcel a = m17862a(7, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            fVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
            fVar = queryLocalInterface instanceof AbstractC8881f ? (AbstractC8881f) queryLocalInterface : new C8903x(readStrongBinder);
        }
        a.recycle();
        return fVar;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8874b0
    /* renamed from: a */
    public final void mo16843a(AbstractC7106b bVar, int i) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, bVar);
        G0.writeInt(i);
        m17861b(6, G0);
    }
}
