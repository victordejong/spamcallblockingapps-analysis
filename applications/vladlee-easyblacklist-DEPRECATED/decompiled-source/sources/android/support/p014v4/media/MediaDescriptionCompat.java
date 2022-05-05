package android.support.p014v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* renamed from: android.support.v4.media.MediaDescriptionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat.class */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0190h();

    /* renamed from: a */
    private final String f399a;

    /* renamed from: b */
    private final CharSequence f400b;

    /* renamed from: c */
    private final CharSequence f401c;

    /* renamed from: d */
    private final CharSequence f402d;

    /* renamed from: e */
    private final Bitmap f403e;

    /* renamed from: f */
    private final Uri f404f;

    /* renamed from: g */
    private final Bundle f405g;

    /* renamed from: h */
    private final Uri f406h;

    /* renamed from: i */
    private Object f407i;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    public static final class C0176a {

        /* renamed from: a */
        private String f408a;

        /* renamed from: b */
        private CharSequence f409b;

        /* renamed from: c */
        private CharSequence f410c;

        /* renamed from: d */
        private CharSequence f411d;

        /* renamed from: e */
        private Bitmap f412e;

        /* renamed from: f */
        private Uri f413f;

        /* renamed from: g */
        private Bundle f414g;

        /* renamed from: h */
        private Uri f415h;

        /* renamed from: a */
        public final C0176a m10085a(Bitmap bitmap) {
            this.f412e = bitmap;
            return this;
        }

        /* renamed from: a */
        public final C0176a m10084a(Uri uri) {
            this.f413f = uri;
            return this;
        }

        /* renamed from: a */
        public final C0176a m10083a(Bundle bundle) {
            this.f414g = bundle;
            return this;
        }

        /* renamed from: a */
        public final C0176a m10082a(CharSequence charSequence) {
            this.f409b = charSequence;
            return this;
        }

        /* renamed from: a */
        public final C0176a m10081a(String str) {
            this.f408a = str;
            return this;
        }

        /* renamed from: a */
        public final MediaDescriptionCompat m10086a() {
            return new MediaDescriptionCompat(this.f408a, this.f409b, this.f410c, this.f411d, this.f412e, this.f413f, this.f414g, this.f415h);
        }

        /* renamed from: b */
        public final C0176a m10080b(Uri uri) {
            this.f415h = uri;
            return this;
        }

        /* renamed from: b */
        public final C0176a m10079b(CharSequence charSequence) {
            this.f410c = charSequence;
            return this;
        }

        /* renamed from: c */
        public final C0176a m10078c(CharSequence charSequence) {
            this.f411d = charSequence;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaDescriptionCompat(Parcel parcel) {
        this.f399a = parcel.readString();
        this.f400b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f401c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f402d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = getClass().getClassLoader();
        this.f403e = (Bitmap) parcel.readParcelable(classLoader);
        this.f404f = (Uri) parcel.readParcelable(classLoader);
        this.f405g = parcel.readBundle(classLoader);
        this.f406h = (Uri) parcel.readParcelable(classLoader);
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f399a = str;
        this.f400b = charSequence;
        this.f401c = charSequence2;
        this.f402d = charSequence3;
        this.f403e = bitmap;
        this.f404f = uri;
        this.f405g = bundle;
        this.f406h = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bd  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.p014v4.media.MediaDescriptionCompat m10087a(java.lang.Object r3) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p014v4.media.MediaDescriptionCompat.m10087a(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    /* renamed from: a */
    public final String m10088a() {
        return this.f399a;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f400b) + ", " + ((Object) this.f401c) + ", " + ((Object) this.f402d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.f399a);
            TextUtils.writeToParcel(this.f400b, parcel, i);
            TextUtils.writeToParcel(this.f401c, parcel, i);
            TextUtils.writeToParcel(this.f402d, parcel, i);
            parcel.writeParcelable(this.f403e, i);
            parcel.writeParcelable(this.f404f, i);
            parcel.writeBundle(this.f405g);
            parcel.writeParcelable(this.f406h, i);
            return;
        }
        if (this.f407i == null && Build.VERSION.SDK_INT >= 21) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f399a);
            builder.setTitle(this.f400b);
            builder.setSubtitle(this.f401c);
            builder.setDescription(this.f402d);
            builder.setIconBitmap(this.f403e);
            builder.setIconUri(this.f404f);
            Bundle bundle = this.f405g;
            Bundle bundle2 = bundle;
            if (Build.VERSION.SDK_INT < 23) {
                bundle2 = bundle;
                if (this.f406h != null) {
                    bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                        bundle2.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                    }
                    bundle2.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f406h);
                }
            }
            builder.setExtras(bundle2);
            if (Build.VERSION.SDK_INT >= 23) {
                builder.setMediaUri(this.f406h);
            }
            this.f407i = builder.build();
        }
        ((MediaDescription) this.f407i).writeToParcel(parcel, i);
    }
}
