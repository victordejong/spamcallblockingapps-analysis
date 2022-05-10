package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzoj;
import com.google.android.gms.internal.ads.zzol;
import com.google.android.gms.internal.ads.zzom;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C3462d8;
import p131c.p161d.p170b.p224d.p252g.p253a.C3759l8;
import p131c.p161d.p170b.p224d.p252g.p253a.C3796m8;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzber.class */
public final class zzber implements zzhf, zzmy, zzpa<zzom>, zzqd {
    @VisibleForTesting

    /* renamed from: m */
    public static int f24911m;
    @VisibleForTesting

    /* renamed from: n */
    public static int f24912n;

    /* renamed from: a */
    public final Context f24913a;

    /* renamed from: c */
    public final zzhx f24915c;

    /* renamed from: f */
    public final zzbdv f24918f;

    /* renamed from: g */
    public zzhc f24919g;

    /* renamed from: h */
    public ByteBuffer f24920h;

    /* renamed from: i */
    public boolean f24921i;

    /* renamed from: j */
    public zzbey f24922j;

    /* renamed from: k */
    public int f24923k;

    /* renamed from: l */
    public Set<WeakReference<C3462d8>> f24924l = new HashSet();

    /* renamed from: b */
    public final zzbeo f24914b = new zzbeo();

    /* renamed from: d */
    public final zzhx f24916d = new zzjb(zzlw.f28608a);

    /* renamed from: e */
    public final zzoa f24917e = new zznv();

    public zzber(Context context, zzbdv zzbdvVar) {
        this.f24913a = context;
        this.f24918f = zzbdvVar;
        this.f24915c = new zzpx(this.f24913a, zzlw.f28608a, 0L, zzayu.f24665h, this, -1);
        if (zzayp.m16155a()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(valueOf);
            zzayp.m16153g(sb.toString());
        }
        f24911m++;
        zzhc a = zzhg.m12040a(new zzhx[]{this.f24916d, this.f24915c}, this.f24917e, this.f24914b);
        this.f24919g = a;
        a.mo12052b(this);
    }

    /* renamed from: f */
    public static int m15679f() {
        return f24911m;
    }

