package com.google.android.gms.analytics.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/Command.class */
public class Command implements Parcelable {
    @Deprecated
    public static final Parcelable.Creator<Command> CREATOR = new Parcelable.Creator<Command>() { // from class: com.google.android.gms.analytics.internal.Command.1
        @Override // android.os.Parcelable.Creator
        @Deprecated
        public final /* synthetic */ Command createFromParcel(Parcel parcel) {
            return new Command(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @Deprecated
        public final /* synthetic */ Command[] newArray(int i) {
            return new Command[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f3794a;

    /* renamed from: b  reason: collision with root package name */
    private String f3795b;
    private String c;

    @Deprecated
    public Command() {
    }

    @Deprecated
    Command(Parcel parcel) {
        this.f3794a = parcel.readString();
        this.f3795b = parcel.readString();
        this.c = parcel.readString();
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.f3794a;
    }

    public String getValue() {
        return this.c;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3794a);
        parcel.writeString(this.f3795b);
        parcel.writeString(this.c);
    }
}
