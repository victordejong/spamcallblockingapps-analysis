package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.SignInButtonConfig;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p265f.C7529a;
import p081h.p203i.p204a.p224e.p259j.p265f.C7531c;
/* renamed from: h.i.a.e.d.n.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/g0.class */
public final class C6990g0 extends C7529a implements AbstractC7016r {
    public C6990g0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7016r
    /* renamed from: a */
    public final AbstractC7106b mo21300a(AbstractC7106b bVar, SignInButtonConfig signInButtonConfig) throws RemoteException {
        Parcel G0 = m20394G0();
        C7531c.m20390a(G0, bVar);
        C7531c.m20388a(G0, signInButtonConfig);
        Parcel a = m20393a(2, G0);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
