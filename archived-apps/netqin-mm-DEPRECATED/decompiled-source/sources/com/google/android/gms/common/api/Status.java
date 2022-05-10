package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Status.class */
public final class Status extends AbstractSafeParcelable implements Result, ReflectedParcelable {
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23080a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f23081b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f23082c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final PendingIntent f23083d;
    @ShowFirstParty
    @VisibleForTesting
    @KeepForSdk

    /* renamed from: e */
    public static final Status f23076e = new Status(0);
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: f */
    public static final Status f23077f = new Status(8);
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: g */
    public static final Status f23078g = new Status(15);
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: h */
    public static final Status f23079h = new Status(16);
    public static final Parcelable.Creator<Status> CREATOR = new zzb();

    static {
        new Status(14);
        new Status(17);
        new Status(18);
    }

    @KeepForSdk
    public Status(int i) {
        this(i, null);
    }

    @SafeParcelable.Constructor
    @KeepForSdk
    public Status(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) PendingIntent pendingIntent) {
        this.f23080a = i;
        this.f23081b = i2;
        this.f23082c = str;
        this.f23083d = pendingIntent;
    }

    @KeepForSdk
    public Status(int i, String str) {
        this(1, i, str, null);
    }

    @KeepForSdk
    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    /* renamed from: a */
    public final void m17745a(Activity activity, int i) throws IntentSender.SendIntentException {
        if (m17741v()) {
            PendingIntent pendingIntent = this.f23083d;
            Preconditions.m17288a(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    @Override // com.google.android.gms.common.api.Result
    @KeepForSdk
    /* renamed from: d */
    public final Status mo8632d() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f23080a == status.f23080a && this.f23081b == status.f23081b && Objects.m17295a(this.f23082c, status.f23082c) && Objects.m17295a(this.f23083d, status.f23083d);
    }

    /* renamed from: f */
    public final PendingIntent m17744f() {
        return this.f23083d;
    }

    public final int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f23080a), Integer.valueOf(this.f23081b), this.f23082c, this.f23083d);
    }

    /* renamed from: i */
    public final int m17743i() {
        return this.f23081b;
    }

    public final String toString() {
        Objects.ToStringHelper a = Objects.m17296a(this);
        a.m17293a("statusCode", zza());
        a.m17293a("resolution", this.f23083d);
        return a.toString();
    }

    /* renamed from: u */
    public final String m17742u() {
        return this.f23082c;
    }

    @VisibleForTesting
    /* renamed from: v */
    public final boolean m17741v() {
        return this.f23083d != null;
    }

    @Override // android.os.Parcelable
    @KeepForSdk
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, m17743i());
        SafeParcelWriter.m17221a(parcel, 2, m17742u(), false);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) this.f23083d, i, false);
        SafeParcelWriter.m17231a(parcel, 1000, this.f23080a);
        SafeParcelWriter.m17234a(parcel, a);
    }

    /* renamed from: y */
    public final boolean m17740y() {
        return this.f23081b <= 0;
    }

    public final String zza() {
        String str = this.f23082c;
        return str != null ? str : CommonStatusCodes.m17777a(this.f23081b);
    }
}
