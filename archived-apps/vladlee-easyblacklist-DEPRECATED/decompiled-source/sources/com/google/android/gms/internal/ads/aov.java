package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aov.class */
final class aov {

    /* renamed from: b */
    private int[] f8058b;

    /* renamed from: c */
    private long[] f8059c;

    /* renamed from: d */
    private int[] f8060d;

    /* renamed from: e */
    private int[] f8061e;

    /* renamed from: f */
    private long[] f8062f;

    /* renamed from: g */
    private zzjn[] f8063g;

    /* renamed from: h */
    private zzgw[] f8064h;

    /* renamed from: i */
    private int f8065i;

    /* renamed from: j */
    private int f8066j;

    /* renamed from: k */
    private int f8067k;

    /* renamed from: l */
    private int f8068l;

    /* renamed from: q */
    private zzgw f8073q;

    /* renamed from: a */
    private int f8057a = 1000;

    /* renamed from: m */
    private long f8069m = Long.MIN_VALUE;

    /* renamed from: n */
    private long f8070n = Long.MIN_VALUE;

    /* renamed from: p */
    private boolean f8072p = true;

    /* renamed from: o */
    private boolean f8071o = true;

    public aov() {
        int i = this.f8057a;
        this.f8058b = new int[i];
        this.f8059c = new long[i];
        this.f8062f = new long[i];
        this.f8061e = new int[i];
        this.f8060d = new int[i];
        this.f8063g = new zzjn[i];
        this.f8064h = new zzgw[i];
    }

    /* renamed from: a */
    public final int m4786a(zzgy zzgyVar, zzis zzisVar, boolean z, boolean z2, zzgw zzgwVar, zzmk zzmkVar) {
        synchronized (this) {
            if (m4783d()) {
                if (!z && this.f8064h[this.f8067k] == zzgwVar) {
                    if (zzisVar.zzcs == null) {
                        return -3;
                    }
                    zzisVar.zzamd = this.f8062f[this.f8067k];
                    zzisVar.setFlags(this.f8061e[this.f8067k]);
                    zzmkVar.size = this.f8060d[this.f8067k];
                    zzmkVar.zzauq = this.f8059c[this.f8067k];
                    zzmkVar.zzapt = this.f8063g[this.f8067k];
                    this.f8069m = Math.max(this.f8069m, zzisVar.zzamd);
                    this.f8065i--;
                    this.f8067k++;
                    this.f8066j++;
                    if (this.f8067k == this.f8057a) {
                        this.f8067k = 0;
                    }
                    zzmkVar.zzbct = this.f8065i > 0 ? this.f8059c[this.f8067k] : zzmkVar.zzauq + zzmkVar.size;
                    return -4;
                }
                zzgyVar.zzafz = this.f8064h[this.f8067k];
                return -5;
            } else if (z2) {
                zzisVar.setFlags(4);
                return -4;
            } else if (this.f8073q == null || (!z && this.f8073q == zzgwVar)) {
                return -3;
            } else {
                zzgyVar.zzafz = this.f8073q;
                return -5;
            }
        }
    }

    /* renamed from: a */
    public final long m4788a(long j, boolean z) {
        synchronized (this) {
            if (m4783d() && j >= this.f8062f[this.f8067k]) {
                if (j > this.f8070n && !z) {
                    return -1L;
                }
                int i = this.f8067k;
                int i2 = 0;
                int i3 = -1;
                while (i != this.f8068l && this.f8062f[i] <= j) {
                    if ((this.f8061e[i] & 1) != 0) {
                        i3 = i2;
                    }
                    i = (i + 1) % this.f8057a;
                    i2++;
                }
                if (i3 == -1) {
                    return -1L;
                }
                this.f8067k = (this.f8067k + i3) % this.f8057a;
                this.f8066j += i3;
                this.f8065i -= i3;
                return this.f8059c[this.f8067k];
            }
            return -1L;
        }
    }

    /* renamed from: a */
    public final void m4791a() {
        this.f8066j = 0;
        this.f8067k = 0;
        this.f8068l = 0;
        this.f8065i = 0;
        this.f8071o = true;
    }

    /* renamed from: a */
    public final void m4790a(long j) {
        synchronized (this) {
            this.f8070n = Math.max(this.f8070n, j);
        }
    }

