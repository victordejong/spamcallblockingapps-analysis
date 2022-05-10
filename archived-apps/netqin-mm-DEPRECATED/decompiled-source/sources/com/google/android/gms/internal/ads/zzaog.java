package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaog.class */
public final class zzaog implements NativeMediationAdRequest {

    /* renamed from: a */
    public final Date f24227a;

    /* renamed from: b */
    public final int f24228b;

    /* renamed from: c */
    public final Set<String> f24229c;

    /* renamed from: d */
    public final boolean f24230d;

    /* renamed from: e */
    public final Location f24231e;

    /* renamed from: f */
    public final int f24232f;

    /* renamed from: g */
    public final zzadu f24233g;

    /* renamed from: i */
    public final boolean f24235i;

    /* renamed from: h */
    public final List<String> f24234h = new ArrayList();

    /* renamed from: j */
    public final Map<String, Boolean> f24236j = new HashMap();

    public zzaog(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzadu zzaduVar, List<String> list, boolean z2, int i3, String str) {
        this.f24227a = date;
        this.f24228b = i;
        this.f24229c = set;
        this.f24231e = location;
        this.f24230d = z;
        this.f24232f = i2;
        this.f24233g = zzaduVar;
        this.f24235i = z2;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.f24236j.put(split[1], true);
                        } else if ("false".equals(split[2])) {
                            this.f24236j.put(split[1], false);
                        }
                    }
                } else {
                    this.f24234h.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    /* renamed from: a */
    public final Map<String, Boolean> mo16535a() {
        return this.f24236j;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    /* renamed from: b */
    public final boolean mo16534b() {
        List<String> list = this.f24234h;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    /* renamed from: c */
    public final int mo16533c() {
        return this.f24232f;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    /* renamed from: d */
    public final boolean mo16532d() {
        List<String> list = this.f24234h;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    /* renamed from: e */
    public final boolean mo16531e() {
        return this.f24235i;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    /* renamed from: f */
    public final boolean mo16530f() {
        List<String> list = this.f24234h;
        if (list != null) {
            return list.contains(InternalAvidAdSessionContext.AVID_API_LEVEL) || this.f24234h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    /* renamed from: g */
    public final Date mo16529g() {
        return this.f24227a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    /* renamed from: h */
    public final Set<String> mo16528h() {
        return this.f24229c;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    /* renamed from: i */
    public final NativeAdOptions mo16527i() {
        zzaak zzaakVar;
        if (this.f24233g == null) {
            return null;
        }
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        builder.m18056b(this.f24233g.f24040b);
        builder.m18058b(this.f24233g.f24041c);
        builder.m18059a(this.f24233g.f24042d);
        zzadu zzaduVar = this.f24233g;
        if (zzaduVar.f24039a >= 2) {
            builder.m18062a(zzaduVar.f24043e);
        }
        zzadu zzaduVar2 = this.f24233g;
        if (zzaduVar2.f24039a >= 3 && (zzaakVar = zzaduVar2.f24044f) != null) {
            builder.m18061a(new VideoOptions(zzaakVar));
        }
        return builder.m18063a();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f24230d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    /* renamed from: j */
    public final Location mo16526j() {
        return this.f24231e;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    /* renamed from: k */
    public final boolean mo16525k() {
        List<String> list = this.f24234h;
        if (list != null) {
            return list.contains("1") || this.f24234h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    /* renamed from: l */
    public final int mo16524l() {
        return this.f24228b;
    }
}
