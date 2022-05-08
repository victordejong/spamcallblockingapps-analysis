package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.c0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/c0.class */
public final class C7190c0 extends C7441w2 implements AbstractC7164a0 {
    public C7190c0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    /* renamed from: G */
    public final void mo20971G() throws RemoteException {
        m20616b(9, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    /* renamed from: a */
    public final void mo20970a(int i, int i2, Intent intent) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeInt(i);
        G0.writeInt(i2);
        C7465y2.m20508a(G0, intent);
        m20616b(12, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    /* renamed from: a0 */
    public final boolean mo20969a0() throws RemoteException {
        Parcel a = m20617a(11, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    /* renamed from: d0 */
    public final void mo20968d0() throws RemoteException {
        m20616b(2, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    /* renamed from: h */
    public final void mo20967h(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        m20616b(13, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, bundle);
        m20616b(1, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    public final void onDestroy() throws RemoteException {
        m20616b(8, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    public final void onPause() throws RemoteException {
        m20616b(5, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    public final void onResume() throws RemoteException {
        m20616b(4, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, bundle);
        Parcel a = m20617a(6, G0);
        if (a.readInt() != 0) {
            bundle.readFromParcel(a);
        }
        a.recycle();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    public final void onStart() throws RemoteException {
        m20616b(3, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0
    public final void onStop() throws RemoteException {
        m20616b(7, m20618G0());
    }
}
