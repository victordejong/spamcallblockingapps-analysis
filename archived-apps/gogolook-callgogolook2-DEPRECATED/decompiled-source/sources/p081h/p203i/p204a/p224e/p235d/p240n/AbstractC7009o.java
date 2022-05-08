package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzc;
import p081h.p203i.p204a.p224e.p259j.p267h.BinderC7741a;
import p081h.p203i.p204a.p224e.p259j.p267h.C7743c;
/* renamed from: h.i.a.e.d.n.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/o.class */
public interface AbstractC7009o extends IInterface {

    /* renamed from: h.i.a.e.d.n.o$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/o$a.class */
    public static abstract class AbstractBinderC7010a extends BinderC7741a implements AbstractC7009o {
        public AbstractBinderC7010a() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p267h.BinderC7741a
        /* renamed from: a */
        public final boolean mo19600a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                mo21317a(parcel.readInt(), parcel.readStrongBinder(), (Bundle) C7743c.m19595a(parcel, Bundle.CREATOR));
            } else if (i == 2) {
                mo21318a(parcel.readInt(), (Bundle) C7743c.m19595a(parcel, Bundle.CREATOR));
            } else if (i != 3) {
                return false;
            } else {
                mo21316a(parcel.readInt(), parcel.readStrongBinder(), (zzc) C7743c.m19595a(parcel, zzc.CREATOR));
            }
            parcel2.writeNoException();
            return true;
        }
    }

    /* renamed from: a */
    void mo21318a(int i, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo21317a(int i, IBinder iBinder, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo21316a(int i, IBinder iBinder, zzc zzcVar) throws RemoteException;
}
