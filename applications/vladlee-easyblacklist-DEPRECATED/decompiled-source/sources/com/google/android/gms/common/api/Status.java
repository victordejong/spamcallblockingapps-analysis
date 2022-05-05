package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Status.class */
public final class Status extends AbstractSafeParcelable implements Result, ReflectedParcelable {

    /* renamed from: b */
    private final int f6227b;

    /* renamed from: c */
    private final int f6228c;

    /* renamed from: d */
    private final String f6229d;

    /* renamed from: e */
    private final PendingIntent f6230e;
    public static final Status RESULT_SUCCESS = new Status(0);
    public static final Status RESULT_INTERRUPTED = new Status(14);
    public static final Status RESULT_INTERNAL_ERROR = new Status(8);
    public static final Status RESULT_TIMEOUT = new Status(15);
    public static final Status RESULT_CANCELED = new Status(16);

    /* renamed from: a */
    private static final Status f6226a = new Status(17);
    public static final Status RESULT_DEAD_CLIENT = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new zzb();

    public Status(int i) {
        this(i, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.f6227b = i;
        this.f6228c = i2;
        this.f6229d = str;
        this.f6230e = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f6227b == status.f6227b && this.f6228c == status.f6228c && Objects.equal(this.f6229d, status.f6229d) && Objects.equal(this.f6230e, status.f6230e);
    }

    public final PendingIntent getResolution() {
        return this.f6230e;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this;
    }

    public final int getStatusCode() {
        return this.f6228c;
    }

    public final String getStatusMessage() {
        return this.f6229d;
    }

    public final boolean hasResolution() {
        return this.f6230e != null;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f6227b), Integer.valueOf(this.f6228c), this.f6229d, this.f6230e);
    }

    public final boolean isCanceled() {
        return this.f6228c == 16;
    }

    public final boolean isInterrupted() {
        return this.f6228c == 14;
    }

    public final boolean isSuccess() {
        return this.f6228c <= 0;
    }

    public final void startResolutionForResult(Activity activity, int i) {
        if (hasResolution()) {
            activity.startIntentSenderForResult(this.f6230e.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("statusCode", zzg()).add("resolution", this.f6230e).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getStatusCode());
        SafeParcelWriter.writeString(parcel, 2, getStatusMessage(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f6230e, i, false);
        SafeParcelWriter.writeInt(parcel, 1000, this.f6227b);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final String zzg() {
        String str = this.f6229d;
        return str != null ? str : CommonStatusCodes.getStatusCodeString(this.f6228c);
    }
}
