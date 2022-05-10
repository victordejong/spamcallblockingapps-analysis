package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpj.class */
public final class zzdpj implements zzayh, zzbui {

    /* renamed from: a */
    public final HashSet<zzaxw> f27696a = new HashSet<>();

    /* renamed from: b */
    public final Context f27697b;

    /* renamed from: c */
    public final zzayi f27698c;

    public zzdpj(Context context, zzayi zzayiVar) {
        this.f27697b = context;
        this.f27698c = zzayiVar;
    }

    /* renamed from: a */
    public final Bundle m13336a() {
        return this.f27698c.m16164a(this.f27697b, this);
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    /* renamed from: a */
    public final void mo13335a(zzva zzvaVar) {
        synchronized (this) {
            if (zzvaVar.f28995a != 3) {
                this.f27698c.m16160a(this.f27696a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    /* renamed from: a */
    public final void mo13334a(HashSet<zzaxw> hashSet) {
        synchronized (this) {
            this.f27696a.clear();
            this.f27696a.addAll(hashSet);
        }
    }
}
