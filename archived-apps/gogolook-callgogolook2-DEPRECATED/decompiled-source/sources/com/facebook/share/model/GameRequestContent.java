package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/GameRequestContent.class */
public final class GameRequestContent implements ShareModel {
    public static final Parcelable.Creator<GameRequestContent> CREATOR = new C2680a();

    /* renamed from: a */
    public final String f3648a;

    /* renamed from: b */
    public final List<String> f3649b;

    /* renamed from: c */
    public final String f3650c;

    /* renamed from: d */
    public final String f3651d;

    /* renamed from: e */
    public final EnumC2681b f3652e;

    /* renamed from: f */
    public final String f3653f;

    /* renamed from: g */
    public final EnumC2682c f3654g;

    /* renamed from: h */
    public final List<String> f3655h;

    /* renamed from: com.facebook.share.model.GameRequestContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/GameRequestContent$a.class */
    public static final class C2680a implements Parcelable.Creator<GameRequestContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GameRequestContent createFromParcel(Parcel parcel) {
            return new GameRequestContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GameRequestContent[] newArray(int i) {
            return new GameRequestContent[i];
        }
    }

    /* renamed from: com.facebook.share.model.GameRequestContent$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/GameRequestContent$b.class */
    public enum EnumC2681b {
        SEND,
        ASKFOR,
        TURN
    }

    /* renamed from: com.facebook.share.model.GameRequestContent$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/GameRequestContent$c.class */
    public enum EnumC2682c {
        APP_USERS,
        APP_NON_USERS
    }

    public GameRequestContent(Parcel parcel) {
        this.f3648a = parcel.readString();
        this.f3649b = parcel.createStringArrayList();
        this.f3650c = parcel.readString();
        this.f3651d = parcel.readString();
        this.f3652e = (EnumC2681b) parcel.readSerializable();
        this.f3653f = parcel.readString();
        this.f3654g = (EnumC2682c) parcel.readSerializable();
        this.f3655h = parcel.createStringArrayList();
        parcel.readStringList(this.f3655h);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3648a);
        parcel.writeStringList(this.f3649b);
        parcel.writeString(this.f3650c);
        parcel.writeString(this.f3651d);
        parcel.writeSerializable(this.f3652e);
        parcel.writeString(this.f3653f);
        parcel.writeSerializable(this.f3654g);
        parcel.writeStringList(this.f3655h);
    }
}
