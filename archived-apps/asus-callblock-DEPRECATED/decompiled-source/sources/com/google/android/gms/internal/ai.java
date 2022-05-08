package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ai.class */
public final class ai extends zzg<ai> {

    /* renamed from: a  reason: collision with root package name */
    public String f4107a;

    /* renamed from: b  reason: collision with root package name */
    public String f4108b;
    public String c;
    public long d;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("category", this.f4107a);
        hashMap.put("action", this.f4108b);
        hashMap.put("label", this.c);
        hashMap.put("value", Long.valueOf(this.d));
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(ai aiVar) {
        ai aiVar2 = aiVar;
        if (!TextUtils.isEmpty(this.f4107a)) {
            aiVar2.f4107a = this.f4107a;
        }
        if (!TextUtils.isEmpty(this.f4108b)) {
            aiVar2.f4108b = this.f4108b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            aiVar2.c = this.c;
        }
        if (this.d != 0) {
            aiVar2.d = this.d;
        }
    }
}
