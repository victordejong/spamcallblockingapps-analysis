package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerMediaTemplateContent.class */
public final class ShareMessengerMediaTemplateContent extends ShareContent<ShareMessengerMediaTemplateContent, Object> {
    public static final Parcelable.Creator<ShareMessengerMediaTemplateContent> CREATOR = new C2694a();

    /* renamed from: g */
    public final EnumC2695b f3702g;

    /* renamed from: h */
    public final String f3703h;

    /* renamed from: i */
    public final Uri f3704i;

    /* renamed from: j */
    public final ShareMessengerActionButton f3705j;

    /* renamed from: com.facebook.share.model.ShareMessengerMediaTemplateContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerMediaTemplateContent$a.class */
    public static final class C2694a implements Parcelable.Creator<ShareMessengerMediaTemplateContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerMediaTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerMediaTemplateContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerMediaTemplateContent[] newArray(int i) {
            return new ShareMessengerMediaTemplateContent[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareMessengerMediaTemplateContent$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerMediaTemplateContent$b.class */
    public enum EnumC2695b {
        IMAGE,
        VIDEO
    }

    public ShareMessengerMediaTemplateContent(Parcel parcel) {
        super(parcel);
        this.f3702g = (EnumC2695b) parcel.readSerializable();
        this.f3703h = parcel.readString();
        this.f3704i = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f3705j = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: g */
    public String m33879g() {
        return this.f3703h;
    }

    /* renamed from: h */
    public ShareMessengerActionButton m33878h() {
        return this.f3705j;
    }

    /* renamed from: i */
    public EnumC2695b m33877i() {
        return this.f3702g;
    }

    /* renamed from: j */
    public Uri m33876j() {
        return this.f3704i;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.f3702g);
        parcel.writeString(this.f3703h);
        parcel.writeParcelable(this.f3704i, i);
        parcel.writeParcelable(this.f3705j, i);
    }
}
