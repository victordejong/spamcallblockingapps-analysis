package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayi.class */
public final class zzayi implements zzrh {

    /* renamed from: b */
    public final zzayr f24635b;
    @VisibleForTesting

    /* renamed from: d */
    public final zzaye f24637d;

    /* renamed from: a */
    public final Object f24634a = new Object();
    @VisibleForTesting

    /* renamed from: e */
    public final HashSet<zzaxw> f24638e = new HashSet<>();
    @VisibleForTesting

    /* renamed from: f */
    public final HashSet<zzayj> f24639f = new HashSet<>();

    /* renamed from: c */
    public final zzayg f24636c = new zzayg();

    public zzayi(String str, zzayr zzayrVar) {
        this.f24637d = new zzaye(str, zzayrVar);
        this.f24635b = zzayrVar;
    }

    /* renamed from: a */
    public final Bundle m16164a(Context context, zzayh zzayhVar) {
        HashSet<zzaxw> hashSet = new HashSet<>();
        synchronized (this.f24634a) {
            try {
                hashSet.addAll(this.f24638e);
                this.f24638e.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f24637d.m16170a(context, this.f24636c.m16166b()));
        Bundle bundle2 = new Bundle();
        Iterator<zzayj> it = this.f24639f.iterator();
        if (!it.hasNext()) {
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzaxw> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().m16211a());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            zzayhVar.mo13334a(hashSet);
            return bundle;
        }
        it.next();
        throw new NoSuchMethodError();
    }

    /* renamed from: a */
    public final zzaxw m16163a(Clock clock, String str) {
        return new zzaxw(clock, this, this.f24636c.m16167a(), str);
    }

    /* renamed from: a */
    public final void m16165a() {
        synchronized (this.f24634a) {
            this.f24637d.m16172a();
        }
    }

    /* renamed from: a */
    public final void m16162a(zzaxw zzaxwVar) {
        synchronized (this.f24634a) {
            this.f24638e.add(zzaxwVar);
        }
    }

    /* renamed from: a */
    public final void m16161a(zzvg zzvgVar, long j) {
        synchronized (this.f24634a) {
            this.f24637d.m16169a(zzvgVar, j);
        }
    }

    /* renamed from: a */
    public final void m16160a(HashSet<zzaxw> hashSet) {
        synchronized (this.f24634a) {
            this.f24638e.addAll(hashSet);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrh
    /* renamed from: a */
    public final void mo11506a(boolean z) {
        long b = zzp.m17962j().mo17091b();
        if (z) {
            if (b - this.f24635b.mo16068b() > ((Long) zzwm.m11166e().m16921a(zzabb.f23880r0)).longValue()) {
                this.f24637d.f24625d = -1;
                return;
            }
            this.f24637d.f24625d = this.f24635b.mo16049n();
            return;
        }
        this.f24635b.mo16073a(b);
        this.f24635b.mo16067b(this.f24637d.f24625d);
    }

    /* renamed from: b */
    public final void m16159b() {
        synchronized (this.f24634a) {
            this.f24637d.m16168b();
        }
    }
}
