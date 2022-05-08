package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbd.class */
public final class zzbd {
    private long value;
    private boolean zzanx;
    private final /* synthetic */ zzba zzany;
    private final long zzanz;
    private final String zzoj;

    public zzbd(zzba zzbaVar, String str, long j) {
        this.zzany = zzbaVar;
        Preconditions.checkNotEmpty(str);
        this.zzoj = str;
        this.zzanz = j;
    }

    @WorkerThread
    public final long get() {
        SharedPreferences zzjr;
        if (!this.zzanx) {
            this.zzanx = true;
            zzjr = this.zzany.zzjr();
            this.value = zzjr.getLong(this.zzoj, this.zzanz);
        }
        return this.value;
    }

    @WorkerThread
    public final void set(long j) {
        SharedPreferences zzjr;
        zzjr = this.zzany.zzjr();
        SharedPreferences.Editor edit = zzjr.edit();
        edit.putLong(this.zzoj, j);
        edit.apply();
        this.value = j;
    }
}
