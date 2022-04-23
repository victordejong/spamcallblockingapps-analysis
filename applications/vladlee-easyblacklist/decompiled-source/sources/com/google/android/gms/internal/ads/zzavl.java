package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavl.class */
public final class zzavl {

    /* renamed from: g */
    private final String f11425g;

    /* renamed from: h */
    private final zzavu f11426h;

    /* renamed from: b */
    private long f11420b = -1;

    /* renamed from: c */
    private long f11421c = -1;

    /* renamed from: d */
    private int f11422d = -1;

    /* renamed from: a */
    int f11419a = -1;

    /* renamed from: e */
    private long f11423e = 0;

    /* renamed from: f */
    private final Object f11424f = new Object();

    /* renamed from: i */
    private int f11427i = 0;

    /* renamed from: j */
    private int f11428j = 0;

    public zzavl(String str, zzavu zzavuVar) {
        this.f11425g = str;
        this.f11426h = zzavuVar;
    }

    /* renamed from: a */
    private static boolean m4263a(Context context) {
        Context zzaa = zzarf.zzaa(context);
        int identifier = zzaa.getResources().getIdentifier("Theme.Translucent", "style", AbstractC0007a.ANDROID_CLIENT_TYPE);
        if (identifier == 0) {
            zzavs.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == zzaa.getPackageManager().getActivityInfo(new ComponentName(zzaa.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            zzavs.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            zzavs.zzez("Fail to fetch AdActivity theme");
            zzavs.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzug r7, long r8) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzavl.zza(com.google.android.gms.internal.ads.zzug, long):void");
    }

    public final Bundle zzo(Context context, String str) {
        Bundle bundle;
        synchronized (this.f11424f) {
            bundle = new Bundle();
            bundle.putString("session_id", this.f11425g);
            bundle.putLong("basets", this.f11421c);
            bundle.putLong("currts", this.f11420b);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f11422d);
            bundle.putInt("preqs_in_session", this.f11419a);
            bundle.putLong("time_in_session", this.f11423e);
            bundle.putInt("pclick", this.f11427i);
            bundle.putInt("pimp", this.f11428j);
            bundle.putBoolean("support_transparent_background", m4263a(context));
        }
        return bundle;
    }

    public final void zzuv() {
        synchronized (this.f11424f) {
            this.f11428j++;
        }
    }

    public final void zzuw() {
        synchronized (this.f11424f) {
            this.f11427i++;
        }
    }
}
