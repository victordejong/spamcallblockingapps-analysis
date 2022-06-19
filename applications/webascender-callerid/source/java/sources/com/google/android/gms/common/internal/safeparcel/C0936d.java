package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.util.C0962c;
/* renamed from: com.google.android.gms.common.internal.safeparcel.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/d.class */
public final class C0936d {
    /* renamed from: a */
    public static <T extends AbstractC0935c> T m3249a(byte[] bArr, Parcelable.Creator<T> creator) {
        C0931r.m3308k(creator);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        T createFromParcel = creator.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    /* renamed from: b */
    public static <T extends AbstractC0935c> T m3248b(Intent intent, String str, Parcelable.Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        if (byteArrayExtra == null) {
            return null;
        }
        return (T) m3249a(byteArrayExtra, creator);
    }

    /* renamed from: c */
    public static <T extends AbstractC0935c> T m3247c(String str, Parcelable.Creator<T> creator) {
        return (T) m3249a(C0962c.m3174a(str), creator);
    }

    /* renamed from: d */
    public static <T extends AbstractC0935c> byte[] m3246d(T t) {
        Parcel obtain = Parcel.obtain();
        t.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    /* renamed from: e */
    public static <T extends AbstractC0935c> void m3245e(T t, Intent intent, String str) {
        intent.putExtra(str, m3246d(t));
    }

    /* renamed from: f */
    public static <T extends AbstractC0935c> String m3244f(T t) {
        return C0962c.m3171d(m3246d(t));
    }
}
