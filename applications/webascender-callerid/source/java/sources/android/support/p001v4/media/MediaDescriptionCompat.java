package android.support.p001v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.C0010d;
import android.support.p001v4.media.C0012e;
import android.text.TextUtils;
/* renamed from: android.support.v4.media.MediaDescriptionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat.class */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0003a();

    /* renamed from: f */
    private final String f2f;

    /* renamed from: g */
    private final CharSequence f3g;

    /* renamed from: h */
    private final CharSequence f4h;

    /* renamed from: i */
    private final CharSequence f5i;

    /* renamed from: j */
    private final Bitmap f6j;

    /* renamed from: k */
    private final Uri f7k;

    /* renamed from: l */
    private final Bundle f8l;

    /* renamed from: m */
    private final Uri f9m;

    /* renamed from: n */
    private Object f10n;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    static final class C0003a implements Parcelable.Creator<MediaDescriptionCompat> {
        C0003a() {
        }

        /* renamed from: a */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.m7109a(C0010d.m7084a(parcel));
        }

        /* renamed from: b */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$b.class */
    public static final class C0004b {

        /* renamed from: a */
        private String f11a;

        /* renamed from: b */
        private CharSequence f12b;

        /* renamed from: c */
        private CharSequence f13c;

        /* renamed from: d */
        private CharSequence f14d;

        /* renamed from: e */
        private Bitmap f15e;

        /* renamed from: f */
        private Uri f16f;

        /* renamed from: g */
        private Bundle f17g;

        /* renamed from: h */
        private Uri f18h;

        /* renamed from: a */
        public MediaDescriptionCompat m7105a() {
            return new MediaDescriptionCompat(this.f11a, this.f12b, this.f13c, this.f14d, this.f15e, this.f16f, this.f17g, this.f18h);
        }

        /* renamed from: b */
        public C0004b m7104b(CharSequence charSequence) {
            this.f14d = charSequence;
            return this;
        }

        /* renamed from: c */
        public C0004b m7103c(Bundle bundle) {
            this.f17g = bundle;
            return this;
        }

        /* renamed from: d */
        public C0004b m7102d(Bitmap bitmap) {
            this.f15e = bitmap;
            return this;
        }

        /* renamed from: e */
        public C0004b m7101e(Uri uri) {
            this.f16f = uri;
            return this;
        }

        /* renamed from: f */
        public C0004b m7100f(String str) {
            this.f11a = str;
            return this;
        }

        /* renamed from: g */
        public C0004b m7099g(Uri uri) {
            this.f18h = uri;
            return this;
        }

        /* renamed from: h */
        public C0004b m7098h(CharSequence charSequence) {
            this.f13c = charSequence;
            return this;
        }

        /* renamed from: i */
        public C0004b m7097i(CharSequence charSequence) {
            this.f12b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f2f = parcel.readString();
        this.f3g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f4h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f5i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f6j = (Bitmap) parcel.readParcelable(classLoader);
        this.f7k = (Uri) parcel.readParcelable(classLoader);
        this.f8l = parcel.readBundle(classLoader);
        this.f9m = (Uri) parcel.readParcelable(classLoader);
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f2f = str;
        this.f3g = charSequence;
        this.f4h = charSequence2;
        this.f5i = charSequence3;
        this.f6j = bitmap;
        this.f7k = uri;
        this.f8l = bundle;
        this.f9m = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.p001v4.media.MediaDescriptionCompat m7109a(java.lang.Object r3) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.MediaDescriptionCompat.m7109a(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    /* renamed from: b */
    public Object m7108b() {
        Object obj = this.f10n;
        Object obj2 = obj;
        if (obj == null) {
            int i = Build.VERSION.SDK_INT;
            if (i < 21) {
                obj2 = obj;
            } else {
                Object m7074b = C0010d.C0011a.m7074b();
                C0010d.C0011a.m7069g(m7074b, this.f2f);
                C0010d.C0011a.m7067i(m7074b, this.f3g);
                C0010d.C0011a.m7068h(m7074b, this.f4h);
                C0010d.C0011a.m7073c(m7074b, this.f5i);
                C0010d.C0011a.m7071e(m7074b, this.f6j);
                C0010d.C0011a.m7070f(m7074b, this.f7k);
                Bundle bundle = this.f8l;
                Bundle bundle2 = bundle;
                if (i < 23) {
                    bundle2 = bundle;
                    if (this.f9m != null) {
                        bundle2 = bundle;
                        if (bundle == null) {
                            bundle2 = new Bundle();
                            bundle2.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                        }
                        bundle2.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f9m);
                    }
                }
                C0010d.C0011a.m7072d(m7074b, bundle2);
                if (i >= 23) {
                    C0012e.C0013a.m7065a(m7074b, this.f9m);
                }
                obj2 = C0010d.C0011a.m7075a(m7074b);
                this.f10n = obj2;
            }
        }
        return obj2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f3g) + ", " + ((Object) this.f4h) + ", " + ((Object) this.f5i);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            C0010d.m7076i(m7108b(), parcel, i);
            return;
        }
        parcel.writeString(this.f2f);
        TextUtils.writeToParcel(this.f3g, parcel, i);
        TextUtils.writeToParcel(this.f4h, parcel, i);
        TextUtils.writeToParcel(this.f5i, parcel, i);
        parcel.writeParcelable(this.f6j, i);
        parcel.writeParcelable(this.f7k, i);
        parcel.writeBundle(this.f8l);
        parcel.writeParcelable(this.f9m, i);
    }
}
