package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/c.class */
public final class c implements Parcelable.Creator<LogEventParcelable> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(LogEventParcelable logEventParcelable, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, logEventParcelable.f3918a);
        b.a(parcel, 2, logEventParcelable.f3919b, i);
        b.a(parcel, 3, logEventParcelable.c);
        int[] iArr = logEventParcelable.d;
        if (iArr != null) {
            int a3 = b.a(parcel, 4);
            parcel.writeIntArray(iArr);
            b.b(parcel, a3);
        }
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LogEventParcelable createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        int[] iArr = null;
        byte[] bArr = null;
        PlayLoggerContext playLoggerContext = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    playLoggerContext = (PlayLoggerContext) a.a(parcel, readInt, PlayLoggerContext.CREATOR);
                    break;
                case 3:
                    bArr = a.n(parcel, readInt);
                    break;
                case 4:
                    iArr = a.o(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new LogEventParcelable(i, playLoggerContext, bArr, iArr);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LogEventParcelable[] newArray(int i) {
        return new LogEventParcelable[i];
    }
}
