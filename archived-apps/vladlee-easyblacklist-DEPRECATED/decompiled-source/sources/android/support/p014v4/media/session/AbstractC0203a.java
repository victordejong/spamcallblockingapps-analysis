package android.support.p014v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.p014v4.media.MediaMetadataCompat;
import android.support.p014v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import java.util.List;
/* renamed from: android.support.v4.media.session.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a.class */
public interface AbstractC0203a extends IInterface {

    /* renamed from: android.support.v4.media.session.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a$a.class */
    public static abstract class AbstractBinderC0204a extends Binder implements AbstractC0203a {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.session.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a$a$a.class */
        public static final class C0205a implements AbstractC0203a {

            /* renamed from: a */
            private IBinder f483a;

            C0205a(IBinder iBinder) {
                this.f483a = iBinder;
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10056a() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    this.f483a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10055a(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(i);
                    this.f483a.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10054a(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f483a.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10053a(MediaMetadataCompat mediaMetadataCompat) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (mediaMetadataCompat != null) {
                        obtain.writeInt(1);
                        mediaMetadataCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f483a.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10052a(ParcelableVolumeInfo parcelableVolumeInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcelableVolumeInfo != null) {
                        obtain.writeInt(1);
                        parcelableVolumeInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f483a.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10051a(PlaybackStateCompat playbackStateCompat) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (playbackStateCompat != null) {
                        obtain.writeInt(1);
                        playbackStateCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f483a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10050a(CharSequence charSequence) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (charSequence != null) {
                        obtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f483a.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10049a(String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f483a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10048a(List<MediaSessionCompat.QueueItem> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeTypedList(list);
                    this.f483a.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10047a(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(z ? 1 : 0);
                    this.f483a.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f483a;
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: b */
            public final void mo10046b() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    this.f483a.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: b */
            public final void mo10045b(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(i);
                    this.f483a.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: b */
            public final void mo10044b(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(z ? 1 : 0);
                    this.f483a.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0204a() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        /* renamed from: a */
        public static AbstractC0203a m10057a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0203a)) ? new C0205a(iBinder) : (AbstractC0203a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1598968902) {
                boolean z = false;
                boolean z2 = false;
                Bundle bundle = null;
                CharSequence charSequence = null;
                MediaMetadataCompat mediaMetadataCompat = null;
                PlaybackStateCompat playbackStateCompat = null;
                Bundle bundle2 = null;
                ParcelableVolumeInfo parcelableVolumeInfo = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        mo10049a(readString, bundle2);
                        return true;
                    case 2:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo10056a();
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            playbackStateCompat = PlaybackStateCompat.CREATOR.createFromParcel(parcel);
                        }
                        mo10051a(playbackStateCompat);
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            mediaMetadataCompat = MediaMetadataCompat.CREATOR.createFromParcel(parcel);
                        }
                        mo10053a(mediaMetadataCompat);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo10048a(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                        }
                        mo10050a(charSequence);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        mo10054a(bundle);
                        return true;
                    case 8:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            parcelableVolumeInfo = ParcelableVolumeInfo.CREATOR.createFromParcel(parcel);
                        }
                        mo10052a(parcelableVolumeInfo);
                        return true;
                    case 9:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo10055a(parcel.readInt());
                        return true;
                    case 10:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            z = true;
                        }
                        mo10047a(z);
                        return true;
                    case 11:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            z2 = true;
                        }
                        mo10044b(z2);
                        return true;
                    case 12:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo10045b(parcel.readInt());
                        return true;
                    case 13:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo10046b();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            }
        }
    }

    /* renamed from: a */
    void mo10056a();

    /* renamed from: a */
    void mo10055a(int i);

    /* renamed from: a */
    void mo10054a(Bundle bundle);

    /* renamed from: a */
    void mo10053a(MediaMetadataCompat mediaMetadataCompat);

    /* renamed from: a */
    void mo10052a(ParcelableVolumeInfo parcelableVolumeInfo);

    /* renamed from: a */
    void mo10051a(PlaybackStateCompat playbackStateCompat);

    /* renamed from: a */
    void mo10050a(CharSequence charSequence);

    /* renamed from: a */
    void mo10049a(String str, Bundle bundle);

    /* renamed from: a */
    void mo10048a(List<MediaSessionCompat.QueueItem> list);

    /* renamed from: a */
    void mo10047a(boolean z);

    /* renamed from: b */
    void mo10046b();

    /* renamed from: b */
    void mo10045b(int i);

    /* renamed from: b */
    void mo10044b(boolean z);
}
