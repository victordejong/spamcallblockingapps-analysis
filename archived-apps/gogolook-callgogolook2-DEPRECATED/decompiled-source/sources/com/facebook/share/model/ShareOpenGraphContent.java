package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphAction;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphContent.class */
public final class ShareOpenGraphContent extends ShareContent<ShareOpenGraphContent, Object> {
    public static final Parcelable.Creator<ShareOpenGraphContent> CREATOR = new C2701a();

    /* renamed from: g */
    public final ShareOpenGraphAction f3720g;

    /* renamed from: h */
    public final String f3721h;

    /* renamed from: com.facebook.share.model.ShareOpenGraphContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphContent$a.class */
    public static final class C2701a implements Parcelable.Creator<ShareOpenGraphContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphContent createFromParcel(Parcel parcel) {
            return new ShareOpenGraphContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphContent[] newArray(int i) {
            return new ShareOpenGraphContent[i];
        }
    }

    public ShareOpenGraphContent(Parcel parcel) {
        super(parcel);
        this.f3720g = new ShareOpenGraphAction.C2700b().m33866a(parcel).m33867a();
        this.f3721h = parcel.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    /* renamed from: g */
    public ShareOpenGraphAction m33863g() {
        return this.f3720g;
    }

    @Nullable
    /* renamed from: h */
    public String m33862h() {
        return this.f3721h;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f3720g, 0);
        parcel.writeString(this.f3721h);
    }
}
