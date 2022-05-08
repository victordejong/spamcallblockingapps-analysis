package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.gcm.Task;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/OneoffTask.class */
public class OneoffTask extends Task {
    public static final Parcelable.Creator<OneoffTask> CREATOR = new zzi();

    /* renamed from: j */
    private final long f7735j;

    /* renamed from: k */
    private final long f7736k;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/OneoffTask$Builder.class */
    public static class Builder extends Task.Builder {
    }

    @Deprecated
    private OneoffTask(Parcel parcel) {
        super(parcel);
        this.f7735j = parcel.readLong();
        this.f7736k = parcel.readLong();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ OneoffTask(Parcel parcel, zzi zziVar) {
        this(parcel);
    }

    /* renamed from: a */
    public long m14174a() {
        return this.f7736k;
    }

    /* renamed from: b */
    public long m14173b() {
        return this.f7735j;
    }

    public String toString() {
        String obj = super.toString();
        long b = m14173b();
        long a = m14174a();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 64);
        sb.append(obj);
        sb.append(" windowStart=");
        sb.append(b);
        sb.append(" windowEnd=");
        sb.append(a);
        return sb.toString();
    }

    @Override // com.google.android.gms.gcm.Task, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.f7735j);
        parcel.writeLong(this.f7736k);
    }
}
