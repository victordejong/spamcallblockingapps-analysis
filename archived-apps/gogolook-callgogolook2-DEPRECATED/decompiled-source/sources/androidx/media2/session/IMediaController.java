package androidx.media2.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.media2.common.ParcelImplListSlice;
import androidx.versionedparcelable.ParcelImpl;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/IMediaController.class */
public interface IMediaController extends IInterface {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/IMediaController$Stub.class */
    public static abstract class Stub extends Binder implements IMediaController {
        public static final String DESCRIPTOR = "androidx.media2.session.IMediaController";
        public static final int TRANSACTION_onAllowedCommandsChanged = 15;
        public static final int TRANSACTION_onBufferingStateChanged = 4;
        public static final int TRANSACTION_onChildrenChanged = 19;
        public static final int TRANSACTION_onConnected = 12;
        public static final int TRANSACTION_onCurrentMediaItemChanged = 1;
        public static final int TRANSACTION_onCustomCommand = 16;
        public static final int TRANSACTION_onDisconnected = 13;
        public static final int TRANSACTION_onLibraryResult = 18;
        public static final int TRANSACTION_onPlaybackCompleted = 10;
        public static final int TRANSACTION_onPlaybackInfoChanged = 7;
        public static final int TRANSACTION_onPlaybackSpeedChanged = 3;
        public static final int TRANSACTION_onPlayerStateChanged = 2;
        public static final int TRANSACTION_onPlaylistChanged = 5;
        public static final int TRANSACTION_onPlaylistMetadataChanged = 6;
        public static final int TRANSACTION_onRepeatModeChanged = 8;
        public static final int TRANSACTION_onSearchResultChanged = 20;
        public static final int TRANSACTION_onSeekCompleted = 11;
        public static final int TRANSACTION_onSessionResult = 17;
        public static final int TRANSACTION_onSetCustomLayout = 14;
        public static final int TRANSACTION_onShuffleModeChanged = 9;
        public static final int TRANSACTION_onSubtitleData = 25;
        public static final int TRANSACTION_onTrackDeselected = 24;
        public static final int TRANSACTION_onTrackInfoChanged = 22;
        public static final int TRANSACTION_onTrackSelected = 23;
        public static final int TRANSACTION_onVideoSizeChanged = 21;

