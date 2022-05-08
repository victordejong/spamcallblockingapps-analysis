package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.a8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/a8.class */
public final class C7172a8 extends C7441w2 implements AbstractC7482z7 {
    public C7172a8(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7482z7
    /* renamed from: a */
    public final IBinder mo20448a(AbstractC7106b bVar, AbstractC7106b bVar2, AbstractC7106b bVar3, int i) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        C7465y2.m20510a(G0, bVar2);
        C7465y2.m20510a(G0, bVar3);
        G0.writeInt(13000000);
        Parcel a = m20617a(1, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        a.recycle();
        return readStrongBinder;
    }
}
