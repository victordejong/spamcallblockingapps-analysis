package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import com.google.android.gms.internal.ads.zzdvx;
import java.io.ByteArrayOutputStream;
/* renamed from: com.google.android.gms.internal.ads.do */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/do.class */
final class RunnableC1823do implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Bitmap f8393a;

    /* renamed from: b */
    private final /* synthetic */ zzatf f8394b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1823do(zzatf zzatfVar, Bitmap bitmap) {
        this.f8394b = zzatfVar;
        this.f8393a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        zzdwi zzdwiVar;
        zzdwi zzdwiVar2;
        zzdwi zzdwiVar3;
        zzdwi zzdwiVar4;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f8393a.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
        obj = this.f8394b.f11363k;
        synchronized (obj) {
            zzdwiVar = this.f8394b.f11354b;
            zzdwiVar.zzhxy = new zzdwj();
            zzdwiVar2 = this.f8394b.f11354b;
            zzdwiVar2.zzhxy.zzhyj = byteArrayOutputStream.toByteArray();
            zzdwiVar3 = this.f8394b.f11354b;
            zzdwiVar3.zzhxy.mimeType = "image/png";
            zzdwiVar4 = this.f8394b.f11354b;
            zzdwiVar4.zzhxy.zzhyi = zzdvx.zzb.zzf.EnumC3501zzb.TYPE_CREATIVE;
        }
    }
}
