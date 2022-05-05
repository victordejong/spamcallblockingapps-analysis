package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zab.class */
public final class zab extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zab> CREATOR = new zaa();

    /* renamed from: a */
    private final int f17336a;

    /* renamed from: b */
    private int f17337b;

    /* renamed from: c */
    private Intent f17338c;

    public zab() {
        this((byte) 0);
    }

    private zab(byte b) {
        this(2, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zab(int i, int i2, Intent intent) {
        this.f17336a = i;
        this.f17337b = i2;
        this.f17338c = intent;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f17337b == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f17336a);
        SafeParcelWriter.writeInt(parcel, 2, this.f17337b);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f17338c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
