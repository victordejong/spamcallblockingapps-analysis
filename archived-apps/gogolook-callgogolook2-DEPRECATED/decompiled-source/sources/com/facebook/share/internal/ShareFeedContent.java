package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/ShareFeedContent.class */
public class ShareFeedContent extends ShareContent<ShareFeedContent, Object> {
    public static final Parcelable.Creator<ShareFeedContent> CREATOR = new C2672a();

    /* renamed from: g */
    public final String f3626g;

    /* renamed from: h */
    public final String f3627h;

    /* renamed from: i */
    public final String f3628i;

    /* renamed from: j */
    public final String f3629j;

    /* renamed from: k */
    public final String f3630k;

    /* renamed from: l */
    public final String f3631l;

    /* renamed from: m */
    public final String f3632m;

    /* renamed from: com.facebook.share.internal.ShareFeedContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/ShareFeedContent$a.class */
    public static final class C2672a implements Parcelable.Creator<ShareFeedContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareFeedContent createFromParcel(Parcel parcel) {
            return new ShareFeedContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareFeedContent[] newArray(int i) {
            return new ShareFeedContent[i];
        }
    }

    public ShareFeedContent(Parcel parcel) {
        super(parcel);
        this.f3626g = parcel.readString();
        this.f3627h = parcel.readString();
        this.f3628i = parcel.readString();
        this.f3629j = parcel.readString();
        this.f3630k = parcel.readString();
        this.f3631l = parcel.readString();
        this.f3632m = parcel.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: g */
    public String m33949g() {
        return this.f3627h;
    }

    /* renamed from: h */
    public String m33948h() {
        return this.f3629j;
    }

    /* renamed from: i */
    public String m33947i() {
        return this.f3630k;
    }

    /* renamed from: j */
    public String m33946j() {
        return this.f3628i;
    }

    /* renamed from: k */
    public String m33945k() {
        return this.f3632m;
    }

    /* renamed from: l */
    public String m33944l() {
        return this.f3631l;
    }

    /* renamed from: m */
    public String m33943m() {
        return this.f3626g;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3626g);
        parcel.writeString(this.f3627h);
        parcel.writeString(this.f3628i);
        parcel.writeString(this.f3629j);
        parcel.writeString(this.f3630k);
        parcel.writeString(this.f3631l);
        parcel.writeString(this.f3632m);
    }
}
