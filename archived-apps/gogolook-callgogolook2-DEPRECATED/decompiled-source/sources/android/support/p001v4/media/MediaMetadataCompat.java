package android.support.p001v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.MediaDescriptionCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.util.Set;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: android.support.v4.media.MediaMetadataCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat.class */
public final class MediaMetadataCompat implements Parcelable {
    public final Bundle mBundle;
    public MediaDescriptionCompat mDescription;
    public MediaMetadata mMetadataFwk;
    public static final ArrayMap<String, Integer> METADATA_KEYS_TYPE = new ArrayMap<>();
    public static final String[] PREFERRED_DESCRIPTION_ORDER = {androidx.media2.common.MediaMetadata.METADATA_KEY_TITLE, androidx.media2.common.MediaMetadata.METADATA_KEY_ARTIST, androidx.media2.common.MediaMetadata.METADATA_KEY_ALBUM, androidx.media2.common.MediaMetadata.METADATA_KEY_ALBUM_ARTIST, androidx.media2.common.MediaMetadata.METADATA_KEY_WRITER, androidx.media2.common.MediaMetadata.METADATA_KEY_AUTHOR, androidx.media2.common.MediaMetadata.METADATA_KEY_COMPOSER};
    public static final String[] PREFERRED_BITMAP_ORDER = {androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_ICON, androidx.media2.common.MediaMetadata.METADATA_KEY_ART, androidx.media2.common.MediaMetadata.METADATA_KEY_ALBUM_ART};
    public static final String[] PREFERRED_URI_ORDER = {androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_ICON_URI, androidx.media2.common.MediaMetadata.METADATA_KEY_ART_URI, androidx.media2.common.MediaMetadata.METADATA_KEY_ALBUM_ART_URI};
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: android.support.v4.media.MediaMetadataCompat.1
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
    };

    /* renamed from: android.support.v4.media.MediaMetadataCompat$Builder */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat$Builder.class */
    public static final class Builder {
        public final Bundle mBundle;

        public Builder() {
            this.mBundle = new Bundle();
        }

        public Builder(MediaMetadataCompat mediaMetadataCompat) {
            this.mBundle = new Bundle(mediaMetadataCompat.mBundle);
            MediaSessionCompat.ensureClassLoader(this.mBundle);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder(MediaMetadataCompat mediaMetadataCompat, int i) {
            this(mediaMetadataCompat);
            for (String str : this.mBundle.keySet()) {
                Object obj = this.mBundle.get(str);
                if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    if (bitmap.getHeight() > i || bitmap.getWidth() > i) {
                        putBitmap(str, scaleBitmap(bitmap, i));
                    }
                }
            }
        }

        public MediaMetadataCompat build() {
            return new MediaMetadataCompat(this.mBundle);
        }

        public Builder putBitmap(String str, Bitmap bitmap) {
            if (!MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() == 2) {
                this.mBundle.putParcelable(str, bitmap);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
        }

        public Builder putLong(String str, long j) {
            if (!MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() == 0) {
                this.mBundle.putLong(str, j);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
        }

        public Builder putRating(String str, RatingCompat ratingCompat) {
            if (!MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() == 3) {
                if (Build.VERSION.SDK_INT >= 19) {
                    this.mBundle.putParcelable(str, (Parcelable) ratingCompat.getRating());
                } else {
                    this.mBundle.putParcelable(str, ratingCompat);
                }
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Rating");
        }

        public Builder putText(String str, CharSequence charSequence) {
            if (!MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() == 1) {
                this.mBundle.putCharSequence(str, charSequence);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a CharSequence");
        }

        public final Bitmap scaleBitmap(Bitmap bitmap, int i) {
            float f = i;
            float min = Math.min(f / bitmap.getWidth(), f / bitmap.getHeight());
            return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), true);
        }
    }

    static {
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_TITLE, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_ARTIST, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_DURATION, 0);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_ALBUM, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_AUTHOR, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_WRITER, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_COMPOSER, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_COMPILATION, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_DATE, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_YEAR, 0);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_GENRE, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_TRACK_NUMBER, 0);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_NUM_TRACKS, 0);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_DISC_NUMBER, 0);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_ALBUM_ARTIST, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_ART, 2);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_ART_URI, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_ALBUM_ART, 2);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_ALBUM_ART_URI, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_USER_RATING, 3);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_RATING, 3);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_TITLE, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_SUBTITLE, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_DESCRIPTION, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_ICON, 2);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_ICON_URI, 1);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_MEDIA_ID, 1);
        METADATA_KEYS_TYPE.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        METADATA_KEYS_TYPE.put(androidx.media2.common.MediaMetadata.METADATA_KEY_MEDIA_URI, 1);
        METADATA_KEYS_TYPE.put("android.media.metadata.ADVERTISEMENT", 0);
        METADATA_KEYS_TYPE.put("android.media.metadata.DOWNLOAD_STATUS", 0);
    }

    public MediaMetadataCompat(Bundle bundle) {
        this.mBundle = new Bundle(bundle);
        MediaSessionCompat.ensureClassLoader(this.mBundle);
    }

    public MediaMetadataCompat(Parcel parcel) {
        this.mBundle = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    public static MediaMetadataCompat fromMediaMetadata(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        mediaMetadata.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        createFromParcel.mMetadataFwk = mediaMetadata;
        return createFromParcel;
    }

    public boolean containsKey(String str) {
        return this.mBundle.containsKey(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bitmap getBitmap(String str) {
        Bitmap bitmap;
        try {
            bitmap = (Bitmap) this.mBundle.getParcelable(str);
        } catch (Exception e) {
            bitmap = null;
        }
        return bitmap;
    }

    public Bundle getBundle() {
        return new Bundle(this.mBundle);
    }

    public MediaDescriptionCompat getDescription() {
        Uri uri;
        Bitmap bitmap;
        Uri uri2;
        MediaDescriptionCompat mediaDescriptionCompat = this.mDescription;
        if (mediaDescriptionCompat != null) {
            return mediaDescriptionCompat;
        }
        String string = getString(androidx.media2.common.MediaMetadata.METADATA_KEY_MEDIA_ID);
        CharSequence[] charSequenceArr = new CharSequence[3];
        CharSequence text = getText(androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_TITLE);
        if (TextUtils.isEmpty(text)) {
            int i = 0;
            int i2 = 0;
            while (i < charSequenceArr.length) {
                String[] strArr = PREFERRED_DESCRIPTION_ORDER;
                if (i2 >= strArr.length) {
                    break;
                }
                CharSequence text2 = getText(strArr[i2]);
                i = i;
                if (!TextUtils.isEmpty(text2)) {
                    charSequenceArr[i] = text2;
                    i++;
                }
                i2++;
            }
        } else {
            charSequenceArr[0] = text;
            charSequenceArr[1] = getText(androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_SUBTITLE);
            charSequenceArr[2] = getText(androidx.media2.common.MediaMetadata.METADATA_KEY_DISPLAY_DESCRIPTION);
        }
        int i3 = 0;
        while (true) {
            String[] strArr2 = PREFERRED_BITMAP_ORDER;
            uri = null;
            if (i3 >= strArr2.length) {
                bitmap = null;
                break;
            }
            bitmap = getBitmap(strArr2[i3]);
            if (bitmap != null) {
                break;
            }
            i3++;
        }
        int i4 = 0;
        while (true) {
            String[] strArr3 = PREFERRED_URI_ORDER;
            if (i4 >= strArr3.length) {
                uri2 = null;
                break;
            }
            String string2 = getString(strArr3[i4]);
            if (!TextUtils.isEmpty(string2)) {
                uri2 = Uri.parse(string2);
                break;
            }
            i4++;
        }
        String string3 = getString(androidx.media2.common.MediaMetadata.METADATA_KEY_MEDIA_URI);
        if (!TextUtils.isEmpty(string3)) {
            uri = Uri.parse(string3);
        }
        MediaDescriptionCompat.Builder builder = new MediaDescriptionCompat.Builder();
        builder.setMediaId(string);
        builder.setTitle(charSequenceArr[0]);
        builder.setSubtitle(charSequenceArr[1]);
        builder.setDescription(charSequenceArr[2]);
        builder.setIconBitmap(bitmap);
        builder.setIconUri(uri2);
        builder.setMediaUri(uri);
        Bundle bundle = new Bundle();
        if (this.mBundle.containsKey("android.media.metadata.BT_FOLDER_TYPE")) {
            bundle.putLong("android.media.extra.BT_FOLDER_TYPE", getLong("android.media.metadata.BT_FOLDER_TYPE"));
        }
        if (this.mBundle.containsKey("android.media.metadata.DOWNLOAD_STATUS")) {
            bundle.putLong("android.media.extra.DOWNLOAD_STATUS", getLong("android.media.metadata.DOWNLOAD_STATUS"));
        }
        if (!bundle.isEmpty()) {
            builder.setExtras(bundle);
        }
        this.mDescription = builder.build();
        return this.mDescription;
    }

    public long getLong(String str) {
        return this.mBundle.getLong(str, 0L);
    }

    public Object getMediaMetadata() {
        if (this.mMetadataFwk == null && Build.VERSION.SDK_INT >= 21) {
            Parcel obtain = Parcel.obtain();
            writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            this.mMetadataFwk = (MediaMetadata) MediaMetadata.CREATOR.createFromParcel(obtain);
            obtain.recycle();
        }
        return this.mMetadataFwk;
    }

    public RatingCompat getRating(String str) {
        RatingCompat ratingCompat;
        try {
            ratingCompat = Build.VERSION.SDK_INT >= 19 ? RatingCompat.fromRating(this.mBundle.getParcelable(str)) : (RatingCompat) this.mBundle.getParcelable(str);
        } catch (Exception e) {
            ratingCompat = null;
        }
        return ratingCompat;
    }

    public String getString(String str) {
        CharSequence charSequence = this.mBundle.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public CharSequence getText(String str) {
        return this.mBundle.getCharSequence(str);
    }

    public Set<String> keySet() {
        return this.mBundle.keySet();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.mBundle);
    }
}
