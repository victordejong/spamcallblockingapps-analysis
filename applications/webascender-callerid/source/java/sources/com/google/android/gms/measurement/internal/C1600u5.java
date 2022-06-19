package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.bd;
/* renamed from: com.google.android.gms.measurement.internal.u5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/u5.class */
public final class C1600u5 {

    /* renamed from: a */
    final Context f4518a;

    /* renamed from: b */
    String f4519b;

    /* renamed from: c */
    String f4520c;

    /* renamed from: d */
    String f4521d;

    /* renamed from: e */
    Boolean f4522e;

    /* renamed from: f */
    long f4523f;

    /* renamed from: g */
    bd f4524g;

    /* renamed from: h */
    boolean f4525h;

    /* renamed from: i */
    final Long f4526i;

    /* renamed from: j */
    String f4527j;

    public C1600u5(Context context, bd bdVar, Long l) {
        this.f4525h = true;
        C0931r.m3308k(context);
        Context applicationContext = context.getApplicationContext();
        C0931r.m3308k(applicationContext);
        this.f4518a = applicationContext;
        this.f4526i = l;
        if (bdVar != null) {
            this.f4524g = bdVar;
            this.f4519b = bdVar.k;
            this.f4520c = bdVar.j;
            this.f4521d = bdVar.i;
            this.f4525h = bdVar.h;
            this.f4523f = bdVar.g;
            this.f4527j = bdVar.m;
            Bundle bundle = bdVar.l;
            if (bundle == null) {
                return;
            }
            this.f4522e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
        }
    }
}
