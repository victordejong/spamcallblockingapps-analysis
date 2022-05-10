package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyw.class */
public final class zzyw {

    /* renamed from: a */
    public final Date f29092a;

    /* renamed from: b */
    public final String f29093b;

    /* renamed from: c */
    public final List<String> f29094c;

    /* renamed from: d */
    public final int f29095d;

    /* renamed from: e */
    public final Set<String> f29096e;

    /* renamed from: f */
    public final Location f29097f;

    /* renamed from: g */
    public final boolean f29098g;

    /* renamed from: h */
    public final Bundle f29099h;

    /* renamed from: i */
    public final Map<Class<? extends NetworkExtras>, NetworkExtras> f29100i;

    /* renamed from: j */
    public final String f29101j;

    /* renamed from: k */
    public final String f29102k;

    /* renamed from: l */
    public final SearchAdRequest f29103l;

    /* renamed from: m */
    public final int f29104m;

    /* renamed from: n */
    public final Set<String> f29105n;

    /* renamed from: o */
    public final Bundle f29106o;

    /* renamed from: p */
    public final Set<String> f29107p;

    /* renamed from: q */
    public final boolean f29108q;

    /* renamed from: r */
    public final AdInfo f29109r;

    /* renamed from: s */
    public final int f29110s;

    /* renamed from: t */
    public final String f29111t;

    public zzyw(zzyz zzyzVar) {
        this(zzyzVar, null);
    }

    public zzyw(zzyz zzyzVar, SearchAdRequest searchAdRequest) {
        Date date;
        String str;
        List<String> list;
        int i;
        HashSet hashSet;
        Location location;
        boolean z;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i2;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z2;
        AdInfo adInfo;
        int i3;
        String str4;
        date = zzyzVar.f29133g;
        this.f29092a = date;
        str = zzyzVar.f29134h;
        this.f29093b = str;
        list = zzyzVar.f29135i;
        this.f29094c = list;
        i = zzyzVar.f29136j;
        this.f29095d = i;
        hashSet = zzyzVar.f29127a;
        this.f29096e = Collections.unmodifiableSet(hashSet);
        location = zzyzVar.f29137k;
        this.f29097f = location;
        z = zzyzVar.f29138l;
        this.f29098g = z;
        bundle = zzyzVar.f29128b;
        this.f29099h = bundle;
        hashMap = zzyzVar.f29129c;
        this.f29100i = Collections.unmodifiableMap(hashMap);
        str2 = zzyzVar.f29139m;
        this.f29101j = str2;
        str3 = zzyzVar.f29140n;
        this.f29102k = str3;
        this.f29103l = searchAdRequest;
        i2 = zzyzVar.f29141o;
        this.f29104m = i2;
        hashSet2 = zzyzVar.f29130d;
        this.f29105n = Collections.unmodifiableSet(hashSet2);
        bundle2 = zzyzVar.f29131e;
        this.f29106o = bundle2;
        hashSet3 = zzyzVar.f29132f;
        this.f29107p = Collections.unmodifiableSet(hashSet3);
        z2 = zzyzVar.f29142p;
        this.f29108q = z2;
        adInfo = zzyzVar.f29143q;
        this.f29109r = adInfo;
        i3 = zzyzVar.f29144r;
        this.f29110s = i3;
        str4 = zzyzVar.f29145s;
        this.f29111t = str4;
    }

    /* renamed from: a */
    public final Bundle m11093a(Class<? extends MediationExtrasReceiver> cls) {
        return this.f29099h.getBundle(cls.getName());
    }

    @Deprecated
    /* renamed from: a */
    public final Date m11095a() {
        return this.f29092a;
    }

    /* renamed from: a */
    public final boolean m11094a(Context context) {
        RequestConfiguration b = zzzd.m10991d().m10995b();
        zzwm.m11170a();
        String a = zzbbg.m15911a(context);
        return this.f29105n.contains(a) || b.m18096d().contains(a);
    }

    /* renamed from: b */
    public final String m11092b() {
        return this.f29093b;
    }

    /* renamed from: c */
    public final Bundle m11091c() {
        return this.f29106o;
    }

    @Deprecated
    /* renamed from: d */
    public final int m11090d() {
        return this.f29095d;
    }

    /* renamed from: e */
    public final Set<String> m11089e() {
        return this.f29096e;
    }

    /* renamed from: f */
    public final Location m11088f() {
        return this.f29097f;
    }

    /* renamed from: g */
    public final boolean m11087g() {
        return this.f29098g;
    }

    /* renamed from: h */
    public final String m11086h() {
        return this.f29111t;
    }

    /* renamed from: i */
    public final String m11085i() {
        return this.f29101j;
    }

    @Deprecated
    /* renamed from: j */
    public final boolean m11084j() {
        return this.f29108q;
    }

    /* renamed from: k */
    public final List<String> m11083k() {
        return new ArrayList(this.f29094c);
    }

    /* renamed from: l */
    public final String m11082l() {
        return this.f29102k;
    }

    /* renamed from: m */
    public final SearchAdRequest m11081m() {
        return this.f29103l;
    }

    /* renamed from: n */
    public final Map<Class<? extends NetworkExtras>, NetworkExtras> m11080n() {
        return this.f29100i;
    }

    /* renamed from: o */
    public final Bundle m11079o() {
        return this.f29099h;
    }

    /* renamed from: p */
    public final int m11078p() {
        return this.f29104m;
    }

    /* renamed from: q */
    public final Set<String> m11077q() {
        return this.f29107p;
    }

    /* renamed from: r */
    public final AdInfo m11076r() {
        return this.f29109r;
    }

    /* renamed from: s */
    public final int m11075s() {
        return this.f29110s;
    }
}
