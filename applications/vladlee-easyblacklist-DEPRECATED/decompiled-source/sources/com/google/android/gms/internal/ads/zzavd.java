package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavd.class */
public final class zzavd {

    /* renamed from: a */
    private final Clock f11385a;

    /* renamed from: b */
    private final zzavp f11386b;

    /* renamed from: e */
    private final String f11389e;

    /* renamed from: f */
    private final String f11390f;

    /* renamed from: d */
    private final Object f11388d = new Object();

    /* renamed from: g */
    private long f11391g = -1;

    /* renamed from: h */
    private long f11392h = -1;

    /* renamed from: i */
    private boolean f11393i = false;

    /* renamed from: j */
    private long f11394j = -1;

    /* renamed from: k */
    private long f11395k = 0;

    /* renamed from: l */
    private long f11396l = -1;

    /* renamed from: m */
    private long f11397m = -1;

    /* renamed from: c */
    private final LinkedList<C1846ek> f11387c = new LinkedList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavd(Clock clock, zzavp zzavpVar, String str, String str2) {
        this.f11385a = clock;
        this.f11386b = zzavpVar;
        this.f11389e = str;
        this.f11390f = str2;
    }

    public final Bundle toBundle() {
        Bundle bundle;
        synchronized (this.f11388d) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.f11389e);
            bundle.putString("slotid", this.f11390f);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.f11396l);
            bundle.putLong("tresponse", this.f11397m);
            bundle.putLong("timp", this.f11392h);
            bundle.putLong("tload", this.f11394j);
            bundle.putLong("pcc", this.f11395k);
            bundle.putLong("tfetch", this.f11391g);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<C1846ek> it = this.f11387c.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().m4729d());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public final void zzan(boolean z) {
        synchronized (this.f11388d) {
            if (this.f11397m != -1) {
                this.f11394j = this.f11385a.elapsedRealtime();
            }
        }
    }

    public final void zze(zzug zzugVar) {
        synchronized (this.f11388d) {
            this.f11396l = this.f11385a.elapsedRealtime();
            this.f11386b.zza(zzugVar, this.f11396l);
        }
    }

    public final void zzey(long j) {
        synchronized (this.f11388d) {
            this.f11397m = j;
            if (this.f11397m != -1) {
                this.f11386b.zzb(this);
            }
        }
    }

    public final void zzuv() {
        synchronized (this.f11388d) {
            if (this.f11397m != -1 && this.f11392h == -1) {
                this.f11392h = this.f11385a.elapsedRealtime();
                this.f11386b.zzb(this);
            }
            this.f11386b.zzuv();
        }
    }

    public final void zzuw() {
        synchronized (this.f11388d) {
            if (this.f11397m != -1) {
                C1846ek ekVar = new C1846ek(this);
                ekVar.m4730c();
                this.f11387c.add(ekVar);
                this.f11395k++;
                this.f11386b.zzuw();
                this.f11386b.zzb(this);
            }
        }
    }

    public final void zzux() {
        synchronized (this.f11388d) {
            if (this.f11397m != -1 && !this.f11387c.isEmpty()) {
                C1846ek last = this.f11387c.getLast();
                if (last.m4732a() == -1) {
                    last.m4731b();
                    this.f11386b.zzb(this);
                }
            }
        }
    }

    public final String zzuy() {
        return this.f11389e;
    }
}
