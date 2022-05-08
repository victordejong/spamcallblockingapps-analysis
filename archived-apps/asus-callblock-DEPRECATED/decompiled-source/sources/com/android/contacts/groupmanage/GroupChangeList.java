package com.android.contacts.groupmanage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/groupmanage/GroupChangeList.class */
public class GroupChangeList implements Parcelable {
    public static final Parcelable.Creator<GroupChangeList> CREATOR = new Parcelable.Creator<GroupChangeList>() { // from class: com.android.contacts.groupmanage.GroupChangeList.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ GroupChangeList createFromParcel(Parcel parcel) {
            return new GroupChangeList(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ GroupChangeList[] newArray(int i) {
            return new GroupChangeList[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public boolean f1425a;

    /* renamed from: b  reason: collision with root package name */
    private List<GroupChange> f1426b;
    private List<Long> c;
    private List<String> d;

    public GroupChangeList() {
        this.f1425a = false;
        this.f1426b = new ArrayList();
        this.c = new ArrayList();
        this.d = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private GroupChangeList(Parcel parcel) {
        this.f1425a = false;
        this.f1426b = new ArrayList();
        this.c = new ArrayList();
        this.d = new ArrayList();
        int readInt = parcel.readInt();
        boolean[] zArr = new boolean[readInt];
        parcel.readBooleanArray(zArr);
        if (readInt == 1) {
            this.f1425a = zArr[0];
        }
        int readInt2 = parcel.readInt();
        ClassLoader classLoader = getClass().getClassLoader();
        for (int i = 0; i < readInt2; i++) {
            this.f1426b.add(parcel.readParcelable(classLoader));
        }
        int readInt3 = parcel.readInt();
        for (int i2 = 0; i2 < readInt3; i2++) {
            this.c.add(Long.valueOf(parcel.readLong()));
        }
        int readInt4 = parcel.readInt();
        for (int i3 = 0; i3 < readInt4; i3++) {
            this.d.add(parcel.readString());
        }
    }

    /* synthetic */ GroupChangeList(Parcel parcel, byte b2) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(1);
        parcel.writeBooleanArray(new boolean[]{this.f1425a});
        parcel.writeInt(this.f1426b.size());
        for (GroupChange groupChange : this.f1426b) {
            parcel.writeParcelable(groupChange, i);
        }
        parcel.writeInt(this.c.size());
        for (Long l : this.c) {
            parcel.writeLong(l.longValue());
        }
        parcel.writeInt(this.d.size());
        for (String str : this.d) {
            parcel.writeString(str);
        }
    }
}
