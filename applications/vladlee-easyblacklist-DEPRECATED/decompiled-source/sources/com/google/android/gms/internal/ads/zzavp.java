package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavp.class */
public final class zzavp implements zzqj {

    /* renamed from: b */
    private final zzavu f11435b;

    /* renamed from: d */
    private final zzavl f11437d;

    /* renamed from: a */
    private final Object f11434a = new Object();

    /* renamed from: e */
    private final HashSet<zzavd> f11438e = new HashSet<>();

    /* renamed from: f */
    private final HashSet<zzavm> f11439f = new HashSet<>();

    /* renamed from: c */
    private final zzavn f11436c = new zzavn();

    public zzavp(String str, zzavu zzavuVar) {
        this.f11437d = new zzavl(str, zzavuVar);
        this.f11435b = zzavuVar;
    }

    public final Bundle zza(Context context, zzavk zzavkVar) {
        HashSet<zzavd> hashSet = new HashSet<>();
        synchronized (this.f11434a) {
            hashSet.addAll(this.f11438e);
            this.f11438e.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f11437d.zzo(context, this.f11436c.zzvq()));
        Bundle bundle2 = new Bundle();
        Iterator<zzavm> it = this.f11439f.iterator();
        if (!it.hasNext()) {
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzavd> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().toBundle());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            zzavkVar.zza(hashSet);
            return bundle;
        }
        it.next();
        throw new NoSuchMethodError();
    }

    public final zzavd zza(Clock clock, String str) {
        return new zzavd(clock, this, this.f11436c.zzvp(), str);
    }

    public final void zza(zzug zzugVar, long j) {
        synchronized (this.f11434a) {
            this.f11437d.zza(zzugVar, j);
        }
    }

    public final void zzb(zzavd zzavdVar) {
        synchronized (this.f11434a) {
            this.f11438e.add(zzavdVar);
        }
    }

    public final void zzb(HashSet<zzavd> hashSet) {
        synchronized (this.f11434a) {
            this.f11438e.addAll(hashSet);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zzp(boolean z) {
        long currentTimeMillis = zzq.zzkx().currentTimeMillis();
        if (z) {
            if (currentTimeMillis - this.f11435b.zzwb() > ((Long) zzve.zzoy().zzd(zzzn.zzcjc)).longValue()) {
                this.f11437d.f11419a = -1;
                return;
            }
            this.f11437d.f11419a = this.f11435b.zzwc();
            return;
        }
        this.f11435b.zzez(currentTimeMillis);
        this.f11435b.zzcq(this.f11437d.f11419a);
    }

    public final void zzuv() {
        synchronized (this.f11434a) {
            this.f11437d.zzuv();
        }
    }

    public final void zzuw() {
        synchronized (this.f11434a) {
            this.f11437d.zzuw();
        }
    }
}
