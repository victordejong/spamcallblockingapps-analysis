package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsv.class */
public final class zzsv {

    /* renamed from: a */
    private final byte[] f15465a;

    /* renamed from: b */
    private int f15466b;

    /* renamed from: c */
    private int f15467c;

    /* renamed from: d */
    private final /* synthetic */ zzsr f15468d;

    private zzsv(zzsr zzsrVar, byte[] bArr) {
        this.f15468d = zzsrVar;
        this.f15465a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzsv(zzsr zzsrVar, byte[] bArr, byte b) {
        this(zzsrVar, bArr);
    }

    public final zzsv zzbq(int i) {
        this.f15466b = i;
        return this;
    }

    public final zzsv zzbr(int i) {
        this.f15467c = i;
        return this;
    }

    public final void zzdn() {
        synchronized (this) {
            try {
                if (this.f15468d.f15464b) {
                    this.f15468d.f15463a.zzc(this.f15465a);
                    this.f15468d.f15463a.zzm(this.f15466b);
                    this.f15468d.f15463a.zzn(this.f15467c);
                    this.f15468d.f15463a.zza(null);
                    this.f15468d.f15463a.zzdn();
                }
            } catch (RemoteException e) {
                zzayu.zzb("Clearcut log failed", e);
            }
        }
    }
}
