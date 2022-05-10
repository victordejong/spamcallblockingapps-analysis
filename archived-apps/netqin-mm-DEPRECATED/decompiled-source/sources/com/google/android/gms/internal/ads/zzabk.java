package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabk.class */
public final class zzabk {
    /* renamed from: a */
    public static void m16894a(zzabi zzabiVar, zzabf zzabfVar) {
        if (zzabfVar.m16910a() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else if (!TextUtils.isEmpty(zzabfVar.m16909b())) {
            zzabiVar.m16902a(zzabfVar.m16910a(), zzabfVar.m16909b(), zzabfVar.m16908c(), zzabfVar.m16907d());
        } else {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
