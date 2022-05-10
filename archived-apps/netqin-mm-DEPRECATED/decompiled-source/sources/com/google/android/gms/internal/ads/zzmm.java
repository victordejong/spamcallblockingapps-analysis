package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p131c.p161d.p170b.p224d.p252g.p253a.fe0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmm.class */
public final class zzmm extends zzmj {
    public static final Parcelable.Creator<zzmm> CREATOR = new fe0();

    /* renamed from: b */
    public final String f28634b;

    /* renamed from: c */
    public final String f28635c;

    public zzmm(Parcel parcel) {
        super(parcel.readString());
        this.f28634b = parcel.readString();
        this.f28635c = parcel.readString();
    }

    public zzmm(String str, String str2, String str3) {
        super(str);
        this.f28634b = null;
        this.f28635c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzmm.class != obj.getClass()) {
            return false;
        }
        zzmm zzmmVar = (zzmm) obj;
        return this.f28633a.equals(zzmmVar.f28633a) && zzpq.m11624a(this.f28634b, zzmmVar.f28634b) && zzpq.m11624a(this.f28635c, zzmmVar.f28635c);
    }

    public final int hashCode() {
        int hashCode = this.f28633a.hashCode();
        String str = this.f28634b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f28635c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f28633a);
        parcel.writeString(this.f28634b);
        parcel.writeString(this.f28635c);
    }
}
