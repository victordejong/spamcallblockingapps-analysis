package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcn.class */
public final class zzcn {
    private final long zzabb;
    private final int zzabc;
    private double zzabd;
    private long zzabe;
    private final Object zzabf;
    private final Clock zzrz;
    private final String zzul;

    private zzcn(int i, long j, String str, Clock clock) {
        this.zzabf = new Object();
        this.zzabc = 60;
        this.zzabd = this.zzabc;
        this.zzabb = 2000L;
        this.zzul = str;
        this.zzrz = clock;
    }

    public zzcn(String str, Clock clock) {
        this(60, 2000L, str, clock);
    }

    public final boolean zzew() {
        synchronized (this.zzabf) {
            long currentTimeMillis = this.zzrz.currentTimeMillis();
            if (this.zzabd < this.zzabc) {
                double d = (currentTimeMillis - this.zzabe) / this.zzabb;
                if (d > 0.0d) {
                    this.zzabd = Math.min(this.zzabc, this.zzabd + d);
                }
            }
            this.zzabe = currentTimeMillis;
            if (this.zzabd >= 1.0d) {
                this.zzabd -= 1.0d;
                return true;
            }
            String str = this.zzul;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
            sb.append("Excessive ");
            sb.append(str);
            sb.append(" detected; call ignored.");
            zzco.zzab(sb.toString());
            return false;
        }
    }
}
