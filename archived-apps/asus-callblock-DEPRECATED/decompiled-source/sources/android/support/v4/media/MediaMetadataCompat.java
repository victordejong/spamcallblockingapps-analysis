package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.b.a;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat.class */
public final class MediaMetadataCompat implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private static final a<String, Integer> f160a;
    private final Bundle e;

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f161b = {"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};
    private static final String[] c = {"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};
    private static final String[] d = {"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: android.support.v4.media.MediaMetadataCompat.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ MediaMetadataCompat[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    };

    static {
        a<String, Integer> aVar = new a<>();
        f160a = aVar;
        aVar.put("android.media.metadata.TITLE", 1);
        f160a.put("android.media.metadata.ARTIST", 1);
        f160a.put("android.media.metadata.DURATION", 0);
        f160a.put("android.media.metadata.ALBUM", 1);
        f160a.put("android.media.metadata.AUTHOR", 1);
        f160a.put("android.media.metadata.WRITER", 1);
        f160a.put("android.media.metadata.COMPOSER", 1);
        f160a.put("android.media.metadata.COMPILATION", 1);
        f160a.put("android.media.metadata.DATE", 1);
        f160a.put("android.media.metadata.YEAR", 0);
        f160a.put("android.media.metadata.GENRE", 1);
        f160a.put("android.media.metadata.TRACK_NUMBER", 0);
        f160a.put("android.media.metadata.NUM_TRACKS", 0);
        f160a.put("android.media.metadata.DISC_NUMBER", 0);
        f160a.put("android.media.metadata.ALBUM_ARTIST", 1);
        f160a.put("android.media.metadata.ART", 2);
        f160a.put("android.media.metadata.ART_URI", 1);
        f160a.put("android.media.metadata.ALBUM_ART", 2);
        f160a.put("android.media.metadata.ALBUM_ART_URI", 1);
        f160a.put("android.media.metadata.USER_RATING", 3);
        f160a.put("android.media.metadata.RATING", 3);
        f160a.put("android.media.metadata.DISPLAY_TITLE", 1);
        f160a.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        f160a.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        f160a.put("android.media.metadata.DISPLAY_ICON", 2);
        f160a.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        f160a.put("android.media.metadata.MEDIA_ID", 1);
    }

    private MediaMetadataCompat(Parcel parcel) {
        this.e = parcel.readBundle();
    }

    /* synthetic */ MediaMetadataCompat(Parcel parcel, byte b2) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.e);
    }
}
