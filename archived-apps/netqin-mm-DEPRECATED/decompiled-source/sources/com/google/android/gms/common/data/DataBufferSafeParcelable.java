package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferSafeParcelable.class */
public class DataBufferSafeParcelable<T extends SafeParcelable> extends AbstractDataBuffer<T> {

    /* renamed from: b */
    public final Parcelable.Creator<T> f23321b;

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public T get(int i) {
        DataHolder dataHolder = this.f23310a;
        Preconditions.m17288a(dataHolder);
        DataHolder dataHolder2 = dataHolder;
        byte[] a = dataHolder2.m17428a("data", i, dataHolder2.m17430a(i));
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(a, 0, a.length);
        obtain.setDataPosition(0);
        T createFromParcel = this.f23321b.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }
}
