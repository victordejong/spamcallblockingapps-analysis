package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalr.class */
public final class zzalr implements zzajz, zzals {

    /* renamed from: a */
    public final zzalp f24173a;

    /* renamed from: b */
    public final HashSet<AbstractMap.SimpleEntry<String, zzahq<? super zzalp>>> f24174b = new HashSet<>();

    public zzalr(zzalp zzalpVar) {
        this.f24173a = zzalpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajz, com.google.android.gms.internal.ads.zzaks
    /* renamed from: a */
    public final void mo15582a(String str) {
        this.f24173a.mo15582a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    /* renamed from: a */
    public final void mo16673a(String str, zzahq<? super zzalp> zzahqVar) {
        this.f24173a.mo16673a(str, zzahqVar);
        this.f24174b.remove(new AbstractMap.SimpleEntry(str, zzahqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    /* renamed from: a */
    public final void mo16672a(String str, String str2) {
        zzakc.m16716a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15577a(String str, Map map) {
        zzakc.m16715a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzajz, com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15576a(String str, JSONObject jSONObject) {
        zzakc.m16713b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    /* renamed from: b */
    public final void mo16671b(String str, zzahq<? super zzalp> zzahqVar) {
        this.f24173a.mo16671b(str, zzahqVar);
        this.f24174b.add(new AbstractMap.SimpleEntry<>(str, zzahqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaks
    /* renamed from: b */
    public final void mo15569b(String str, JSONObject jSONObject) {
        zzakc.m16714a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzals
    /* renamed from: q */
    public final void mo16670q() {
        Iterator<AbstractMap.SimpleEntry<String, zzahq<? super zzalp>>> it = this.f24174b.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, zzahq<? super zzalp>> next = it.next();
            String valueOf = String.valueOf(next.getValue().toString());
            zzayp.m16153g(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.f24173a.mo16673a(next.getKey(), next.getValue());
        }
        this.f24174b.clear();
    }
}
