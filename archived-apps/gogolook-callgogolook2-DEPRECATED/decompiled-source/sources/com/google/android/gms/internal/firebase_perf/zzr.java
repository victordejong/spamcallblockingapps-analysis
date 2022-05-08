package com.google.android.gms.internal.firebase_perf;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.UUID;
import p081h.p203i.p204a.p224e.p259j.p269j.C7789d6;
import p081h.p203i.p204a.p224e.p259j.p269j.C7910s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzr.class */
public class zzr implements Parcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new C7789d6();

    /* renamed from: a */
    public String f6822a;

    /* renamed from: b */
    public boolean f6823b;

    public zzr(@NonNull Parcel parcel) {
        boolean z = false;
        this.f6823b = false;
        this.f6822a = parcel.readString();
        this.f6823b = parcel.readByte() != 0 ? true : z;
    }

    public /* synthetic */ zzr(Parcel parcel, C7789d6 d6Var) {
        this(parcel);
    }

    @VisibleForTesting
    public zzr(String str) {
        this.f6823b = false;
        this.f6822a = str;
    }

    /* renamed from: c */
    public static com.google.android.gms.internal.firebase-perf.zzr m31837c() {
        String replaceAll = UUID.randomUUID().toString().replaceAll("\\-", "");
        new zzr(replaceAll).f6823b = false;
        return new zzr(replaceAll);
    }

    /* renamed from: a */
    public final String m31839a() {
        return this.f6822a;
    }

    /* renamed from: b */
    public final C7910s m31838b() {
        C7910s sVar = new C7910s();
        sVar.f18539c = this.f6822a;
        ArrayList arrayList = new ArrayList();
        if (this.f6823b) {
            arrayList.add(1);
        }
        if (arrayList.size() == 0) {
            arrayList.add(0);
        }
        int[] iArr = new int[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            iArr[i] = ((Integer) arrayList.get(i)).intValue();
        }
        sVar.f18540d = iArr;
        return sVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeString(this.f6822a);
        parcel.writeByte(this.f6823b ? (byte) 1 : (byte) 0);
    }
}
