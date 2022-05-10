package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.ads.zzha;
import com.google.android.gms.internal.ads.zzhc;
import com.google.android.gms.internal.ads.zzhd;
import com.google.android.gms.internal.ads.zzhf;
import com.google.android.gms.internal.ads.zzhh;
import com.google.android.gms.internal.ads.zzhn;
import com.google.android.gms.internal.ads.zzhp;
import com.google.android.gms.internal.ads.zzhs;
import com.google.android.gms.internal.ads.zzht;
import com.google.android.gms.internal.ads.zzhu;
import com.google.android.gms.internal.ads.zzhx;
import com.google.android.gms.internal.ads.zzhy;
import com.google.android.gms.internal.ads.zzia;
import com.google.android.gms.internal.ads.zzid;
import com.google.android.gms.internal.ads.zzmz;
import com.google.android.gms.internal.ads.zznp;
import com.google.android.gms.internal.ads.zzob;
import com.google.android.gms.internal.ads.zzod;
import com.google.android.gms.internal.ads.zzog;
import com.google.android.gms.internal.ads.zzoi;
import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpq;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: c.d.b.d.g.a.sb0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/sb0.class */
public final class sb0 implements zzhc {

    /* renamed from: a */
    public final zzhx[] f15272a;

    /* renamed from: b */
    public final zzog f15273b;

    /* renamed from: c */
    public final zzod f15274c;

    /* renamed from: d */
    public final Handler f15275d;

    /* renamed from: e */
    public final ub0 f15276e;

    /* renamed from: f */
    public final CopyOnWriteArraySet<zzhf> f15277f;

    /* renamed from: g */
    public final zzid f15278g;

    /* renamed from: h */
    public final zzia f15279h;

    /* renamed from: i */
    public boolean f15280i;

    /* renamed from: j */
    public boolean f15281j;

    /* renamed from: k */
    public int f15282k;

    /* renamed from: l */
    public int f15283l;

    /* renamed from: m */
    public int f15284m;

    /* renamed from: n */
    public boolean f15285n;

    /* renamed from: o */
    public zzhy f15286o;

    /* renamed from: p */
    public Object f15287p;

    /* renamed from: q */
    public zznp f15288q;

    /* renamed from: r */
    public zzod f15289r;

    /* renamed from: s */
    public zzhu f15290s;

    /* renamed from: t */
    public zzhn f15291t;

    /* renamed from: u */
    public int f15292u;

    /* renamed from: v */
    public long f15293v;

