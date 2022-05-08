package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.ak;
import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zza.class */
public class zza extends zzh<zza> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3888a;

    /* renamed from: b  reason: collision with root package name */
    final zzf f3889b;

    public zza(zzf zzfVar) {
        super(zzfVar.zzlT(), zzfVar.zzlQ());
        this.f3889b = zzfVar;
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.f3888a = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.zzh
    public void zza(zze zzeVar) {
        ak akVar = (ak) zzeVar.zzb(ak.class);
        if (TextUtils.isEmpty(akVar.f4112b)) {
            akVar.f4112b = this.f3889b.zzmh().zzmP();
        }
        if (this.f3888a && TextUtils.isEmpty(akVar.d)) {
            com.google.android.gms.analytics.internal.zza zzmg = this.f3889b.zzmg();
            akVar.d = zzmg.zzlE();
            akVar.e = zzmg.zzlt();
        }
    }

    public void zzbf(String str) {
        b.a(str);
        zzbg(str);
        zzkK().add(new zzb(this.f3889b, str));
    }

    public void zzbg(String str) {
        Uri a2 = zzb.a(str);
        ListIterator<zzk> listIterator = zzkK().listIterator();
        while (listIterator.hasNext()) {
            if (a2.equals(listIterator.next().zzkn())) {
                listIterator.remove();
            }
        }
    }

    @Override // com.google.android.gms.analytics.zzh
    public zze zzkk() {
        zze zzky = zzkJ().zzky();
        zzky.zza(this.f3889b.zzlY().zzmx());
        zzky.zza(this.f3889b.zzlZ().zznE());
        zzd(zzky);
        return zzky;
    }
}
