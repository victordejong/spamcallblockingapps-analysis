package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/g.class */
public final class C7241g extends C7441w2 implements AbstractC7228f {
    public C7241g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7228f
    /* renamed from: a */
    public final void mo20926a(String str) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        m20616b(2, G0);
    }
}
