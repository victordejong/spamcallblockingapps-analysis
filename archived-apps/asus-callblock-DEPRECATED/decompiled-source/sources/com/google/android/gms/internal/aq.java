package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/aq.class */
public interface aq extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/aq$a.class */
    public static abstract class a extends Binder implements aq {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.internal.aq$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/aq$a$a.class */
        public static final class C0124a implements aq {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f4123a;

            /* JADX INFO: Access modifiers changed from: package-private */
            public C0124a(IBinder iBinder) {
                this.f4123a = iBinder;
            }

            @Override // com.google.android.gms.internal.aq
            public final void a(Status status) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4123a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f4123a;
            }
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
                    a(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    void a(Status status);
}
