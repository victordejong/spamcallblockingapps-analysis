package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaj.class */
public final class zzaj extends zzi<zzaj> {
    public String mCategory;
    public String zzvg;
    public long zzvh;
    public String zzvi;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("variableName", this.zzvg);
        hashMap.put("timeInMillis", Long.valueOf(this.zzvh));
        hashMap.put("category", this.mCategory);
        hashMap.put("label", this.zzvi);
        return zza((Object) hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaj zzajVar) {
        zzaj zzajVar2 = zzajVar;
        if (!TextUtils.isEmpty(this.zzvg)) {
            zzajVar2.zzvg = this.zzvg;
        }
        if (this.zzvh != 0) {
            zzajVar2.zzvh = this.zzvh;
        }
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzajVar2.mCategory = this.mCategory;
        }
        if (!TextUtils.isEmpty(this.zzvi)) {
            zzajVar2.zzvi = this.zzvi;
        }
    }
}
