package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbs.class */
public final class zzbbs implements zzgn, zzma, zznz<zznl>, zzpd {

    /* renamed from: a */
    private static int f11682a;

    /* renamed from: b */
    private static int f11683b;

    /* renamed from: c */
    private final Context f11684c;

    /* renamed from: e */
    private final zzhf f11686e;

    /* renamed from: h */
    private final zzbaw f11689h;

    /* renamed from: i */
    private zzgk f11690i;

    /* renamed from: j */
    private ByteBuffer f11691j;

    /* renamed from: k */
    private boolean f11692k;

    /* renamed from: l */
    private zzbca f11693l;

    /* renamed from: m */
    private int f11694m;

    /* renamed from: n */
    private Set<WeakReference<C1932hp>> f11695n = new HashSet();

    /* renamed from: d */
    private final zzbbt f11685d = new zzbbt();

    /* renamed from: f */
    private final zzhf f11687f = new zzij(zzky.zzazf);

    /* renamed from: g */
    private final zzmz f11688g = new zzmy();

    public zzbbs(Context context, zzbaw zzbawVar) {
        this.f11684c = context;
        this.f11689h = zzbawVar;
        this.f11686e = new zzox(this.f11684c, zzky.zzazf, 0L, zzawb.zzdsr, this, -1);
        if (zzavs.zzvs()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(valueOf);
            zzavs.zzed(sb.toString());
        }
        f11682a++;
        this.f11690i = zzgo.zza(new zzhf[]{this.f11687f, this.f11686e}, this.f11688g, this.f11685d);
        this.f11690i.zza(this);
    }

