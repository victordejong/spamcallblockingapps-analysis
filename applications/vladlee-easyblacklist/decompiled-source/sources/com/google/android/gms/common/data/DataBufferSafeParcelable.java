package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferSafeParcelable.class */
public class DataBufferSafeParcelable<T extends SafeParcelable> extends AbstractDataBuffer<T> {

    /* renamed from: b */
    private static final String[] f6610b = {"data"};

    /* renamed from: c */
    private final Parcelable.Creator<T> f6611c;

    public DataBufferSafeParcelable(DataHolder dataHolder, Parcelable.Creator<T> creator) {
        super(dataHolder);
        this.f6611c = creator;
    }

    public static <T extends SafeParcelable> void addValue(DataHolder.Builder builder, T t) {
        Parcel obtain = Parcel.obtain();
        t.writeToParcel(obtain, 0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("data", obtain.marshall());
        builder.withRow(contentValues);
        obtain.recycle();
    }

    public static DataHolder.Builder buildDataHolder() {
        return DataHolder.builder(f6610b);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public T get(int i) {
        byte[] byteArray = this.f6597a.getByteArray("data", i, this.f6597a.getWindowIndex(i));
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(byteArray, 0, byteArray.length);
        obtain.setDataPosition(0);
        T createFromParcel = this.f6611c.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }
}
