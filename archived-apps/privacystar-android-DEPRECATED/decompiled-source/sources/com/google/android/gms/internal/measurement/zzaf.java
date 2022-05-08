package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.measurement.AppMeasurement;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaf.class */
public final class zzaf extends zzi<zzaf> {
    public String zzum;
    public boolean zzun;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put(IABV3Helper.DESCRIPTION, this.zzum);
        hashMap.put(AppMeasurement.Param.FATAL, Boolean.valueOf(this.zzun));
        return zza((Object) hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaf zzafVar) {
        zzaf zzafVar2 = zzafVar;
        if (!TextUtils.isEmpty(this.zzum)) {
            zzafVar2.zzum = this.zzum;
        }
        if (this.zzun) {
            zzafVar2.zzun = this.zzun;
        }
    }
}
