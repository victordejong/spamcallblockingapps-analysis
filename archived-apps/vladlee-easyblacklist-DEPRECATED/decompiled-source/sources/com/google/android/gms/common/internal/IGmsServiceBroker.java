package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsServiceBroker.class */
public interface IGmsServiceBroker extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsServiceBroker$Stub.class */
    public static abstract class Stub extends Binder implements IGmsServiceBroker {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.common.internal.IGmsServiceBroker$Stub$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsServiceBroker$Stub$a.class */
        public static final class C1658a implements IGmsServiceBroker {

            /* renamed from: a */
            private final IBinder f6790a;

            /* JADX INFO: Access modifiers changed from: package-private */
            public C1658a(IBinder iBinder) {
                this.f6790a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f6790a;
            }

            @Override // com.google.android.gms.common.internal.IGmsServiceBroker
            public final void getService(IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(iGmsCallbacks != null ? iGmsCallbacks.asBinder() : null);
                    if (getServiceRequest != null) {
                        obtain.writeInt(1);
                        getServiceRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f6790a.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.google.android.gms.common.internal.IGmsServiceBroker");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:55:0x0144, code lost:
            if (r8.readInt() != 0) goto L_0x01b6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0174, code lost:
            if (r8.readInt() != 0) goto L_0x01b6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0190, code lost:
            if (r8.readInt() != 0) goto L_0x01b6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x019a, code lost:
            if (r8.readInt() != 0) goto L_0x01b6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x01b3, code lost:
            if (r8.readInt() != 0) goto L_0x01b6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x01b6, code lost:
            android.os.Bundle.CREATOR.createFromParcel(r8);
         */
        @Override // android.os.Binder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTransact(int r7, android.os.Parcel r8, android.os.Parcel r9, int r10) {
            /*
                Method dump skipped, instructions count: 456
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.IGmsServiceBroker.Stub.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
        }
    }

    void getService(IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest);
}
