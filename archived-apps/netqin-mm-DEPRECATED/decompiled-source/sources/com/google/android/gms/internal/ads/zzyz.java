package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.query.AdInfo;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyz.class */
public final class zzyz {

    /* renamed from: g */
    public Date f29133g;

    /* renamed from: h */
    public String f29134h;

    /* renamed from: k */
    public Location f29137k;

    /* renamed from: m */
    public String f29139m;

    /* renamed from: n */
    public String f29140n;

    /* renamed from: p */
    public boolean f29142p;

    /* renamed from: q */
    public AdInfo f29143q;

    /* renamed from: s */
    public String f29145s;

    /* renamed from: a */
    public final HashSet<String> f29127a = new HashSet<>();

    /* renamed from: b */
    public final Bundle f29128b = new Bundle();

    /* renamed from: c */
    public final HashMap<Class<? extends NetworkExtras>, NetworkExtras> f29129c = new HashMap<>();

    /* renamed from: d */
    public final HashSet<String> f29130d = new HashSet<>();

    /* renamed from: e */
    public final Bundle f29131e = new Bundle();

    /* renamed from: f */
    public final HashSet<String> f29132f = new HashSet<>();

    /* renamed from: i */
    public final List<String> f29135i = new ArrayList();

    /* renamed from: j */
    public int f29136j = -1;

    /* renamed from: l */
    public boolean f29138l = false;

    /* renamed from: o */
    public int f29141o = -1;

    /* renamed from: r */
    public int f29144r = -1;

    @Deprecated
    /* renamed from: a */
    public final void m11045a(int i) {
        this.f29136j = i;
    }

    /* renamed from: a */
    public final void m11044a(Location location) {
        this.f29137k = location;
    }

    /* renamed from: a */
    public final void m11042a(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
        this.f29128b.putBundle(cls.getName(), bundle);
    }

    /* renamed from: a */
    public final void m11041a(String str) {
        this.f29127a.add(str);
    }

    @Deprecated
    /* renamed from: a */
    public final void m11040a(Date date) {
        this.f29133g = date;
    }

    @Deprecated
    /* renamed from: a */
    public final void m11039a(boolean z) {
        this.f29142p = z;
    }

    /* renamed from: b */
    public final void m11037b(String str) {
        this.f29130d.add(str);
    }

    @Deprecated
    /* renamed from: b */
    public final void m11036b(boolean z) {
        this.f29141o = z ? 1 : 0;
    }

    /* renamed from: c */
    public final void m11034c(String str) {
        this.f29130d.remove(str);
    }
}
