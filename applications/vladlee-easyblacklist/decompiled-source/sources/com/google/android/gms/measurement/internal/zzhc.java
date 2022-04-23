package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhc.class */
public final class zzhc {

    /* renamed from: a */
    final Context f17240a;

    /* renamed from: b */
    String f17241b;

    /* renamed from: c */
    String f17242c;

    /* renamed from: d */
    String f17243d;

    /* renamed from: e */
    Boolean f17244e;

    /* renamed from: f */
    long f17245f;

    /* renamed from: g */
    zzv f17246g;

    /* renamed from: h */
    boolean f17247h;

    public zzhc(Context context, zzv zzvVar) {
        this.f17247h = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.f17240a = applicationContext;
        if (zzvVar != null) {
            this.f17246g = zzvVar;
            this.f17241b = zzvVar.zzf;
            this.f17242c = zzvVar.zze;
            this.f17243d = zzvVar.zzd;
            this.f17247h = zzvVar.zzc;
            this.f17245f = zzvVar.zzb;
            if (zzvVar.zzg != null) {
                this.f17244e = Boolean.valueOf(zzvVar.zzg.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
