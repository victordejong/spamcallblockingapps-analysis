package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerGenericTemplateContent.class */
public final class ShareMessengerGenericTemplateContent extends ShareContent<ShareMessengerGenericTemplateContent, Object> {
    public static final Parcelable.Creator<ShareMessengerGenericTemplateContent> CREATOR = new C2691a();

    /* renamed from: g */
    public final boolean f3691g;

    /* renamed from: h */
    public final EnumC2692b f3692h;

    /* renamed from: i */
    public final ShareMessengerGenericTemplateElement f3693i;

    /* renamed from: com.facebook.share.model.ShareMessengerGenericTemplateContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerGenericTemplateContent$a.class */
    public static final class C2691a implements Parcelable.Creator<ShareMessengerGenericTemplateContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerGenericTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerGenericTemplateContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerGenericTemplateContent[] newArray(int i) {
            return new ShareMessengerGenericTemplateContent[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareMessengerGenericTemplateContent$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerGenericTemplateContent$b.class */
    public enum EnumC2692b {
        HORIZONTAL,
        SQUARE
    }

    public ShareMessengerGenericTemplateContent(Parcel parcel) {
        super(parcel);
        this.f3691g = parcel.readByte() != 0;
        this.f3692h = (EnumC2692b) parcel.readSerializable();
        this.f3693i = (ShareMessengerGenericTemplateElement) parcel.readParcelable(ShareMessengerGenericTemplateElement.class.getClassLoader());
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: g */
    public ShareMessengerGenericTemplateElement m33887g() {
        return this.f3693i;
    }

    /* renamed from: h */
    public EnumC2692b m33886h() {
        return this.f3692h;
    }

    /* renamed from: i */
    public boolean m33885i() {
        return this.f3691g;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.f3691g ? (byte) 1 : (byte) 0);
        parcel.writeSerializable(this.f3692h);
        parcel.writeParcelable(this.f3693i, i);
    }
}
