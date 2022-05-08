package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfj.class */
public final class zzfj {

    /* renamed from: a */
    private final String f9229a;

    /* renamed from: b */
    private boolean f9230b;

    /* renamed from: c */
    private String f9231c;

    /* renamed from: d */
    private final /* synthetic */ zzfd f9232d;

    public zzfj(zzfd zzfdVar, String str, String str2) {
        this.f9232d = zzfdVar;
        Preconditions.m14527g(str);
        this.f9229a = str;
    }

    @WorkerThread
    /* renamed from: a */
    public final String m11428a() {
        if (!this.f9230b) {
            this.f9230b = true;
            this.f9231c = this.f9232d.m11460C().getString(this.f9229a, null);
        }
        return this.f9231c;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m11427b(String str) {
        SharedPreferences.Editor edit = this.f9232d.m11460C().edit();
        edit.putString(this.f9229a, str);
        edit.apply();
        this.f9231c = str;
    }
}