    /* renamed from: a */
    public final void m4789a(long j, int i, long j2, int i2, zzjn zzjnVar) {
        synchronized (this) {
            if (this.f8071o) {
                if ((i & 1) != 0) {
                    this.f8071o = false;
                } else {
                    return;
                }
            }
            zzoc.checkState(!this.f8072p);
            m4790a(j);
            this.f8062f[this.f8068l] = j;
            this.f8059c[this.f8068l] = j2;
            this.f8060d[this.f8068l] = i2;
            this.f8061e[this.f8068l] = i;
            this.f8063g[this.f8068l] = zzjnVar;
            this.f8064h[this.f8068l] = this.f8073q;
            this.f8058b[this.f8068l] = 0;
            this.f8065i++;
            if (this.f8065i == this.f8057a) {
                int i3 = this.f8057a + 1000;
                int[] iArr = new int[i3];
                long[] jArr = new long[i3];
                long[] jArr2 = new long[i3];
                int[] iArr2 = new int[i3];
                int[] iArr3 = new int[i3];
                zzjn[] zzjnVarArr = new zzjn[i3];
                zzgw[] zzgwVarArr = new zzgw[i3];
                int i4 = this.f8057a - this.f8067k;
                System.arraycopy(this.f8059c, this.f8067k, jArr, 0, i4);
                System.arraycopy(this.f8062f, this.f8067k, jArr2, 0, i4);
                System.arraycopy(this.f8061e, this.f8067k, iArr2, 0, i4);
                System.arraycopy(this.f8060d, this.f8067k, iArr3, 0, i4);
                System.arraycopy(this.f8063g, this.f8067k, zzjnVarArr, 0, i4);
                System.arraycopy(this.f8064h, this.f8067k, zzgwVarArr, 0, i4);
                System.arraycopy(this.f8058b, this.f8067k, iArr, 0, i4);
                int i5 = this.f8067k;
                System.arraycopy(this.f8059c, 0, jArr, i4, i5);
                System.arraycopy(this.f8062f, 0, jArr2, i4, i5);
                System.arraycopy(this.f8061e, 0, iArr2, i4, i5);
                System.arraycopy(this.f8060d, 0, iArr3, i4, i5);
                System.arraycopy(this.f8063g, 0, zzjnVarArr, i4, i5);
                System.arraycopy(this.f8064h, 0, zzgwVarArr, i4, i5);
                System.arraycopy(this.f8058b, 0, iArr, i4, i5);
                this.f8059c = jArr;
                this.f8062f = jArr2;
                this.f8061e = iArr2;
                this.f8060d = iArr3;
                this.f8063g = zzjnVarArr;
                this.f8064h = zzgwVarArr;
                this.f8058b = iArr;
                this.f8067k = 0;
                this.f8068l = this.f8057a;
                this.f8065i = this.f8057a;
                this.f8057a = i3;
                return;
            }
            this.f8068l++;
            if (this.f8068l == this.f8057a) {
                this.f8068l = 0;
            }
        }
    }

    /* renamed from: a */
    public final boolean m4787a(zzgw zzgwVar) {
        synchronized (this) {
            if (zzgwVar == null) {
                this.f8072p = true;
                return false;
            }
            this.f8072p = false;
            if (zzoq.zza(zzgwVar, this.f8073q)) {
                return false;
            }
            this.f8073q = zzgwVar;
            return true;
        }
    }

    /* renamed from: b */
    public final void m4785b() {
        this.f8069m = Long.MIN_VALUE;
        this.f8070n = Long.MIN_VALUE;
    }

    /* renamed from: c */
    public final int m4784c() {
        return this.f8066j + this.f8065i;
    }

    /* renamed from: d */
    public final boolean m4783d() {
        boolean z;
        synchronized (this) {
            z = this.f8065i != 0;
        }
        return z;
    }

    /* renamed from: e */
    public final zzgw m4782e() {
        synchronized (this) {
            if (this.f8072p) {
                return null;
            }
            return this.f8073q;
        }
    }

    /* renamed from: f */
    public final long m4781f() {
        long max;
        synchronized (this) {
            max = Math.max(this.f8069m, this.f8070n);
        }
        return max;
    }

    /* renamed from: g */
    public final long m4780g() {
        synchronized (this) {
            if (!m4783d()) {
                return -1L;
            }
            int i = ((this.f8067k + this.f8065i) - 1) % this.f8057a;
            this.f8067k = (this.f8067k + this.f8065i) % this.f8057a;
            this.f8066j += this.f8065i;
            this.f8065i = 0;
            return this.f8059c[i] + this.f8060d[i];
        }
    }
}
