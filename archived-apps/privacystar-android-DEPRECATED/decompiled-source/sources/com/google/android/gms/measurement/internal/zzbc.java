package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbc.class */
public final class zzbc {
    private boolean value;
    private final boolean zzanw = true;
    private boolean zzanx;
    private final /* synthetic */ zzba zzany;
    private final String zzoj;

    public zzbc(zzba zzbaVar, String str, boolean z) {
        this.zzany = zzbaVar;
        Preconditions.checkNotEmpty(str);
        this.zzoj = str;
    }

    @WorkerThread
    public final boolean get() {
        SharedPreferences zzjr;
        if (!this.zzanx) {
            this.zzanx = true;
            zzjr = this.zzany.zzjr();
            this.value = zzjr.getBoolean(this.zzoj, this.zzanw);
        }
        return this.value;
    }

    @WorkerThread
    public final void set(boolean z) {
        SharedPreferences zzjr;
        zzjr = this.zzany.zzjr();
        SharedPreferences.Editor edit = zzjr.edit();
        edit.putBoolean(this.zzoj, z);
        edit.apply();
        this.value = z;
    }
}
