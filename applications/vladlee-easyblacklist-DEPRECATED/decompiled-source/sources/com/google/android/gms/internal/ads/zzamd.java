package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamd.class */
public final class zzamd implements NativeMediationAdRequest {

    /* renamed from: a */
    private final Date f11050a;

    /* renamed from: b */
    private final int f11051b;

    /* renamed from: c */
    private final Set<String> f11052c;

    /* renamed from: d */
    private final boolean f11053d;

    /* renamed from: e */
    private final Location f11054e;

    /* renamed from: f */
    private final int f11055f;

    /* renamed from: g */
    private final zzaby f11056g;

    /* renamed from: i */
    private final boolean f11058i;

    /* renamed from: k */
    private final int f11060k;

    /* renamed from: l */
    private final String f11061l;

    /* renamed from: h */
    private final List<String> f11057h = new ArrayList();

    /* renamed from: j */
    private final Map<String, Boolean> f11059j = new HashMap();

    public zzamd(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzaby zzabyVar, List<String> list, boolean z2, int i3, String str) {
        Map<String, Boolean> map;
        String str2;
        Boolean bool;
        this.f11050a = date;
        this.f11051b = i;
        this.f11052c = set;
        this.f11054e = location;
        this.f11053d = z;
        this.f11055f = i2;
        this.f11056g = zzabyVar;
        this.f11058i = z2;
        this.f11060k = i3;
        this.f11061l = str;
        if (list != null) {
            for (String str3 : list) {
                if (str3.startsWith("custom:")) {
                    String[] split = str3.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            map = this.f11059j;
                            str2 = split[1];
                            bool = Boolean.TRUE;
                        } else if ("false".equals(split[2])) {
                            map = this.f11059j;
                            str2 = split[1];
                            bool = Boolean.FALSE;
                        }
                        map.put(str2, bool);
                    }
                } else {
                    this.f11057h.add(str3);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return zzxq.zzpw().zzpe();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.f11050a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.f11051b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.f11052c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.f11054e;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        if (this.f11056g == null) {
            return null;
        }
        NativeAdOptions.Builder requestMultipleImages = new NativeAdOptions.Builder().setReturnUrlsForImageAssets(this.f11056g.zzcvo).setImageOrientation(this.f11056g.zzbjw).setRequestMultipleImages(this.f11056g.zzbjy);
        if (this.f11056g.versionCode >= 2) {
            requestMultipleImages.setAdChoicesPlacement(this.f11056g.zzbjz);
        }
        if (this.f11056g.versionCode >= 3 && this.f11056g.zzcvp != null) {
            requestMultipleImages.setVideoOptions(new VideoOptions(this.f11056g.zzcvp));
        }
        return requestMultipleImages.build();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return zzxq.zzpw().zzpf();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAppInstallAdRequested() {
        List<String> list = this.f11057h;
        if (list != null) {
            return list.contains("2") || this.f11057h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isContentAdRequested() {
        List<String> list = this.f11057h;
        if (list != null) {
            return list.contains("1") || this.f11057h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.f11058i;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f11053d;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        List<String> list = this.f11057h;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f11055f;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzsz() {
        List<String> list = this.f11057h;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zzta() {
        return this.f11059j;
    }
}
