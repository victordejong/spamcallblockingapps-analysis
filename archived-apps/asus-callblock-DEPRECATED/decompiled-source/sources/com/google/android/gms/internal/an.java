package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/an.class */
public final class an extends zzg<an> {

    /* renamed from: a  reason: collision with root package name */
    public String f4117a;

    /* renamed from: b  reason: collision with root package name */
    public long f4118b;
    public String c;
    public String d;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("variableName", this.f4117a);
        hashMap.put("timeInMillis", Long.valueOf(this.f4118b));
        hashMap.put("category", this.c);
        hashMap.put("label", this.d);
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(an anVar) {
        an anVar2 = anVar;
        if (!TextUtils.isEmpty(this.f4117a)) {
            anVar2.f4117a = this.f4117a;
        }
        if (this.f4118b != 0) {
            anVar2.f4118b = this.f4118b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            anVar2.c = this.c;
        }
        if (!TextUtils.isEmpty(this.d)) {
            anVar2.d = this.d;
        }
    }
}
