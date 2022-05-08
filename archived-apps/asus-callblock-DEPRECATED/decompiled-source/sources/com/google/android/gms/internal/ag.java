package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ag.class */
public final class ag extends zzg<ag> {

    /* renamed from: a  reason: collision with root package name */
    public String f4103a;

    /* renamed from: b  reason: collision with root package name */
    public int f4104b;
    public int c;
    public int d;
    public int e;
    public int f;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("language", this.f4103a);
        hashMap.put("screenColors", Integer.valueOf(this.f4104b));
        hashMap.put("screenWidth", Integer.valueOf(this.c));
        hashMap.put("screenHeight", Integer.valueOf(this.d));
        hashMap.put("viewportWidth", Integer.valueOf(this.e));
        hashMap.put("viewportHeight", Integer.valueOf(this.f));
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(ag agVar) {
        ag agVar2 = agVar;
        if (this.f4104b != 0) {
            agVar2.f4104b = this.f4104b;
        }
        if (this.c != 0) {
            agVar2.c = this.c;
        }
        if (this.d != 0) {
            agVar2.d = this.d;
        }
        if (this.e != 0) {
            agVar2.e = this.e;
        }
        if (this.f != 0) {
            agVar2.f = this.f;
        }
        if (!TextUtils.isEmpty(this.f4103a)) {
            agVar2.f4103a = this.f4103a;
        }
    }
}
