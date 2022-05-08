package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareLinkContent.class */
public final class ShareLinkContent extends ShareContent<ShareLinkContent, Object> {
    public static final Parcelable.Creator<ShareLinkContent> CREATOR = new C2687a();
    @Deprecated

    /* renamed from: g */
    public final String f3680g;
    @Deprecated

    /* renamed from: h */
    public final String f3681h;
    @Deprecated

    /* renamed from: i */
    public final Uri f3682i;

    /* renamed from: j */
    public final String f3683j;

    /* renamed from: com.facebook.share.model.ShareLinkContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareLinkContent$a.class */
    public static final class C2687a implements Parcelable.Creator<ShareLinkContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareLinkContent createFromParcel(Parcel parcel) {
            return new ShareLinkContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareLinkContent[] newArray(int i) {
            return new ShareLinkContent[i];
        }
    }

    public ShareLinkContent(Parcel parcel) {
        super(parcel);
        this.f3680g = parcel.readString();
        this.f3681h = parcel.readString();
        this.f3682i = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f3683j = parcel.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Deprecated
    /* renamed from: g */
    public String m33898g() {
        return this.f3680g;
    }

    @Nullable
    @Deprecated
    /* renamed from: h */
    public String m33897h() {
        return this.f3681h;
    }

    @Nullable
    @Deprecated
    /* renamed from: i */
    public Uri m33896i() {
        return this.f3682i;
    }

    @Nullable
    /* renamed from: j */
    public String m33895j() {
        return this.f3683j;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3680g);
        parcel.writeString(this.f3681h);
        parcel.writeParcelable(this.f3682i, 0);
        parcel.writeString(this.f3683j);
    }
}
