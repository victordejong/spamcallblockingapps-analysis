package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajs.class */
public final class zzajs implements zzaia, zzajp {

    /* renamed from: a */
    private final zzajq f10954a;

    /* renamed from: b */
    private final HashSet<AbstractMap.SimpleEntry<String, zzafn<? super zzajq>>> f10955b = new HashSet<>();

    public zzajs(zzajq zzajqVar) {
        this.f10954a = zzajqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zza(String str, zzafn<? super zzajq> zzafnVar) {
        this.f10954a.zza(str, zzafnVar);
        this.f10955b.add(new AbstractMap.SimpleEntry<>(str, zzafnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzahs
    public final void zza(String str, Map map) {
        zzahz.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zza(String str, JSONObject jSONObject) {
        zzahz.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zzb(String str, zzafn<? super zzajq> zzafnVar) {
        this.f10954a.zzb(str, zzafnVar);
        this.f10955b.remove(new AbstractMap.SimpleEntry(str, zzafnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaia, com.google.android.gms.internal.ads.zzahs
    public final void zzb(String str, JSONObject jSONObject) {
        zzahz.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaia, com.google.android.gms.internal.ads.zzaip
    public final void zzcy(String str) {
        this.f10954a.zzcy(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    public final void zzj(String str, String str2) {
        zzahz.zza(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzajp
    public final void zzsg() {
        Iterator<AbstractMap.SimpleEntry<String, zzafn<? super zzajq>>> it = this.f10955b.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, zzafn<? super zzajq>> next = it.next();
            String valueOf = String.valueOf(next.getValue().toString());
            zzavs.zzed(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.f10954a.zzb(next.getKey(), next.getValue());
        }
        this.f10955b.clear();
    }
}
