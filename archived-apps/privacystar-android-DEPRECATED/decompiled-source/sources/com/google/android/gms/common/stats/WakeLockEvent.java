package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class(creator = "WakeLockEventCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zza();
    @SafeParcelable.Field(getter = "getTimeout", m344id = 16)
    private final long mTimeout;
    @SafeParcelable.Field(getter = "getTimeMillis", m344id = 2)
    private final long zzfo;
    @SafeParcelable.Field(getter = "getEventType", m344id = 11)
    private int zzfp;
    @SafeParcelable.Field(getter = "getWakeLockName", m344id = 4)
    private final String zzfq;
    @SafeParcelable.Field(getter = "getSecondaryWakeLockName", m344id = 10)
    private final String zzfr;
    @SafeParcelable.Field(getter = "getCodePackage", m344id = 17)
    private final String zzfs;
    @SafeParcelable.Field(getter = "getWakeLockType", m344id = 5)
    private final int zzft;
    @SafeParcelable.Field(getter = "getCallingPackages", m344id = 6)
    private final List<String> zzfu;
    @SafeParcelable.Field(getter = "getEventKey", m344id = 12)
    private final String zzfv;
    @SafeParcelable.Field(getter = "getElapsedRealtime", m344id = 8)
    private final long zzfw;
    @SafeParcelable.Field(getter = "getDeviceState", m344id = 14)
    private int zzfx;
    @SafeParcelable.Field(getter = "getHostPackage", m344id = 13)
    private final String zzfy;
    @SafeParcelable.Field(getter = "getBeginPowerPercentage", m344id = 15)
    private final float zzfz;
    @SafeParcelable.VersionField(m342id = 1)
    private final int zzg;
    private long zzga;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public WakeLockEvent(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) long j, @SafeParcelable.Param(m343id = 11) int i2, @SafeParcelable.Param(m343id = 4) String str, @SafeParcelable.Param(m343id = 5) int i3, @SafeParcelable.Param(m343id = 6) List<String> list, @SafeParcelable.Param(m343id = 12) String str2, @SafeParcelable.Param(m343id = 8) long j2, @SafeParcelable.Param(m343id = 14) int i4, @SafeParcelable.Param(m343id = 10) String str3, @SafeParcelable.Param(m343id = 13) String str4, @SafeParcelable.Param(m343id = 15) float f, @SafeParcelable.Param(m343id = 16) long j3, @SafeParcelable.Param(m343id = 17) String str5) {
        this.zzg = i;
        this.zzfo = j;
        this.zzfp = i2;
        this.zzfq = str;
        this.zzfr = str3;
        this.zzfs = str5;
        this.zzft = i3;
        this.zzga = -1L;
        this.zzfu = list;
        this.zzfv = str2;
        this.zzfw = j2;
        this.zzfx = i4;
        this.zzfy = str4;
        this.zzfz = f;
        this.mTimeout = j3;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int getEventType() {
        return this.zzfp;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long getTimeMillis() {
        return this.zzfo;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzg);
        SafeParcelWriter.writeLong(parcel, 2, getTimeMillis());
        SafeParcelWriter.writeString(parcel, 4, this.zzfq, false);
        SafeParcelWriter.writeInt(parcel, 5, this.zzft);
        SafeParcelWriter.writeStringList(parcel, 6, this.zzfu, false);
        SafeParcelWriter.writeLong(parcel, 8, this.zzfw);
        SafeParcelWriter.writeString(parcel, 10, this.zzfr, false);
        SafeParcelWriter.writeInt(parcel, 11, getEventType());
        SafeParcelWriter.writeString(parcel, 12, this.zzfv, false);
        SafeParcelWriter.writeString(parcel, 13, this.zzfy, false);
        SafeParcelWriter.writeInt(parcel, 14, this.zzfx);
        SafeParcelWriter.writeFloat(parcel, 15, this.zzfz);
        SafeParcelWriter.writeLong(parcel, 16, this.mTimeout);
        SafeParcelWriter.writeString(parcel, 17, this.zzfs, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzu() {
        return this.zzga;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String zzv() {
        String str = this.zzfq;
        int i = this.zzft;
        String join = this.zzfu == null ? "" : TextUtils.join(",", this.zzfu);
        int i2 = this.zzfx;
        String str2 = this.zzfr == null ? "" : this.zzfr;
        String str3 = this.zzfy == null ? "" : this.zzfy;
        float f = this.zzfz;
        String str4 = this.zzfs == null ? "" : this.zzfs;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 45 + String.valueOf(join).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i);
        sb.append("\t");
        sb.append(join);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(str3);
        sb.append("\t");
        sb.append(f);
        sb.append("\t");
        sb.append(str4);
        return sb.toString();
    }
}
