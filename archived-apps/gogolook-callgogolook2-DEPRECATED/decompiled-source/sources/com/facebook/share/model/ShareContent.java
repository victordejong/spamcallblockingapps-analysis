package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import androidx.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareContent.AbstractC2684a;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.p047e.AbstractC2648b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareContent.class */
public abstract class ShareContent<P extends ShareContent, E extends AbstractC2684a> implements ShareModel {

    /* renamed from: a */
    public final Uri f3666a;

    /* renamed from: b */
    public final List<String> f3667b;

    /* renamed from: c */
    public final String f3668c;

    /* renamed from: d */
    public final String f3669d;

    /* renamed from: e */
    public final String f3670e;

    /* renamed from: f */
    public final ShareHashtag f3671f;

    /* renamed from: com.facebook.share.model.ShareContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareContent$a.class */
    public static abstract class AbstractC2684a<P extends ShareContent, E extends AbstractC2684a> implements AbstractC2648b<P, E> {

        /* renamed from: a */
        public Uri f3672a;

        /* renamed from: b */
        public List<String> f3673b;

        /* renamed from: c */
        public String f3674c;

        /* renamed from: d */
        public String f3675d;

        /* renamed from: e */
        public String f3676e;

        /* renamed from: f */
        public ShareHashtag f3677f;

        /* renamed from: a */
        public E m33917a(@Nullable Uri uri) {
            this.f3672a = uri;
            return this;
        }

        /* renamed from: a */
        public E m33915a(P p) {
            if (p == null) {
                return this;
            }
            m33917a(p.m33924a());
            m33912a(p.m33921c());
            m33910b(p.m33920d());
            m33913a(p.m33922b());
            m33908c(p.m33919e());
            m33914a(p.m33918f());
            return this;
        }

        /* renamed from: a */
        public E m33914a(@Nullable ShareHashtag shareHashtag) {
            this.f3677f = shareHashtag;
            return this;
        }

        /* renamed from: a */
        public E m33913a(@Nullable String str) {
            this.f3675d = str;
            return this;
        }

        /* renamed from: a */
        public E m33912a(@Nullable List<String> list) {
            this.f3673b = list == null ? null : Collections.unmodifiableList(list);
            return this;
        }

        /* renamed from: b */
        public E m33910b(@Nullable String str) {
            this.f3674c = str;
            return this;
        }

        /* renamed from: c */
        public E m33908c(@Nullable String str) {
            this.f3676e = str;
            return this;
        }
    }

    public ShareContent(Parcel parcel) {
        this.f3666a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f3667b = m33923a(parcel);
        this.f3668c = parcel.readString();
        this.f3669d = parcel.readString();
        this.f3670e = parcel.readString();
        ShareHashtag.C2686b bVar = new ShareHashtag.C2686b();
        bVar.m33902a(parcel);
        this.f3671f = bVar.m33903a();
    }

    public ShareContent(AbstractC2684a aVar) {
        this.f3666a = aVar.f3672a;
        this.f3667b = aVar.f3673b;
        this.f3668c = aVar.f3674c;
        this.f3669d = aVar.f3675d;
        this.f3670e = aVar.f3676e;
        this.f3671f = aVar.f3677f;
    }

    @Nullable
    /* renamed from: a */
    public Uri m33924a() {
        return this.f3666a;
    }

    /* renamed from: a */
    public final List<String> m33923a(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        return arrayList.size() == 0 ? null : Collections.unmodifiableList(arrayList);
    }

    @Nullable
    /* renamed from: b */
    public String m33922b() {
        return this.f3669d;
    }

    @Nullable
    /* renamed from: c */
    public List<String> m33921c() {
        return this.f3667b;
    }

    @Nullable
    /* renamed from: d */
    public String m33920d() {
        return this.f3668c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    /* renamed from: e */
    public String m33919e() {
        return this.f3670e;
    }

    @Nullable
    /* renamed from: f */
    public ShareHashtag m33918f() {
        return this.f3671f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f3666a, 0);
        parcel.writeStringList(this.f3667b);
        parcel.writeString(this.f3668c);
        parcel.writeString(this.f3669d);
        parcel.writeString(this.f3670e);
        parcel.writeParcelable(this.f3671f, 0);
    }
}
