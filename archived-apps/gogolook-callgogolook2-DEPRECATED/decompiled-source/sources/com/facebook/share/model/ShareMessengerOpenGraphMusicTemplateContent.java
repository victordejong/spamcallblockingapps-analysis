package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent.class */
public final class ShareMessengerOpenGraphMusicTemplateContent extends ShareContent<ShareMessengerOpenGraphMusicTemplateContent, Object> {
    public static final Parcelable.Creator<ShareMessengerOpenGraphMusicTemplateContent> CREATOR = new C2696a();

    /* renamed from: g */
    public final Uri f3709g;

    /* renamed from: h */
    public final ShareMessengerActionButton f3710h;

    /* renamed from: com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$a.class */
    public static final class C2696a implements Parcelable.Creator<ShareMessengerOpenGraphMusicTemplateContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerOpenGraphMusicTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerOpenGraphMusicTemplateContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerOpenGraphMusicTemplateContent[] newArray(int i) {
            return new ShareMessengerOpenGraphMusicTemplateContent[i];
        }
    }

    public ShareMessengerOpenGraphMusicTemplateContent(Parcel parcel) {
        super(parcel);
        this.f3709g = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f3710h = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: g */
    public ShareMessengerActionButton m33875g() {
        return this.f3710h;
    }

    /* renamed from: h */
    public Uri m33874h() {
        return this.f3709g;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f3709g, i);
        parcel.writeParcelable(this.f3710h, i);
    }
}