    public sb0(zzhx[] zzhxVarArr, zzog zzogVar, zzhs zzhsVar) {
        String str = zzpq.f28790e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        zzoz.m11694b(zzhxVarArr.length > 0);
        zzoz.m11698a(zzhxVarArr);
        this.f15272a = zzhxVarArr;
        zzoz.m11698a(zzogVar);
        this.f15273b = zzogVar;
        this.f15281j = false;
        this.f15282k = 1;
        this.f15277f = new CopyOnWriteArraySet<>();
        this.f15274c = new zzod(new zzob[zzhxVarArr.length]);
        this.f15286o = zzhy.f28298a;
        this.f15278g = new zzid();
        this.f15279h = new zzia();
        this.f15288q = zznp.f28685d;
        this.f15289r = this.f15274c;
        this.f15290s = zzhu.f28294d;
        this.f15275d = new rb0(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        zzhn zzhnVar = new zzhn(0, 0L);
        this.f15291t = zzhnVar;
        this.f15276e = new ub0(zzhxVarArr, zzogVar, zzhsVar, this.f15281j, 0, this.f15275d, zzhnVar, this);
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: P */
    public final int mo12060P() {
        return this.f15282k;
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: a */
    public final void mo12059a() {
        this.f15276e.m26262b();
        this.f15275d.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: a */
    public final void mo12058a(long j) {
        int f = m26340f();
        if (f < 0 || (!this.f15286o.m12002a() && f >= this.f15286o.mo11757b())) {
            throw new zzht(this.f15286o, f, j);
        }
        this.f15283l++;
        this.f15292u = f;
        if (!this.f15286o.m12002a()) {
            this.f15286o.m12000a(f, this.f15278g, false);
            if (j == -9223372036854775807L) {
                long j2 = this.f15278g.f28315h;
            } else {
                zzha.m12066b(j);
            }
            long j3 = this.f15278g.f28317j;
            if (this.f15286o.mo11760a(0, this.f15279h, false).f28303c != -9223372036854775807L) {
            }
        }
        if (j == -9223372036854775807L) {
            this.f15293v = 0L;
            this.f15276e.m26269a(this.f15286o, f, -9223372036854775807L);
            return;
        }
        this.f15293v = j;
        this.f15276e.m26269a(this.f15286o, f, zzha.m12066b(j));
        Iterator<zzhf> it = this.f15277f.iterator();
        while (it.hasNext()) {
            it.next().mo12047a();
        }
    }

    /* renamed from: a */
    public final void m26341a(Message message) {
        boolean z = true;
        switch (message.what) {
            case 0:
                this.f15284m--;
                return;
            case 1:
                this.f15282k = message.arg1;
                Iterator<zzhf> it = this.f15277f.iterator();
                while (it.hasNext()) {
                    it.next().mo12041a(this.f15281j, this.f15282k);
                }
                return;
            case 2:
                if (message.arg1 == 0) {
                    z = false;
                }
                this.f15285n = z;
                Iterator<zzhf> it2 = this.f15277f.iterator();
                while (it2.hasNext()) {
                    it2.next().mo12042a(this.f15285n);
                }
                return;
            case 3:
                if (this.f15284m == 0) {
                    zzoi zzoiVar = (zzoi) message.obj;
                    this.f15280i = true;
                    this.f15288q = zzoiVar.f28715a;
                    this.f15289r = zzoiVar.f28716b;
                    this.f15273b.mo11735a(zzoiVar.f28717c);
                    Iterator<zzhf> it3 = this.f15277f.iterator();
                    while (it3.hasNext()) {
                        it3.next().mo12043a(this.f15288q, this.f15289r);
                    }
                    return;
                }
                return;
            case 4:
                int i = this.f15283l - 1;
                this.f15283l = i;
                if (i == 0) {
                    this.f15291t = (zzhn) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<zzhf> it4 = this.f15277f.iterator();
                        while (it4.hasNext()) {
                            it4.next().mo12047a();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (this.f15283l == 0) {
                    this.f15291t = (zzhn) message.obj;
                    Iterator<zzhf> it5 = this.f15277f.iterator();
                    while (it5.hasNext()) {
                        it5.next().mo12047a();
                    }
                    return;
                }
                return;
            case 6:
                zzhp zzhpVar = (zzhp) message.obj;
                this.f15283l -= zzhpVar.f28292d;
                if (this.f15284m == 0) {
                    this.f15286o = zzhpVar.f28289a;
                    this.f15287p = zzhpVar.f28290b;
                    this.f15291t = zzhpVar.f28291c;
                    Iterator<zzhf> it6 = this.f15277f.iterator();
                    while (it6.hasNext()) {
                        it6.next().mo12044a(this.f15286o, this.f15287p);
                    }
                    return;
                }
                return;
            case 7:
                zzhu zzhuVar = (zzhu) message.obj;
                if (!this.f15290s.equals(zzhuVar)) {
                    this.f15290s = zzhuVar;
                    Iterator<zzhf> it7 = this.f15277f.iterator();
                    while (it7.hasNext()) {
                        it7.next().mo12045a(zzhuVar);
                    }
                    return;
                }
                return;
            case 8:
                zzhd zzhdVar = (zzhd) message.obj;
                Iterator<zzhf> it8 = this.f15277f.iterator();
                while (it8.hasNext()) {
                    it8.next().mo12046a(zzhdVar);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: a */
    public final void mo12057a(zzhf zzhfVar) {
        this.f15277f.remove(zzhfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: a */
    public final void mo12056a(zzmz zzmzVar) {
        if (!this.f15286o.m12002a() || this.f15287p != null) {
            this.f15286o = zzhy.f28298a;
            this.f15287p = null;
            Iterator<zzhf> it = this.f15277f.iterator();
            while (it.hasNext()) {
                it.next().mo12044a(this.f15286o, this.f15287p);
            }
        }
        if (this.f15280i) {
            this.f15280i = false;
            this.f15288q = zznp.f28685d;
            this.f15289r = this.f15274c;
            this.f15273b.mo11735a((Object) null);
            Iterator<zzhf> it2 = this.f15277f.iterator();
            while (it2.hasNext()) {
                it2.next().mo12043a(this.f15288q, this.f15289r);
            }
        }
        this.f15284m++;
        this.f15276e.m26267a(zzmzVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: a */
    public final void mo12055a(boolean z) {
        if (this.f15281j != z) {
            this.f15281j = z;
            this.f15276e.m26265a(z);
            Iterator<zzhf> it = this.f15277f.iterator();
            while (it.hasNext()) {
                it.next().mo12041a(z, this.f15282k);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: a */
    public final void mo12054a(zzhh... zzhhVarArr) {
        this.f15276e.m26254b(zzhhVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: b */
    public final void mo12052b(zzhf zzhfVar) {
        this.f15277f.add(zzhfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: b */
    public final void mo12051b(zzhh... zzhhVarArr) {
        this.f15276e.m26264a(zzhhVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: b */
    public final boolean mo12053b() {
        return this.f15281j;
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: c */
    public final int mo12050c() {
        return this.f15272a.length;
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: d */
    public final long mo12049d() {
        if (this.f15286o.m12002a() || this.f15283l > 0) {
            return this.f15293v;
        }
        this.f15286o.mo11760a(this.f15291t.f28258a, this.f15279h, false);
        return this.f15279h.m11992a() + zzha.m12067a(this.f15291t.f28261d);
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    /* renamed from: e */
    public final long mo12048e() {
        if (this.f15286o.m12002a() || this.f15283l > 0) {
            return this.f15293v;
        }
        this.f15286o.mo11760a(this.f15291t.f28258a, this.f15279h, false);
        return this.f15279h.m11992a() + zzha.m12067a(this.f15291t.f28260c);
    }

    /* renamed from: f */
    public final int m26340f() {
        if (this.f15286o.m12002a() || this.f15283l > 0) {
            return this.f15292u;
        }
        this.f15286o.mo11760a(this.f15291t.f28258a, this.f15279h, false);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    public final long getDuration() {
        if (this.f15286o.m12002a()) {
            return -9223372036854775807L;
        }
        return zzha.m12067a(this.f15286o.m12000a(m26340f(), this.f15278g, false).f28316i);
    }

    @Override // com.google.android.gms.internal.ads.zzhc
    public final void stop() {
        this.f15276e.m26253c();
    }
}