    /* renamed from: g */
    public static int m15678g() {
        return f24912n;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final zzmz m15693a(Uri uri, final String str) {
        zzol zzolVar;
        if (!this.f24921i || this.f24920h.limit() <= 0) {
            final zzol i8Var = this.f24918f.f24851h > 0 ? new zzol(this, str) { // from class: c.d.b.d.g.a.i8

                /* renamed from: a */
                public final zzber f13500a;

                /* renamed from: b */
                public final String f13501b;

                {
                    this.f13500a = this;
                    this.f13501b = str;
                }

                @Override // com.google.android.gms.internal.ads.zzol
                /* renamed from: a */
                public final zzom mo11731a() {
                    return this.f13500a.m15684b(this.f13501b);
                }
            } : new zzol(this, str) { // from class: c.d.b.d.g.a.h8

                /* renamed from: a */
                public final zzber f13252a;

                /* renamed from: b */
                public final String f13253b;

                {
                    this.f13252a = this;
                    this.f13253b = str;
                }

                @Override // com.google.android.gms.internal.ads.zzol
                /* renamed from: a */
                public final zzom mo11731a() {
                    return this.f13252a.m15689a(this.f13253b);
                }
            };
            final zzol zzolVar2 = i8Var;
            if (this.f24918f.f24852i) {
                zzolVar2 = new zzol(this, i8Var) { // from class: c.d.b.d.g.a.k8

                    /* renamed from: a */
                    public final zzber f13843a;

                    /* renamed from: b */
                    public final zzol f13844b;

                    {
                        this.f13843a = this;
                        this.f13844b = i8Var;
                    }

                    @Override // com.google.android.gms.internal.ads.zzol
                    /* renamed from: a */
                    public final zzom mo11731a() {
                        return this.f13843a.m15690a(this.f13844b);
                    }
                };
            }
            zzolVar = zzolVar2;
            if (this.f24920h.limit() > 0) {
                final byte[] bArr = new byte[this.f24920h.limit()];
                this.f24920h.get(bArr);
                zzolVar = new zzol(zzolVar2, bArr) { // from class: c.d.b.d.g.a.j8

                    /* renamed from: a */
                    public final zzol f13592a;

                    /* renamed from: b */
                    public final byte[] f13593b;

                    {
                        this.f13592a = zzolVar2;
                        this.f13593b = bArr;
                    }

                    @Override // com.google.android.gms.internal.ads.zzol
                    /* renamed from: a */
                    public final zzom mo11731a() {
                        zzol zzolVar3 = this.f13592a;
                        byte[] bArr2 = this.f13593b;
                        return new C3907p8(new zzoj(bArr2), bArr2.length, zzolVar3.mo11731a());
                    }
                };
            }
        } else {
            final byte[] bArr2 = new byte[this.f24920h.limit()];
            this.f24920h.get(bArr2);
            zzolVar = new zzol(bArr2) { // from class: c.d.b.d.g.a.g8

                /* renamed from: a */
                public final byte[] f13021a;

                {
                    this.f13021a = bArr2;
                }

                @Override // com.google.android.gms.internal.ads.zzol
                /* renamed from: a */
                public final zzom mo11731a() {
                    return new zzoj(this.f13021a);
                }
            };
        }
        zzka zzkaVar = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23844l)).booleanValue() ? C3796m8.f14023a : C3759l8.f13941a;
        zzbdv zzbdvVar = this.f24918f;
        return new zzmv(uri, zzolVar, zzkaVar, zzbdvVar.f24853j, zzayu.f24665h, this, null, zzbdvVar.f24849f);
    }

    /* renamed from: a */
    public final /* synthetic */ zzom m15690a(zzol zzolVar) {
        return new zzbem(this.f24913a, zzolVar.mo11731a(), this, new zzbep(this) { // from class: c.d.b.d.g.a.n8

            /* renamed from: a */
            public final zzber f14218a;

            {
                this.f14218a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbep
            /* renamed from: a */
            public final void mo15696a(boolean z, long j) {
                this.f14218a.m15688a(z, j);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ zzom m15689a(String str) {
        zzber zzberVar = this.f24918f.f24852i ? null : this;
        zzbdv zzbdvVar = this.f24918f;
        return new zzop(str, null, zzberVar, zzbdvVar.f24847d, zzbdvVar.f24848e, true, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    /* renamed from: a */
    public final void mo12047a() {
    }

    /* renamed from: a */
    public final void m15695a(float f, boolean z) {
        if (this.f24919g != null) {
            zzhh zzhhVar = new zzhh(this.f24916d, 2, Float.valueOf(f));
            if (z) {
                this.f24919g.mo12054a(zzhhVar);
            } else {
                this.f24919g.mo12051b(zzhhVar);
            }
        }
    }

    /* renamed from: a */
    public final void m15694a(int i) {
        for (WeakReference<C3462d8> weakReference : this.f24924l) {
            C3462d8 d8Var = weakReference.get();
            if (d8Var != null) {
                d8Var.m27080a(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    /* renamed from: a */
    public final void mo11568a(int i, int i2, int i3, float f) {
        zzbey zzbeyVar = this.f24922j;
        if (zzbeyVar != null) {
            zzbeyVar.mo15650b(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    /* renamed from: a */
    public final void mo11567a(Surface surface) {
    }

    /* renamed from: a */
    public final void m15692a(Surface surface, boolean z) {
        if (this.f24919g != null) {
            zzhh zzhhVar = new zzhh(this.f24915c, 1, surface);
            if (z) {
                this.f24919g.mo12054a(zzhhVar);
            } else {
                this.f24919g.mo12051b(zzhhVar);
            }
        }
    }

    /* renamed from: a */
    public final void m15691a(zzbey zzbeyVar) {
        this.f24922j = zzbeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    /* renamed from: a */
    public final void mo12046a(zzhd zzhdVar) {
        zzbey zzbeyVar = this.f24922j;
        if (zzbeyVar != null) {
            zzbeyVar.mo15654a("onPlayerError", zzhdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    /* renamed from: a */
    public final void mo11566a(zzho zzhoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    /* renamed from: a */
    public final void mo12045a(zzhu zzhuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    /* renamed from: a */
    public final void mo12044a(zzhy zzhyVar, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    /* renamed from: a */
    public final void mo11565a(zzjl zzjlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    /* renamed from: a */
    public final void mo12043a(zznp zznpVar, zzod zzodVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmy
    /* renamed from: a */
    public final void mo11798a(IOException iOException) {
        zzbey zzbeyVar = this.f24922j;
        if (zzbeyVar != null) {
            zzbeyVar.mo15654a("onLoadError", iOException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    /* renamed from: a */
    public final /* synthetic */ void mo11692a(zzom zzomVar, int i) {
        this.f24923k += i;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    /* renamed from: a */
    public final /* synthetic */ void mo11691a(zzom zzomVar, zzon zzonVar) {
        this.f24923k = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    /* renamed from: a */
    public final void mo11564a(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    /* renamed from: a */
    public final void mo12042a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    /* renamed from: a */
    public final void mo12041a(boolean z, int i) {
        zzbey zzbeyVar = this.f24922j;
        if (zzbeyVar != null) {
            zzbeyVar.mo15655a(i);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m15688a(boolean z, long j) {
        zzbey zzbeyVar = this.f24922j;
        if (zzbeyVar != null) {
            zzbeyVar.mo15652a(z, j);
        }
    }

    /* renamed from: a */
    public final void m15687a(Uri[] uriArr, String str) {
        m15686a(uriArr, str, ByteBuffer.allocate(0), false);
    }

    /* renamed from: a */
    public final void m15686a(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzmz zzmzVar;
        if (this.f24919g != null) {
            this.f24920h = byteBuffer;
            this.f24921i = z;
            if (uriArr.length == 1) {
                zzmzVar = m15693a(uriArr[0], str);
            } else {
                zzmz[] zzmzVarArr = new zzmz[uriArr.length];
                for (int i = 0; i < uriArr.length; i++) {
                    zzmzVarArr[i] = m15693a(uriArr[i], str);
                }
                zzmzVar = new zzne(zzmzVarArr);
            }
            this.f24919g.mo12056a(zzmzVar);
            f24912n++;
        }
    }

    /* renamed from: b */
    public final long m15685b() {
        return this.f24923k;
    }

    /* renamed from: b */
    public final /* synthetic */ zzom m15684b(String str) {
        zzber zzberVar = this.f24918f.f24852i ? null : this;
        zzbdv zzbdvVar = this.f24918f;
        C3462d8 d8Var = new C3462d8(str, zzberVar, zzbdvVar.f24847d, zzbdvVar.f24848e, zzbdvVar.f24851h);
        this.f24924l.add(new WeakReference<>(d8Var));
        return d8Var;
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    /* renamed from: b */
    public final void mo11563b(int i, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    /* renamed from: b */
    public final void mo11562b(zzjl zzjlVar) {
    }

    /* renamed from: b */
    public final void m15683b(boolean z) {
        if (this.f24919g != null) {
            for (int i = 0; i < this.f24919g.mo12050c(); i++) {
                this.f24917e.m11745a(i, !z);
            }
        }
    }

    /* renamed from: c */
    public final void m15682c() {
        zzhc zzhcVar = this.f24919g;
        if (zzhcVar != null) {
            zzhcVar.mo12057a(this);
            this.f24919g.mo12059a();
            this.f24919g = null;
            f24912n--;
        }
    }

    /* renamed from: d */
    public final zzhc m15681d() {
        return this.f24919g;
    }

    /* renamed from: e */
    public final zzbeo m15680e() {
        return this.f24914b;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ void mo11690e(zzom zzomVar) {
    }

    public final void finalize() throws Throwable {
        f24911m--;
        if (zzayp.m16155a()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(valueOf);
            zzayp.m16153g(sb.toString());
        }
    }
}
