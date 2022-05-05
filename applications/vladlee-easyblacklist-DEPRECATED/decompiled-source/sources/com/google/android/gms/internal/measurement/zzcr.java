package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcr.class */
public final class zzcr {

    /* renamed from: a */
    final String f16179a;

    /* renamed from: b */
    final Uri f16180b;

    /* renamed from: c */
    final String f16181c;

    /* renamed from: d */
    final String f16182d;

    /* renamed from: e */
    final boolean f16183e;

    /* renamed from: f */
    final boolean f16184f;

    /* renamed from: g */
    final boolean f16185g;

    /* renamed from: h */
    final boolean f16186h;
    @Nullable

    /* renamed from: i */
    final zzcv<Context, Boolean> f16187i;

    public zzcr(Uri uri) {
        this(uri, "", "");
    }

    private zzcr(Uri uri, String str, String str2) {
        this.f16179a = null;
        this.f16180b = uri;
        this.f16181c = str;
        this.f16182d = str2;
        this.f16183e = false;
        this.f16184f = false;
        this.f16185g = false;
        this.f16186h = false;
        this.f16187i = null;
    }

    public final zzcl<Double> zza(String str, double d) {
        return zzcl.m2325a(this, str);
    }

    public final zzcl<Long> zza(String str, long j) {
        return zzcl.m2324a(this, str, j);
    }

    public final zzcl<String> zza(String str, String str2) {
        return zzcl.m2323a(this, str, str2);
    }

    public final zzcl<Boolean> zza(String str, boolean z) {
        return zzcl.m2322a(this, str, z);
    }
}
