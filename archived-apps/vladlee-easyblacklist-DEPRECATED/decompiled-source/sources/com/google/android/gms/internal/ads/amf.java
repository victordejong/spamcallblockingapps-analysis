package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amf.class */
public final class amf implements zzgk {

    /* renamed from: a */
    private final zzhf[] f7600a;

    /* renamed from: b */
    private final zznf f7601b;

    /* renamed from: c */
    private final zzng f7602c;

    /* renamed from: d */
    private final zzddu f7603d;

    /* renamed from: e */
    private final amh f7604e;

    /* renamed from: f */
    private final CopyOnWriteArraySet<zzgn> f7605f;

    /* renamed from: g */
    private final zzhl f7606g;

    /* renamed from: h */
    private final zzhi f7607h;

    /* renamed from: i */
    private boolean f7608i;

    /* renamed from: j */
    private boolean f7609j;

    /* renamed from: k */
    private int f7610k;

    /* renamed from: l */
    private int f7611l;

    /* renamed from: m */
    private int f7612m;

    /* renamed from: n */
    private int f7613n;

    /* renamed from: o */
    private boolean f7614o;

    /* renamed from: p */
    private zzhg f7615p;

    /* renamed from: q */
    private Object f7616q;

    /* renamed from: r */
    private zzmr f7617r;

    /* renamed from: s */
    private zzng f7618s;

    /* renamed from: t */
    private zzhc f7619t;

    /* renamed from: u */
    private zzgv f7620u;

    /* renamed from: v */
    private int f7621v;

    /* renamed from: w */
    private int f7622w;

    /* renamed from: x */
    private long f7623x;

