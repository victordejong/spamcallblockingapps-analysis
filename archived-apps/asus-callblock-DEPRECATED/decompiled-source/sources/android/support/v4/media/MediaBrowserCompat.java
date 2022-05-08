package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ResultReceiver;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat.class */
public final class MediaBrowserCompat {

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$ItemReceiver.class */
    private static class ItemReceiver extends ResultReceiver {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.os.ResultReceiver
        public final void a(int i, Bundle bundle) {
            bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            if (i == 0 && bundle != null && bundle.containsKey("media_item")) {
                bundle.getParcelable("media_item");
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem.class */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator<MediaItem>() { // from class: android.support.v4.media.MediaBrowserCompat.MediaItem.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final int f154a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaDescriptionCompat f155b;

        private MediaItem(Parcel parcel) {
            this.f154a = parcel.readInt();
            this.f155b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        /* synthetic */ MediaItem(Parcel parcel, byte b2) {
            this(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MediaItem{");
            sb.append("mFlags=").append(this.f154a);
            sb.append(", mDescription=").append(this.f155b);
            sb.append('}');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f154a);
            this.f155b.writeToParcel(parcel, i);
        }
    }
}
