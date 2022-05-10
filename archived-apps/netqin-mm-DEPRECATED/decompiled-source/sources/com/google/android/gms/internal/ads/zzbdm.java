package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdm.class */
public final class zzbdm extends zzbde {
    @Override // com.google.android.gms.internal.ads.zzbde
    /* renamed from: a */
    public final zzbdf mo15773a(Context context, zzbdu zzbduVar, int i, boolean z, zzabs zzabsVar, zzbdv zzbdvVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!(applicationInfo == null || applicationInfo.targetSdkVersion >= 11)) {
            return null;
        }
        return i == 2 ? new zzbeb(context, new zzbdx(context, zzbduVar.mo15516a(), zzbduVar.getRequestId(), zzabsVar, zzbduVar.mo15597M()), zzbduVar, z, zzbde.m15809a(zzbduVar), zzbdvVar) : new zzbcs(context, z, zzbde.m15809a(zzbduVar), zzbdvVar, new zzbdx(context, zzbduVar.mo15516a(), zzbduVar.getRequestId(), zzabsVar, zzbduVar.mo15597M()));
    }
}