        /* loaded from: classes-dex2jar.jar:androidx/media2/session/IMediaController$Stub$Proxy.class */
        public static class Proxy implements IMediaController {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // androidx.media2.session.IMediaController
            public void onAllowedCommandsChanged(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(15, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onBufferingStateChanged(int i, ParcelImpl parcelImpl, int i2, long j, long j2, long j3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i2);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeLong(j3);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onChildrenChanged(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(19, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onConnected(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onCurrentMediaItemChanged(int i, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onCustomCommand(int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(16, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onDisconnected(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onLibraryResult(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(18, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onPlaybackCompleted(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onPlaybackInfoChanged(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onPlaybackSpeedChanged(int i, long j, long j2, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeFloat(f);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onPlayerStateChanged(int i, long j, long j2, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeInt(i2);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onPlaylistChanged(int i, ParcelImplListSlice parcelImplListSlice, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImplListSlice != null) {
                        obtain.writeInt(1);
                        parcelImplListSlice.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onPlaylistMetadataChanged(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onRepeatModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onSearchResultChanged(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(20, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onSeekCompleted(int i, long j, long j2, long j3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeLong(j3);
                    this.mRemote.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onSessionResult(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(17, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onSetCustomLayout(int i, List<ParcelImpl> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(14, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onShuffleModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    this.mRemote.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onSubtitleData(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl2 != null) {
                        obtain.writeInt(1);
                        parcelImpl2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl3 != null) {
                        obtain.writeInt(1);
                        parcelImpl3.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(25, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onTrackDeselected(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(24, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onTrackInfoChanged(int i, List<ParcelImpl> list, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3, ParcelImpl parcelImpl4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl2 != null) {
                        obtain.writeInt(1);
                        parcelImpl2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl3 != null) {
                        obtain.writeInt(1);
                        parcelImpl3.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl4 != null) {
                        obtain.writeInt(1);
                        parcelImpl4.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(22, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onTrackSelected(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(23, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.IMediaController
            public void onVideoSizeChanged(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl2 != null) {
                        obtain.writeInt(1);
                        parcelImpl2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(21, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMediaController asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IMediaController)) ? new Proxy(iBinder) : (IMediaController) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                ParcelImpl parcelImpl = null;
                ParcelImpl parcelImpl2 = null;
                ParcelImpl parcelImpl3 = null;
                ParcelImpl parcelImpl4 = null;
                ParcelImpl parcelImpl5 = null;
                ParcelImpl parcelImpl6 = null;
                ParcelImpl parcelImpl7 = null;
                Bundle bundle = null;
                ParcelImpl parcelImpl8 = null;
                ParcelImpl parcelImpl9 = null;
                ParcelImpl parcelImpl10 = null;
                ParcelImpl parcelImpl11 = null;
                ParcelImpl parcelImpl12 = null;
                ParcelImpl parcelImpl13 = null;
                ParcelImpl parcelImpl14 = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl13 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onCurrentMediaItemChanged(readInt, parcelImpl13, parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        onPlayerStateChanged(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readInt());
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        onPlaybackSpeedChanged(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readFloat());
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt2 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl12 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onBufferingStateChanged(readInt2, parcelImpl12, parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong());
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        onPlaylistChanged(parcel.readInt(), parcel.readInt() != 0 ? ParcelImplListSlice.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt3 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl11 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onPlaylistMetadataChanged(readInt3, parcelImpl11);
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt4 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl10 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onPlaybackInfoChanged(readInt4, parcelImpl10);
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        onRepeatModeChanged(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        onShuffleModeChanged(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        onPlaybackCompleted(parcel.readInt());
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        onSeekCompleted(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong());
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt5 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl9 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onConnected(readInt5, parcelImpl9);
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        onDisconnected(parcel.readInt());
                        return true;
                    case 14:
                        parcel.enforceInterface(DESCRIPTOR);
                        onSetCustomLayout(parcel.readInt(), parcel.createTypedArrayList(ParcelImpl.CREATOR));
                        return true;
                    case 15:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt6 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl8 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onAllowedCommandsChanged(readInt6, parcelImpl8);
                        return true;
                    case 16:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt7 = parcel.readInt();
                        ParcelImpl createFromParcel = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        onCustomCommand(readInt7, createFromParcel, bundle);
                        return true;
                    case 17:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt8 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl7 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onSessionResult(readInt8, parcelImpl7);
                        return true;
                    case 18:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt9 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl6 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onLibraryResult(readInt9, parcelImpl6);
                        return true;
                    case 19:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt10 = parcel.readInt();
                        String readString = parcel.readString();
                        int readInt11 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl5 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onChildrenChanged(readInt10, readString, readInt11, parcelImpl5);
                        return true;
                    case 20:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt12 = parcel.readInt();
                        String readString2 = parcel.readString();
                        int readInt13 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl4 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onSearchResultChanged(readInt12, readString2, readInt13, parcelImpl4);
                        return true;
                    case 21:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt14 = parcel.readInt();
                        ParcelImpl createFromParcel2 = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            parcelImpl3 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onVideoSizeChanged(readInt14, createFromParcel2, parcelImpl3);
                        return true;
                    case 22:
                        parcel.enforceInterface(DESCRIPTOR);
                        onTrackInfoChanged(parcel.readInt(), parcel.createTypedArrayList(ParcelImpl.CREATOR), parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null);
                        return true;
                    case 23:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt15 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl2 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onTrackSelected(readInt15, parcelImpl2);
                        return true;
                    case 24:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt16 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onTrackDeselected(readInt16, parcelImpl);
                        return true;
                    case 25:
                        parcel.enforceInterface(DESCRIPTOR);
                        int readInt17 = parcel.readInt();
                        ParcelImpl createFromParcel3 = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                        ParcelImpl createFromParcel4 = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            parcelImpl14 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        onSubtitleData(readInt17, createFromParcel3, createFromParcel4, parcelImpl14);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }
    }

    void onAllowedCommandsChanged(int i, ParcelImpl parcelImpl) throws RemoteException;

    void onBufferingStateChanged(int i, ParcelImpl parcelImpl, int i2, long j, long j2, long j3) throws RemoteException;

    void onChildrenChanged(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException;

    void onConnected(int i, ParcelImpl parcelImpl) throws RemoteException;

    void onCurrentMediaItemChanged(int i, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException;

    void onCustomCommand(int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException;

    void onDisconnected(int i) throws RemoteException;

    void onLibraryResult(int i, ParcelImpl parcelImpl) throws RemoteException;

    void onPlaybackCompleted(int i) throws RemoteException;

    void onPlaybackInfoChanged(int i, ParcelImpl parcelImpl) throws RemoteException;

    void onPlaybackSpeedChanged(int i, long j, long j2, float f) throws RemoteException;

    void onPlayerStateChanged(int i, long j, long j2, int i2) throws RemoteException;

    void onPlaylistChanged(int i, ParcelImplListSlice parcelImplListSlice, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException;

    void onPlaylistMetadataChanged(int i, ParcelImpl parcelImpl) throws RemoteException;

    void onRepeatModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException;

    void onSearchResultChanged(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException;

    void onSeekCompleted(int i, long j, long j2, long j3) throws RemoteException;

    void onSessionResult(int i, ParcelImpl parcelImpl) throws RemoteException;

    void onSetCustomLayout(int i, List<ParcelImpl> list) throws RemoteException;

    void onShuffleModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException;

    void onSubtitleData(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3) throws RemoteException;

    void onTrackDeselected(int i, ParcelImpl parcelImpl) throws RemoteException;

    void onTrackInfoChanged(int i, List<ParcelImpl> list, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3, ParcelImpl parcelImpl4) throws RemoteException;

    void onTrackSelected(int i, ParcelImpl parcelImpl) throws RemoteException;

    void onVideoSizeChanged(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2) throws RemoteException;
}
