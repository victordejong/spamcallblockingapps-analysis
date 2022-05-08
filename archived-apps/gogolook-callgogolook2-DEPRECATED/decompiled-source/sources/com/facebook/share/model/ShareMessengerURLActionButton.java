package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerURLActionButton.class */
public final class ShareMessengerURLActionButton extends ShareMessengerActionButton {
    public static final Parcelable.Creator<ShareMessengerURLActionButton> CREATOR = new C2697a();

    /* renamed from: b */
    public final Uri f3711b;

    /* renamed from: c */
    public final Uri f3712c;

    /* renamed from: d */
    public final boolean f3713d;

    /* renamed from: e */
    public final boolean f3714e;

    /* renamed from: f */
    public final EnumC2698b f3715f;

    /* renamed from: com.facebook.share.model.ShareMessengerURLActionButton$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerURLActionButton$a.class */
    public static final class C2697a implements Parcelable.Creator<ShareMessengerURLActionButton> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerURLActionButton createFromParcel(Parcel parcel) {
            return new ShareMessengerURLActionButton(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerURLActionButton[] newArray(int i) {
            return new ShareMessengerURLActionButton[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareMessengerURLActionButton$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerURLActionButton$b.class */
    public enum EnumC2698b {
        WebviewHeightRatioFull,
        WebviewHeightRatioTall,
        WebviewHeightRatioCompact
    }

    public ShareMessengerURLActionButton(Parcel parcel) {
        super(parcel);
        this.f3711b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        boolean z = true;
        this.f3713d = parcel.readByte() != 0;
        this.f3712c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f3715f = (EnumC2698b) parcel.readSerializable();
        if (parcel.readByte() == 0) {
            z = false;
        }
        this.f3714e = z;
    }

    @Nullable
    /* renamed from: b */
    public Uri m33873b() {
        return this.f3712c;
    }

    /* renamed from: c */
    public boolean m33872c() {
        return this.f3713d;
    }

    /* renamed from: d */
    public boolean m33871d() {
        return this.f3714e;
    }

    /* renamed from: e */
    public Uri m33870e() {
        return this.f3711b;
    }

    @Nullable
    /* renamed from: f */
    public EnumC2698b m33869f() {
        return this.f3715f;
    }
}
