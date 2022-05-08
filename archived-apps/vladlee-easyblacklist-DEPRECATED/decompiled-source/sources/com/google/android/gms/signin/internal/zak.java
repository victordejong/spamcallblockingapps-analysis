package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zak.class */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new zaj();

    /* renamed from: a */
    private final int f17341a;

    /* renamed from: b */
    private final ConnectionResult f17342b;

    /* renamed from: c */
    private final ResolveAccountResponse f17343c;

    public zak(int i) {
        this(new ConnectionResult(8, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zak(int i, ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this.f17341a = i;
        this.f17342b = connectionResult;
        this.f17343c = resolveAccountResponse;
    }

    private zak(ConnectionResult connectionResult) {
        this(1, connectionResult, null);
    }

    public final ConnectionResult getConnectionResult() {
        return this.f17342b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f17341a);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f17342b, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f17343c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final ResolveAccountResponse zacv() {
        return this.f17343c;
    }
}
