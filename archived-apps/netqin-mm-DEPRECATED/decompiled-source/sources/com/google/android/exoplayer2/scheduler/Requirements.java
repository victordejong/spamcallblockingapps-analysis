package com.google.android.exoplayer2.scheduler;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/Requirements.class */
public final class Requirements implements Parcelable {
    public static final Parcelable.Creator<Requirements> CREATOR = new C7170a();

    /* renamed from: a */
    public final int f22256a;

    /* renamed from: com.google.android.exoplayer2.scheduler.Requirements$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/Requirements$a.class */
    public static final class C7170a implements Parcelable.Creator<Requirements> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Requirements createFromParcel(Parcel parcel) {
            return new Requirements(parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Requirements[] newArray(int i) {
            return new Requirements[i];
        }
    }

    public Requirements(int i) {
        this.f22256a = (i & 2) != 0 ? i | 1 : i;
    }

    /* renamed from: a */
    public static boolean m18490a(ConnectivityManager connectivityManager) {
        if (C2885h0.f10477a < 23) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        boolean z = false;
        if (activeNetwork == null) {
            return false;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
        if (networkCapabilities == null || !networkCapabilities.hasCapability(16)) {
            z = true;
        }
        return !z;
    }

    /* renamed from: a */
    public boolean m18492a() {
        return (this.f22256a & 8) != 0;
    }

    /* renamed from: a */
    public boolean m18491a(Context context) {
        return m18486c(context) == 0;
    }

    /* renamed from: b */
    public final int m18488b(Context context) {
        if (!m18487c()) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        C2877e.m28737a(connectivityManager);
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || !m18490a(connectivityManager)) ? this.f22256a & 3 : (!m18485d() || !connectivityManager.isActiveNetworkMetered()) ? 0 : 2;
    }

    /* renamed from: b */
    public boolean m18489b() {
        return (this.f22256a & 4) != 0;
    }

    /* renamed from: c */
    public int m18486c(Context context) {
        int b = m18488b(context);
        int i = b;
        if (m18492a()) {
            i = b;
            if (!m18484d(context)) {
                i = b | 8;
            }
        }
        int i2 = i;
        if (m18489b()) {
            i2 = i;
            if (!m18483e(context)) {
                i2 = i | 4;
            }
        }
        return i2;
    }

    /* renamed from: c */
    public boolean m18487c() {
        boolean z = true;
        if ((this.f22256a & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m18485d() {
        return (this.f22256a & 2) != 0;
    }

    /* renamed from: d */
    public final boolean m18484d(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            return false;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final boolean m18483e(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        int i = C2885h0.f10477a;
        boolean z = true;
        if (i >= 23) {
            z = powerManager.isDeviceIdleMode();
        } else if (i < 20 ? powerManager.isScreenOn() : powerManager.isInteractive()) {
            z = false;
        }
        return z;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Requirements.class != obj.getClass()) {
            return false;
        }
        if (this.f22256a != ((Requirements) obj).f22256a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f22256a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f22256a);
    }
}
