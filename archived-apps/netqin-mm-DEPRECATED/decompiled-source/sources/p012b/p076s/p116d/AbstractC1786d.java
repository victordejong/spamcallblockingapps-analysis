package p012b.p076s.p116d;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
/* renamed from: b.s.d.d */
/* loaded from: classes-dex2jar.jar:b/s/d/d.class */
public interface AbstractC1786d extends IInterface {

    /* renamed from: b.s.d.d$a */
    /* loaded from: classes-dex2jar.jar:b/s/d/d$a.class */
    public static abstract class AbstractBinderC1787a extends Binder implements AbstractC1786d {

        /* renamed from: b.s.d.d$a$a */
        /* loaded from: classes-dex2jar.jar:b/s/d/d$a$a.class */
        public static class C1788a implements AbstractC1786d {

            /* renamed from: a */
            public IBinder f7212a;

            public C1788a(IBinder iBinder) {
                this.f7212a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f7212a;
            }
        }

        /* renamed from: a */
        public static AbstractC1786d m32096a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.media2.session.IMediaSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC1786d)) ? new C1788a(iBinder) : (AbstractC1786d) queryLocalInterface;
        }
    }
}
