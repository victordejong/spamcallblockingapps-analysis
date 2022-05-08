package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/b.class */
public final class b implements Parcelable.Creator<Flag> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Flag flag, Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, flag.f4244a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, flag.f4245b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, flag.c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, flag.d);
        double d = flag.e;
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, 8);
        parcel.writeDouble(d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, flag.f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, flag.g);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 8, flag.h);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 9, flag.i);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Flag createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        long j = 0;
        double d = 0.0d;
        int i = 0;
        int i2 = 0;
        byte[] bArr = null;
        String str = null;
        boolean z = false;
        String str2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i3 = a.d(parcel, readInt);
                    break;
                case 2:
                    str2 = a.k(parcel, readInt);
                    break;
                case 3:
                    j = a.f(parcel, readInt);
                    break;
                case 4:
                    z = a.c(parcel, readInt);
                    break;
                case 5:
                    d = a.i(parcel, readInt);
                    break;
                case 6:
                    str = a.k(parcel, readInt);
                    break;
                case 7:
                    bArr = a.n(parcel, readInt);
                    break;
                case 8:
                    i2 = a.d(parcel, readInt);
                    break;
                case 9:
                    i = a.d(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new Flag(i3, str2, j, z, d, str, bArr, i2, i);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Flag[] newArray(int i) {
        return new Flag[i];
    }
}
