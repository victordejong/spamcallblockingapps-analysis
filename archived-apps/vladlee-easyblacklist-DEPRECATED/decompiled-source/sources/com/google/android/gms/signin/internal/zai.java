package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zai.class */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new zah();

    /* renamed from: a */
    private final int f17339a;

    /* renamed from: b */
    private final ResolveAccountRequest f17340b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zai(int i, ResolveAccountRequest resolveAccountRequest) {
        this.f17339a = i;
        this.f17340b = resolveAccountRequest;
    }

    public zai(ResolveAccountRequest resolveAccountRequest) {
        this(1, resolveAccountRequest);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f17339a);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f17340b, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