    /* renamed from: a */
    private final zzmb m4141a(Uri uri, final String str) {
        zzno zznoVar;
        if (!this.f11692k || this.f11691j.limit() <= 0) {
            final zzno hqVar = this.f11689h.zzdzm > 0 ? new zzno(this, str) { // from class: com.google.android.gms.internal.ads.hq

                /* renamed from: a */
                private final zzbbs f8570a;

                /* renamed from: b */
                private final String f8571b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8570a = this;
                    this.f8571b = str;
                }

                @Override // com.google.android.gms.internal.ads.zzno
                public final zznl zzih() {
                    return this.f8570a.m4135b(this.f8571b);
                }
            } : new zzno(this, str) { // from class: com.google.android.gms.internal.ads.ht

                /* renamed from: a */
                private final zzbbs f8575a;

                /* renamed from: b */
                private final String f8576b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8575a = this;
                    this.f8576b = str;
                }

                @Override // com.google.android.gms.internal.ads.zzno
                public final zznl zzih() {
                    return this.f8575a.m4138a(this.f8576b);
                }
            };
            if (this.f11689h.zzdzn) {
                hqVar = new zzno(this, hqVar) { // from class: com.google.android.gms.internal.ads.hs

                    /* renamed from: a */
                    private final zzbbs f8573a;

                    /* renamed from: b */
                    private final zzno f8574b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8573a = this;
                        this.f8574b = hqVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzno
                    public final zznl zzih() {
                        return this.f8573a.m4139a(this.f8574b);
                    }
                };
            }
            zznoVar = hqVar;
            if (this.f11691j.limit() > 0) {
                final byte[] bArr = new byte[this.f11691j.limit()];
                this.f11691j.get(bArr);
                zznoVar = new zzno(hqVar, bArr) { // from class: com.google.android.gms.internal.ads.hv

                    /* renamed from: a */
                    private final zzno f8578a;

                    /* renamed from: b */
                    private final byte[] f8579b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8578a = hqVar;
                        this.f8579b = bArr;
                    }

                    @Override // com.google.android.gms.internal.ads.zzno
                    public final zznl zzih() {
                        zzno zznoVar2 = this.f8578a;
                        byte[] bArr2 = this.f8579b;
                        return new C1941hy(new zznm(bArr2), bArr2.length, zznoVar2.zzih());
                    }
                };
            }
        } else {
            final byte[] bArr2 = new byte[this.f11691j.limit()];
            this.f11691j.get(bArr2);
            zznoVar = new zzno(bArr2) { // from class: com.google.android.gms.internal.ads.hr

                /* renamed from: a */
                private final byte[] f8572a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8572a = bArr2;
                }

                @Override // com.google.android.gms.internal.ads.zzno
                public final zznl zzih() {
                    return new zznm(this.f8572a);
                }
            };
        }
        return new zzlx(uri, zznoVar, C1937hu.f8577a, this.f11689h.zzdzo, zzawb.zzdsr, this, null, this.f11689h.zzdzk);
    }

    public static int zzzn() {
        return f11682a;
    }

    public static int zzzo() {
        return f11683b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zznl m4139a(zzno zznoVar) {
        return new zzbbr(this.f11684c, zznoVar.zzih(), this, new zzbbq(this) { // from class: com.google.android.gms.internal.ads.hw

            /* renamed from: a */
            private final zzbbs f8580a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8580a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbq
            public final void zzb(boolean z, long j) {
                this.f8580a.m4136a(z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zznl m4138a(String str) {
        return new zzns(str, null, this.f11689h.zzdzn ? null : this, this.f11689h.zzdzh, this.f11689h.zzdzj, true, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4142a(float f, boolean z) {
        if (this.f11690i != null) {
            zzgp zzgpVar = new zzgp(this.f11687f, 2, Float.valueOf(f));
            zzgk zzgkVar = this.f11690i;
            if (z) {
                zzgkVar.zzb(zzgpVar);
            } else {
                zzgkVar.zza(zzgpVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4140a(Surface surface, boolean z) {
        if (this.f11690i != null) {
            zzgp zzgpVar = new zzgp(this.f11686e, 1, surface);
            zzgk zzgkVar = this.f11690i;
            if (z) {
                zzgkVar.zzb(zzgpVar);
            } else {
                zzgkVar.zza(zzgpVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4137a(boolean z) {
        if (this.f11690i != null) {
            for (int i = 0; i < this.f11690i.zzeb(); i++) {
                this.f11688g.zzf(i, !z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4136a(boolean z, long j) {
        zzbca zzbcaVar = this.f11693l;
        if (zzbcaVar != null) {
            zzbcaVar.zzb(z, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ zznl m4135b(String str) {
        C1932hp hpVar = new C1932hp(str, this.f11689h.zzdzn ? null : this, this.f11689h.zzdzh, this.f11689h.zzdzj, this.f11689h.zzdzm);
        this.f11695n.add(new WeakReference<>(hpVar));
        return hpVar;
    }

    public final void finalize() {
        f11682a--;
        if (zzavs.zzvs()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(valueOf);
            zzavs.zzed(sb.toString());
        }
    }

    public final long getBytesTransferred() {
        return this.f11694m;
    }

    public final void release() {
        zzgk zzgkVar = this.f11690i;
        if (zzgkVar != null) {
            zzgkVar.zzb(this);
            this.f11690i.release();
            this.f11690i = null;
            f11683b--;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final void zza(int i, int i2, int i3, float f) {
        zzbca zzbcaVar = this.f11693l;
        if (zzbcaVar != null) {
            zzbcaVar.zzn(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final void zza(Surface surface) {
    }

    public final void zza(zzbca zzbcaVar) {
        this.f11693l = zzbcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zza(zzgl zzglVar) {
        zzbca zzbcaVar = this.f11693l;
        if (zzbcaVar != null) {
            zzbcaVar.zza("onPlayerError", zzglVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zza(zzhc zzhcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zza(zzhg zzhgVar, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zza(zzmr zzmrVar, zzng zzngVar) {
    }

    @Override // com.google.android.gms.internal.ads.zznz
    public final /* synthetic */ void zza(zznl zznlVar, zznq zznqVar) {
        this.f11694m = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zza(boolean z, int i) {
        zzbca zzbcaVar = this.f11693l;
        if (zzbcaVar != null) {
            zzbcaVar.zzda(i);
        }
    }

    public final void zza(Uri[] uriArr, String str) {
        zza(uriArr, str, ByteBuffer.allocate(0), false);
    }

    public final void zza(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzmb zzmbVar;
        if (this.f11690i != null) {
            this.f11691j = byteBuffer;
            this.f11692k = z;
            if (uriArr.length == 1) {
                zzmbVar = m4141a(uriArr[0], str);
            } else {
                zzmb[] zzmbVarArr = new zzmb[uriArr.length];
                for (int i = 0; i < uriArr.length; i++) {
                    zzmbVarArr[i] = m4141a(uriArr[i], str);
                }
                zzmbVar = new zzmg(zzmbVarArr);
            }
            this.f11690i.zza(zzmbVar);
            f11683b++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzb(IOException iOException) {
        zzbca zzbcaVar = this.f11693l;
        if (zzbcaVar != null) {
            zzbcaVar.zza("onLoadError", iOException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznz
    public final /* synthetic */ void zzc(zznl zznlVar, int i) {
        this.f11694m += i;
    }

    public final void zzcz(int i) {
        for (WeakReference<C1932hp> weakReference : this.f11695n) {
            C1932hp hpVar = weakReference.get();
            if (hpVar != null) {
                hpVar.m4710a(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final void zzd(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final void zze(int i, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final void zze(zzit zzitVar) {
    }

    @Override // com.google.android.gms.internal.ads.zznz
    public final /* bridge */ /* synthetic */ void zze(zznl zznlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzed() {
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final void zzf(zzit zzitVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzg(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final void zzk(zzgw zzgwVar) {
    }

    public final zzgk zzzm() {
        return this.f11690i;
    }

    public final zzbbt zzzp() {
        return this.f11685d;
    }
}