    public amf(zzhf[] zzhfVarArr, zznf zznfVar, zzha zzhaVar) {
        String str = zzoq.zzbgv;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        zzoc.checkState(zzhfVarArr.length > 0);
        this.f7600a = (zzhf[]) zzoc.checkNotNull(zzhfVarArr);
        this.f7601b = (zznf) zzoc.checkNotNull(zznfVar);
        this.f7609j = false;
        this.f7610k = 0;
        this.f7611l = 1;
        this.f7605f = new CopyOnWriteArraySet<>();
        this.f7602c = new zzng(new zzne[zzhfVarArr.length]);
        this.f7615p = zzhg.zzagf;
        this.f7606g = new zzhl();
        this.f7607h = new zzhi();
        this.f7617r = zzmr.zzbdd;
        this.f7618s = this.f7602c;
        this.f7619t = zzhc.zzagb;
        this.f7603d = new ame(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.f7620u = new zzgv(0, 0L);
        this.f7604e = new amh(zzhfVarArr, zznfVar, zzhaVar, this.f7609j, this.f7603d, this.f7620u, this);
    }

    /* renamed from: a */
    private final int m4939a() {
        if (this.f7615p.isEmpty() || this.f7612m > 0) {
            return this.f7621v;
        }
        this.f7615p.zza(this.f7620u.zzads, this.f7607h, false);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4938a(Message message) {
        boolean z = true;
        switch (message.what) {
            case 0:
                this.f7613n--;
                return;
            case 1:
                this.f7611l = message.arg1;
                Iterator<zzgn> it = this.f7605f.iterator();
                while (it.hasNext()) {
                    it.next().zza(this.f7609j, this.f7611l);
                }
                return;
            case 2:
                if (message.arg1 == 0) {
                    z = false;
                }
                this.f7614o = z;
                Iterator<zzgn> it2 = this.f7605f.iterator();
                while (it2.hasNext()) {
                    it2.next().zzg(this.f7614o);
                }
                return;
            case 3:
                if (this.f7613n == 0) {
                    zznh zznhVar = (zznh) message.obj;
                    this.f7608i = true;
                    this.f7617r = zznhVar.zzbef;
                    this.f7618s = zznhVar.zzbeg;
                    this.f7601b.zzd(zznhVar.zzbeh);
                    Iterator<zzgn> it3 = this.f7605f.iterator();
                    while (it3.hasNext()) {
                        it3.next().zza(this.f7617r, this.f7618s);
                    }
                    return;
                }
                return;
            case 4:
                int i = this.f7612m - 1;
                this.f7612m = i;
                if (i == 0) {
                    this.f7620u = (zzgv) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<zzgn> it4 = this.f7605f.iterator();
                        while (it4.hasNext()) {
                            it4.next().zzed();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (this.f7612m == 0) {
                    this.f7620u = (zzgv) message.obj;
                    Iterator<zzgn> it5 = this.f7605f.iterator();
                    while (it5.hasNext()) {
                        it5.next().zzed();
                    }
                    return;
                }
                return;
            case 6:
                zzgx zzgxVar = (zzgx) message.obj;
                this.f7612m -= zzgxVar.zzafy;
                if (this.f7613n == 0) {
                    this.f7615p = zzgxVar.zzade;
                    this.f7616q = zzgxVar.zzadf;
                    this.f7620u = zzgxVar.zzadj;
                    Iterator<zzgn> it6 = this.f7605f.iterator();
                    while (it6.hasNext()) {
                        it6.next().zza(this.f7615p, this.f7616q);
                    }
                    return;
                }
                return;
            case 7:
                zzhc zzhcVar = (zzhc) message.obj;
                if (!this.f7619t.equals(zzhcVar)) {
                    this.f7619t = zzhcVar;
                    Iterator<zzgn> it7 = this.f7605f.iterator();
                    while (it7.hasNext()) {
                        it7.next().zza(zzhcVar);
                    }
                    return;
                }
                return;
            case 8:
                zzgl zzglVar = (zzgl) message.obj;
                Iterator<zzgn> it8 = this.f7605f.iterator();
                while (it8.hasNext()) {
                    it8.next().zza(zzglVar);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final long getBufferedPosition() {
        if (this.f7615p.isEmpty() || this.f7612m > 0) {
            return this.f7623x;
        }
        this.f7615p.zza(this.f7620u.zzads, this.f7607h, false);
        return this.f7607h.zzex() + zzgi.zzdm(this.f7620u.zzaey);
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final long getDuration() {
        if (this.f7615p.isEmpty()) {
            return -9223372036854775807L;
        }
        return zzgi.zzdm(this.f7615p.zza(m4939a(), this.f7606g, false).zzagj);
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final int getPlaybackState() {
        return this.f7611l;
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final void release() {
        this.f7604e.m4914b();
        this.f7603d.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final void seekTo(long j) {
        int a = m4939a();
        if (a < 0 || (!this.f7615p.isEmpty() && a >= this.f7615p.zzev())) {
            throw new zzhb(this.f7615p, a, j);
        }
        this.f7612m++;
        this.f7621v = a;
        if (!this.f7615p.isEmpty()) {
            this.f7615p.zza(a, this.f7606g, false);
            if (j != -9223372036854775807L) {
                zzgi.zzdn(j);
            }
            this.f7615p.zza(0, this.f7607h, false);
        }
        this.f7622w = 0;
        if (j == -9223372036854775807L) {
            this.f7623x = 0L;
            this.f7604e.m4921a(this.f7615p, a, -9223372036854775807L);
            return;
        }
        this.f7623x = j;
        this.f7604e.m4921a(this.f7615p, a, zzgi.zzdn(j));
        Iterator<zzgn> it = this.f7605f.iterator();
        while (it.hasNext()) {
            it.next().zzed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final void stop() {
        this.f7604e.m4930a();
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final void zza(zzgn zzgnVar) {
        this.f7605f.add(zzgnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final void zza(zzmb zzmbVar) {
        if (!this.f7615p.isEmpty() || this.f7616q != null) {
            this.f7615p = zzhg.zzagf;
            this.f7616q = null;
            Iterator<zzgn> it = this.f7605f.iterator();
            while (it.hasNext()) {
                it.next().zza(this.f7615p, this.f7616q);
            }
        }
        if (this.f7608i) {
            this.f7608i = false;
            this.f7617r = zzmr.zzbdd;
            this.f7618s = this.f7602c;
            this.f7601b.zzd(null);
            Iterator<zzgn> it2 = this.f7605f.iterator();
            while (it2.hasNext()) {
                it2.next().zza(this.f7617r, this.f7618s);
            }
        }
        this.f7613n++;
        this.f7604e.m4919a(zzmbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final void zza(zzgp... zzgpVarArr) {
        this.f7604e.m4916a(zzgpVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final void zzb(zzgn zzgnVar) {
        this.f7605f.remove(zzgnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final void zzb(zzgp... zzgpVarArr) {
        this.f7604e.m4907b(zzgpVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final boolean zzea() {
        return this.f7609j;
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final int zzeb() {
        return this.f7600a.length;
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final long zzec() {
        if (this.f7615p.isEmpty() || this.f7612m > 0) {
            return this.f7623x;
        }
        this.f7615p.zza(this.f7620u.zzads, this.f7607h, false);
        return this.f7607h.zzex() + zzgi.zzdm(this.f7620u.zzaex);
    }

    @Override // com.google.android.gms.internal.ads.zzgk
    public final void zzf(boolean z) {
        if (this.f7609j != z) {
            this.f7609j = z;
            this.f7604e.m4917a(z);
            Iterator<zzgn> it = this.f7605f.iterator();
            while (it.hasNext()) {
                it.next().zza(z, this.f7611l);
            }
        }
    }
}
