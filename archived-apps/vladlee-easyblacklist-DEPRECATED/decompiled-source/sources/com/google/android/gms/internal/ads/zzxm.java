package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdData;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxm.class */
public final class zzxm {

    /* renamed from: g */
    private Date f15651g;

    /* renamed from: h */
    private String f15652h;

    /* renamed from: k */
    private Location f15655k;

    /* renamed from: m */
    private String f15657m;

    /* renamed from: n */
    private String f15658n;

    /* renamed from: p */
    private boolean f15660p;

    /* renamed from: q */
    private AdData f15661q;

    /* renamed from: s */
    private String f15663s;

    /* renamed from: a */
    private final HashSet<String> f15645a = new HashSet<>();

    /* renamed from: b */
    private final Bundle f15646b = new Bundle();

    /* renamed from: c */
    private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> f15647c = new HashMap<>();

    /* renamed from: d */
    private final HashSet<String> f15648d = new HashSet<>();

    /* renamed from: e */
    private final Bundle f15649e = new Bundle();

    /* renamed from: f */
    private final HashSet<String> f15650f = new HashSet<>();

    /* renamed from: i */
    private final List<String> f15653i = new ArrayList();

    /* renamed from: j */
    private int f15654j = -1;

    /* renamed from: l */
    private boolean f15656l = false;

    /* renamed from: o */
    private int f15659o = -1;

    /* renamed from: r */
    private int f15662r = -1;

    public final void setManualImpressionsEnabled(boolean z) {
        this.f15656l = z;
    }

    public final void zza(Location location) {
        this.f15655k = location;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public final void zza(NetworkExtras networkExtras) {
        if (networkExtras instanceof AdMobExtras) {
            zza(AdMobAdapter.class, ((AdMobExtras) networkExtras).getExtras());
        } else {
            this.f15647c.put(networkExtras.getClass(), networkExtras);
        }
    }

    public final void zza(AdData adData) {
        this.f15661q = adData;
    }

    public final void zza(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
        this.f15646b.putBundle(cls.getName(), bundle);
    }

    @Deprecated
    public final void zza(Date date) {
        this.f15651g = date;
    }

    @Deprecated
    public final void zzaa(boolean z) {
        this.f15660p = z;
    }

    public final void zzb(Class<? extends CustomEvent> cls, Bundle bundle) {
        if (this.f15646b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            this.f15646b.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        this.f15646b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(cls.getName(), bundle);
    }

    public final void zzcf(String str) {
        this.f15645a.add(str);
    }

    public final void zzcg(String str) {
        this.f15648d.add(str);
    }

    public final void zzch(String str) {
        this.f15648d.remove(str);
    }

    public final void zzci(String str) {
        this.f15652h = str;
    }

    public final void zzcj(String str) {
        this.f15657m = str;
    }

    public final void zzck(String str) {
        this.f15658n = str;
    }

    @Deprecated
    public final void zzcl(int i) {
        this.f15654j = i;
    }

    public final void zzcl(String str) {
        this.f15650f.add(str);
    }

    @Deprecated
    public final void zzcm(int i) {
        if (i == -1 || i == 0 || i == 1) {
            this.f15662r = i;
        }
    }

    @Deprecated
    public final void zzcm(String str) {
        if ("G".equals(str) || "PG".equals(str) || "T".equals(str) || "MA".equals(str)) {
            this.f15663s = str;
        }
    }

    public final void zze(String str, String str2) {
        this.f15649e.putString(str, str2);
    }

    @Deprecated
    public final void zzz(boolean z) {
        this.f15659o = z ? 1 : 0;
    }
}
