package android.support.p009v4.media;

import android.media.MediaMetadata;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p009v4.media.session.MediaSessionCompat;
import p012b.p035f.C0780a;
/* renamed from: android.support.v4.media.MediaMetadataCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat.class */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new C0043a();

    /* renamed from: c */
    public static final C0780a<String, Integer> f77c;

    /* renamed from: a */
    public final Bundle f78a;

    /* renamed from: b */
    public MediaMetadata f79b;

    /* renamed from: android.support.v4.media.MediaMetadataCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat$a.class */
    public static final class C0043a implements Parcelable.Creator<MediaMetadataCompat> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaMetadataCompat[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    }

    static {
        C0780a<String, Integer> aVar = new C0780a<>();
        f77c = aVar;
        aVar.put("android.media.metadata.TITLE", 1);
        f77c.put("android.media.metadata.ARTIST", 1);
        f77c.put("android.media.metadata.DURATION", 0);
        f77c.put("android.media.metadata.ALBUM", 1);
        f77c.put("android.media.metadata.AUTHOR", 1);
        f77c.put("android.media.metadata.WRITER", 1);
        f77c.put("android.media.metadata.COMPOSER", 1);
        f77c.put("android.media.metadata.COMPILATION", 1);
        f77c.put("android.media.metadata.DATE", 1);
        f77c.put("android.media.metadata.YEAR", 0);
        f77c.put("android.media.metadata.GENRE", 1);
        f77c.put("android.media.metadata.TRACK_NUMBER", 0);
        f77c.put("android.media.metadata.NUM_TRACKS", 0);
        f77c.put("android.media.metadata.DISC_NUMBER", 0);
        f77c.put("android.media.metadata.ALBUM_ARTIST", 1);
        f77c.put("android.media.metadata.ART", 2);
        f77c.put("android.media.metadata.ART_URI", 1);
        f77c.put("android.media.metadata.ALBUM_ART", 2);
        f77c.put("android.media.metadata.ALBUM_ART_URI", 1);
        f77c.put("android.media.metadata.USER_RATING", 3);
        f77c.put("android.media.metadata.RATING", 3);
        f77c.put("android.media.metadata.DISPLAY_TITLE", 1);
        f77c.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        f77c.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        f77c.put("android.media.metadata.DISPLAY_ICON", 2);
        f77c.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        f77c.put("android.media.metadata.MEDIA_ID", 1);
        f77c.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        f77c.put("android.media.metadata.MEDIA_URI", 1);
        f77c.put("android.media.metadata.ADVERTISEMENT", 0);
        f77c.put("android.media.metadata.DOWNLOAD_STATUS", 0);
    }

    public MediaMetadataCompat(Parcel parcel) {
        this.f78a = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    /* renamed from: a */
    public static MediaMetadataCompat m39277a(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        mediaMetadata.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        createFromParcel.f79b = mediaMetadata;
        return createFromParcel;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f78a);
    }
}
