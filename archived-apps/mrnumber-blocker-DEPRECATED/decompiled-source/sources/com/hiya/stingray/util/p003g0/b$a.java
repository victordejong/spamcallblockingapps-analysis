package com.hiya.stingray.util.p003g0;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.hiya.stingray.util.g0.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/g0/b$a.class */
final class b$a implements Parcelable.Creator<b> {
    b$a() {
    }

    /* renamed from: a */
    public b createFromParcel(Parcel parcel) {
        return new b(parcel.readBundle(Bundle.class.getClassLoader()));
    }

    /* renamed from: b */
    public b[] newArray(int i) {
        return new b[i];
    }
}
