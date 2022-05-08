package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdData;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxj.class */
public final class zzxj {

    /* renamed from: a */
    private final Date f15609a;

    /* renamed from: b */
    private final String f15610b;

    /* renamed from: c */
    private final List<String> f15611c;

    /* renamed from: d */
    private final int f15612d;

    /* renamed from: e */
    private final Set<String> f15613e;

    /* renamed from: f */
    private final Location f15614f;

    /* renamed from: g */
    private final boolean f15615g;

    /* renamed from: h */
    private final Bundle f15616h;

    /* renamed from: i */
    private final Map<Class<? extends NetworkExtras>, NetworkExtras> f15617i;

    /* renamed from: j */
    private final String f15618j;

    /* renamed from: k */
    private final String f15619k;

    /* renamed from: l */
    private final SearchAdRequest f15620l;

    /* renamed from: m */
    private final int f15621m;

    /* renamed from: n */
    private final Set<String> f15622n;

    /* renamed from: o */
    private final Bundle f15623o;

    /* renamed from: p */
    private final Set<String> f15624p;

    /* renamed from: q */
    private final boolean f15625q;

    /* renamed from: r */
    private final AdData f15626r;

    /* renamed from: s */
    private final int f15627s;

    /* renamed from: t */
    private final String f15628t;

    public zzxj(zzxm zzxmVar) {
        this(zzxmVar, null);
    }

    public zzxj(zzxm zzxmVar, SearchAdRequest searchAdRequest) {
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
        AdData adData;
        int i3;
        String str4;
        date = zzxmVar.f15651g;
        this.f15609a = date;
        str = zzxmVar.f15652h;
        this.f15610b = str;
        list = zzxmVar.f15653i;
        this.f15611c = list;
        i = zzxmVar.f15654j;
        this.f15612d = i;
        hashSet = zzxmVar.f15645a;
        this.f15613e = Collections.unmodifiableSet(hashSet);
        location = zzxmVar.f15655k;
        this.f15614f = location;
        z = zzxmVar.f15656l;
        this.f15615g = z;
        bundle = zzxmVar.f15646b;
        this.f15616h = bundle;
        hashMap = zzxmVar.f15647c;
        this.f15617i = Collections.unmodifiableMap(hashMap);
        str2 = zzxmVar.f15657m;
        this.f15618j = str2;
        str3 = zzxmVar.f15658n;
        this.f15619k = str3;
        this.f15620l = searchAdRequest;
        i2 = zzxmVar.f15659o;
        this.f15621m = i2;
        hashSet2 = zzxmVar.f15648d;
        this.f15622n = Collections.unmodifiableSet(hashSet2);
        bundle2 = zzxmVar.f15649e;
        this.f15623o = bundle2;
        hashSet3 = zzxmVar.f15650f;
        this.f15624p = Collections.unmodifiableSet(hashSet3);
        z2 = zzxmVar.f15660p;
        this.f15625q = z2;
        adData = zzxmVar.f15661q;
        this.f15626r = adData;
        i3 = zzxmVar.f15662r;
        this.f15627s = i3;
        str4 = zzxmVar.f15663s;
        this.f15628t = str4;
    }

    @Deprecated
    public final Date getBirthday() {
        return this.f15609a;
    }

    public final String getContentUrl() {
        return this.f15610b;
    }

    public final Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.f15616h.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle getCustomTargeting() {
        return this.f15623o;
    }

    @Deprecated
    public final int getGender() {
        return this.f15612d;
    }

    public final Set<String> getKeywords() {
        return this.f15613e;
    }

    public final Location getLocation() {
        return this.f15614f;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.f15615g;
    }

    public final String getMaxAdContentRating() {
        return this.f15628t;
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.f15617i.get(cls);
    }

    public final Bundle getNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls) {
        return this.f15616h.getBundle(cls.getName());
    }

    public final String getPublisherProvidedId() {
        return this.f15618j;
    }

    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.f15625q;
    }

    public final boolean isTestDevice(Context context) {
        Set<String> set = this.f15622n;
        zzve.zzou();
        return set.contains(zzayk.zzbi(context));
    }

    public final List<String> zzpn() {
        return new ArrayList(this.f15611c);
    }

    public final String zzpo() {
        return this.f15619k;
    }

    public final SearchAdRequest zzpp() {
        return this.f15620l;
    }

    public final Map<Class<? extends NetworkExtras>, NetworkExtras> zzpq() {
        return this.f15617i;
    }

    public final Bundle zzpr() {
        return this.f15616h;
    }

    public final int zzps() {
        return this.f15621m;
    }

    public final Set<String> zzpt() {
        return this.f15624p;
    }

    public final AdData zzpu() {
        return this.f15626r;
    }

    public final int zzpv() {
        return this.f15627s;
    }
}
