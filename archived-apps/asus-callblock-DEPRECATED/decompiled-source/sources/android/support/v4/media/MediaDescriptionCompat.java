package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat.class */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() { // from class: android.support.v4.media.MediaDescriptionCompat.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel, (byte) 0) : MediaDescriptionCompat.a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f156a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f157b;
    private final CharSequence c;
    private final CharSequence d;
    private final Bitmap e;
    private final Uri f;
    private final Bundle g;
    private final Uri h;
    private Object i;

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f158a;

        /* renamed from: b  reason: collision with root package name */
        CharSequence f159b;
        CharSequence c;
        CharSequence d;
        Bitmap e;
        Uri f;
        Bundle g;
        Uri h;
    }

    private MediaDescriptionCompat(Parcel parcel) {
        this.f156a = parcel.readString();
        this.f157b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.e = (Bitmap) parcel.readParcelable(null);
        this.f = (Uri) parcel.readParcelable(null);
        this.g = parcel.readBundle();
        this.h = (Uri) parcel.readParcelable(null);
    }

    /* synthetic */ MediaDescriptionCompat(Parcel parcel, byte b2) {
        this(parcel);
    }

    private MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f156a = str;
        this.f157b = charSequence;
        this.c = charSequence2;
        this.d = charSequence3;
        this.e = bitmap;
        this.f = uri;
        this.g = bundle;
        this.h = uri2;
    }

    private /* synthetic */ MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2, byte b2) {
        this(str, charSequence, charSequence2, charSequence3, bitmap, uri, bundle, uri2);
    }

    public static MediaDescriptionCompat a(Object obj) {
        MediaDescriptionCompat mediaDescriptionCompat;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            mediaDescriptionCompat = null;
        } else {
            a aVar = new a();
            aVar.f158a = ((MediaDescription) obj).getMediaId();
            aVar.f159b = ((MediaDescription) obj).getTitle();
            aVar.c = ((MediaDescription) obj).getSubtitle();
            aVar.d = ((MediaDescription) obj).getDescription();
            aVar.e = ((MediaDescription) obj).getIconBitmap();
            aVar.f = ((MediaDescription) obj).getIconUri();
            Bundle extras = ((MediaDescription) obj).getExtras();
            Uri uri = extras == null ? null : (Uri) extras.getParcelable("android.support.v4.media.description.MEDIA_URI");
            if (uri != null) {
                if (!extras.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || extras.size() != 2) {
                    extras.remove("android.support.v4.media.description.MEDIA_URI");
                    extras.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                } else {
                    extras = null;
                }
            }
            aVar.g = extras;
            if (uri != null) {
                aVar.h = uri;
            } else if (Build.VERSION.SDK_INT >= 23) {
                aVar.h = ((MediaDescription) obj).getMediaUri();
            }
            MediaDescriptionCompat mediaDescriptionCompat2 = new MediaDescriptionCompat(aVar.f158a, aVar.f159b, aVar.c, aVar.d, aVar.e, aVar.f, aVar.g, aVar.h, (byte) 0);
            mediaDescriptionCompat2.i = obj;
            mediaDescriptionCompat = mediaDescriptionCompat2;
        }
        return mediaDescriptionCompat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f157b) + ", " + ((Object) this.c) + ", " + ((Object) this.d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Object obj;
        Bundle bundle;
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.f156a);
            TextUtils.writeToParcel(this.f157b, parcel, i);
            TextUtils.writeToParcel(this.c, parcel, i);
            TextUtils.writeToParcel(this.d, parcel, i);
            parcel.writeParcelable(this.e, i);
            parcel.writeParcelable(this.f, i);
            parcel.writeBundle(this.g);
            parcel.writeParcelable(this.h, i);
            return;
        }
        if (this.i != null || Build.VERSION.SDK_INT < 21) {
            obj = this.i;
        } else {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f156a);
            builder.setTitle(this.f157b);
            builder.setSubtitle(this.c);
            builder.setDescription(this.d);
            builder.setIconBitmap(this.e);
            builder.setIconUri(this.f);
            Bundle bundle2 = this.g;
            if (Build.VERSION.SDK_INT >= 23 || this.h == null) {
                bundle = bundle2;
            } else {
                bundle = bundle2;
                if (bundle2 == null) {
                    bundle = new Bundle();
                    bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                }
                bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.h);
            }
            builder.setExtras(bundle);
            if (Build.VERSION.SDK_INT >= 23) {
                builder.setMediaUri(this.h);
            }
            this.i = builder.build();
            obj = this.i;
        }
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }
}
