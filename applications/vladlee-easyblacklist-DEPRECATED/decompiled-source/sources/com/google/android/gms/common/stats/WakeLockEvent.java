package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zza();

    /* renamed from: a */
    private final int f6946a;

    /* renamed from: b */
    private final long f6947b;

    /* renamed from: c */
    private int f6948c;

    /* renamed from: d */
    private final String f6949d;

    /* renamed from: e */
    private final String f6950e;

    /* renamed from: f */
    private final String f6951f;

    /* renamed from: g */
    private final int f6952g;

    /* renamed from: h */
    private final List<String> f6953h;

    /* renamed from: i */
    private final String f6954i;

    /* renamed from: j */
    private final long f6955j;

    /* renamed from: k */
    private int f6956k;

    /* renamed from: l */
    private final String f6957l;

    /* renamed from: m */
    private final float f6958m;

    /* renamed from: n */
    private final long f6959n;

    /* renamed from: o */
    private final boolean f6960o;

    /* renamed from: p */
    private long f6961p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5, boolean z) {
        this.f6946a = i;
        this.f6947b = j;
        this.f6948c = i2;
        this.f6949d = str;
        this.f6950e = str3;
        this.f6951f = str5;
        this.f6952g = i3;
        this.f6961p = -1L;
        this.f6953h = list;
        this.f6954i = str2;
        this.f6955j = j2;
        this.f6956k = i4;
        this.f6957l = str4;
        this.f6958m = f;
        this.f6959n = j3;
        this.f6960o = z;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5, boolean z) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5, z);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int getEventType() {
        return this.f6948c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long getTimeMillis() {
        return this.f6947b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6946a);
        SafeParcelWriter.writeLong(parcel, 2, getTimeMillis());
        SafeParcelWriter.writeString(parcel, 4, this.f6949d, false);
        SafeParcelWriter.writeInt(parcel, 5, this.f6952g);
        SafeParcelWriter.writeStringList(parcel, 6, this.f6953h, false);
        SafeParcelWriter.writeLong(parcel, 8, this.f6955j);
        SafeParcelWriter.writeString(parcel, 10, this.f6950e, false);
        SafeParcelWriter.writeInt(parcel, 11, getEventType());
        SafeParcelWriter.writeString(parcel, 12, this.f6954i, false);
        SafeParcelWriter.writeString(parcel, 13, this.f6957l, false);
        SafeParcelWriter.writeInt(parcel, 14, this.f6956k);
        SafeParcelWriter.writeFloat(parcel, 15, this.f6958m);
        SafeParcelWriter.writeLong(parcel, 16, this.f6959n);
        SafeParcelWriter.writeString(parcel, 17, this.f6951f, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.f6960o);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzu() {
        return this.f6961p;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String zzv() {
        String str = this.f6949d;
        int i = this.f6952g;
        List<String> list = this.f6953h;
        String str2 = "";
        String join = list == null ? "" : TextUtils.join(",", list);
        int i2 = this.f6956k;
        String str3 = this.f6950e;
        String str4 = str3;
        if (str3 == null) {
            str4 = "";
        }
        String str5 = this.f6957l;
        String str6 = str5;
        if (str5 == null) {
            str6 = "";
        }
        float f = this.f6958m;
        String str7 = this.f6951f;
        if (str7 != null) {
            str2 = str7;
        }
        boolean z = this.f6960o;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(join).length() + String.valueOf(str4).length() + String.valueOf(str6).length() + String.valueOf(str2).length());
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i);
        sb.append("\t");
        sb.append(join);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(str4);
        sb.append("\t");
        sb.append(str6);
        sb.append("\t");
        sb.append(f);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }
}
