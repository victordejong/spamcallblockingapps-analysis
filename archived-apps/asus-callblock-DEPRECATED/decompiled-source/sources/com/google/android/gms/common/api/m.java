package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/m.class */
public final class m implements Parcelable.Creator<Scope> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Scope scope, Parcel parcel) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, scope.f3943a);
        b.a(parcel, 2, scope.f3944b);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Scope createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    str = a.k(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new Scope(i, str);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Scope[] newArray(int i) {
        return new Scope[i];
    }
}
