package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcul.class */
public final class zzcul implements zzcub<zzcui> {

    /* renamed from: a */
    private final zzdhd f13915a;

    /* renamed from: b */
    private final Context f13916b;

    public zzcul(zzdhd zzdhdVar, Context context) {
        this.f13915a = zzdhdVar;
        this.f13916b = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcui m3688a() {
        int i;
        boolean z;
        TelephonyManager telephonyManager = (TelephonyManager) this.f13916b.getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        int networkType = telephonyManager.getNetworkType();
        int phoneType = telephonyManager.getPhoneType();
        zzq.zzkq();
        int i2 = -1;
        if (zzawb.zzq(this.f13916b, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f13916b.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                i2 = activeNetworkInfo.getType();
                i = activeNetworkInfo.getDetailedState().ordinal();
            } else {
                i = -1;
            }
            z = Build.VERSION.SDK_INT >= 16 ? connectivityManager.isActiveNetworkMetered() : false;
        } else {
            i = -1;
            z = false;
            i2 = -2;
        }
        return new zzcui(networkOperator, i2, networkType, phoneType, z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcui> zzanc() {
        return this.f13915a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.xe

            /* renamed from: a */
            private final zzcul f10683a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10683a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10683a.m3688a();
            }
        });
    }
}
