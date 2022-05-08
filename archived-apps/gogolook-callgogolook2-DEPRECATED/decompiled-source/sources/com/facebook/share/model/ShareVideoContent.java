package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareVideoContent.class */
public final class ShareVideoContent extends ShareContent<ShareVideoContent, Object> implements ShareModel {
    public static final Parcelable.Creator<ShareVideoContent> CREATOR = new C2711a();

    /* renamed from: g */
    public final String f3740g;

    /* renamed from: h */
    public final String f3741h;

    /* renamed from: i */
    public final SharePhoto f3742i;

    /* renamed from: j */
    public final ShareVideo f3743j;

    /* renamed from: com.facebook.share.model.ShareVideoContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareVideoContent$a.class */
    public static final class C2711a implements Parcelable.Creator<ShareVideoContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareVideoContent createFromParcel(Parcel parcel) {
            return new ShareVideoContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareVideoContent[] newArray(int i) {
            return new ShareVideoContent[i];
        }
    }

    public ShareVideoContent(Parcel parcel) {
        super(parcel);
        this.f3740g = parcel.readString();
        this.f3741h = parcel.readString();
        SharePhoto.C2705b b = new SharePhoto.C2705b().m33841b(parcel);
        if (b.m33839c() == null && b.m33842b() == null) {
            this.f3742i = null;
        } else {
            this.f3742i = b.m33850a();
        }
        this.f3743j = new ShareVideo.C2710b().m33817b(parcel).m33821a();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    /* renamed from: g */
    public String m33816g() {
        return this.f3740g;
    }

    @Nullable
    /* renamed from: h */
    public String m33815h() {
        return this.f3741h;
    }

    @Nullable
    /* renamed from: i */
    public SharePhoto m33814i() {
        return this.f3742i;
    }

    @Nullable
    /* renamed from: j */
    public ShareVideo m33813j() {
        return this.f3743j;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3740g);
        parcel.writeString(this.f3741h);
        parcel.writeParcelable(this.f3742i, 0);
        parcel.writeParcelable(this.f3743j, 0);
    }
}
