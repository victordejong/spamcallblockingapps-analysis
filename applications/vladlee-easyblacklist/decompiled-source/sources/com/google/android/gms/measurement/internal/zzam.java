package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzam.class */
public final class zzam extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzam> CREATOR = new zzao();

    /* renamed from: a */
    private final Bundle f17106a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzam(Bundle bundle) {
        this.f17106a = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Object m1993a(String str) {
        return this.f17106a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Long m1992b(String str) {
        return Long.valueOf(this.f17106a.getLong(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final Double m1991c(String str) {
        return Double.valueOf(this.f17106a.getDouble(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m1990d(String str) {
        return this.f17106a.getString(str);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new C2854i(this);
    }

    public final String toString() {
        return this.f17106a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, zzb(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zza() {
        return this.f17106a.size();
    }

    public final Bundle zzb() {
        return new Bundle(this.f17106a);
    }
}
