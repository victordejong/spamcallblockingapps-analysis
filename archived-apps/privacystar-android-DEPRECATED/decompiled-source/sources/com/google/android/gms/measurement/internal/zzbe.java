package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbe.class */
public final class zzbe {
    private final long zzabv;
    private final /* synthetic */ zzba zzany;
    @VisibleForTesting
    private final String zzaoa;
    private final String zzaob;
    private final String zzaoc;

    private zzbe(zzba zzbaVar, String str, long j) {
        this.zzany = zzbaVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(j > 0);
        this.zzaoa = String.valueOf(str).concat(":start");
        this.zzaob = String.valueOf(str).concat(":count");
        this.zzaoc = String.valueOf(str).concat(":value");
        this.zzabv = j;
    }

    @WorkerThread
    private final void zzfl() {
        SharedPreferences zzjr;
        this.zzany.zzaf();
        long currentTimeMillis = this.zzany.zzbx().currentTimeMillis();
        zzjr = this.zzany.zzjr();
        SharedPreferences.Editor edit = zzjr.edit();
        edit.remove(this.zzaob);
        edit.remove(this.zzaoc);
        edit.putLong(this.zzaoa, currentTimeMillis);
        edit.apply();
    }

    @WorkerThread
    private final long zzfn() {
        SharedPreferences zzjr;
        zzjr = this.zzany.zzjr();
        return zzjr.getLong(this.zzaoa, 0L);
    }

    @WorkerThread
    public final void zzc(String str, long j) {
        SharedPreferences zzjr;
        SharedPreferences zzjr2;
        SharedPreferences zzjr3;
        this.zzany.zzaf();
        if (zzfn() == 0) {
            zzfl();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        zzjr = this.zzany.zzjr();
        long j2 = zzjr.getLong(this.zzaob, 0L);
        if (j2 <= 0) {
            zzjr3 = this.zzany.zzjr();
            SharedPreferences.Editor edit = zzjr3.edit();
            edit.putString(this.zzaoc, str2);
            edit.putLong(this.zzaob, 1L);
            edit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.zzany.zzgm().zzmd().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        zzjr2 = this.zzany.zzjr();
        SharedPreferences.Editor edit2 = zzjr2.edit();
        if (z) {
            edit2.putString(this.zzaoc, str2);
        }
        edit2.putLong(this.zzaob, j3);
        edit2.apply();
    }

    @WorkerThread
    public final Pair<String, Long> zzfm() {
        long j;
        SharedPreferences zzjr;
        SharedPreferences zzjr2;
        this.zzany.zzaf();
        this.zzany.zzaf();
        long zzfn = zzfn();
        if (zzfn == 0) {
            zzfl();
            j = 0;
        } else {
            j = Math.abs(zzfn - this.zzany.zzbx().currentTimeMillis());
        }
        if (j < this.zzabv) {
            return null;
        }
        if (j > (this.zzabv << 1)) {
            zzfl();
            return null;
        }
        zzjr = this.zzany.zzjr();
        String string = zzjr.getString(this.zzaoc, null);
        zzjr2 = this.zzany.zzjr();
        long j2 = zzjr2.getLong(this.zzaob, 0L);
        zzfl();
        return (string == null || j2 <= 0) ? zzba.zzanc : new Pair<>(string, Long.valueOf(j2));
    }
}
